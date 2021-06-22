package com.site.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.site.mapper.NoticeMapper;
import com.site.vo.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeMapper noticeMapper;

	@Override //전체리스트 호출
	public Map<String, Object> noticeList(int page) {
		Map<String,Object> map = new HashMap<String, Object>();
		
		int limit = 10;
		int startrow = (page-1)*limit+1;
		int endrow = startrow+limit-1;
		
		List<NoticeVo> list = noticeMapper.selectNoticeList(startrow,endrow);
		int listCount=0;
		listCount = noticeMapper.selectNoticeCount();
		
		int maxPage = (int)((double)listCount/limit+0.95);
		int startPage = (((int) ((double)page / 10 + 0.95)) - 1) * 10 + 1;
		int endPage = maxPage;
		if (endPage>startPage+10-1) {
			endPage=startPage+10-1;
		}
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", listCount);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("maxPage", maxPage);
		
		return map;
	}

	@Override
	public Map<String, Object> noticeListSearch(int page, String category, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override  //뷰페이지 
	public Map<String, Object> noticeView(int notice_no) {
		Map<String,Object> map = new HashMap<String, Object>();
		noticeMapper.updatehit(notice_no);
		NoticeVo noticeVo = noticeMapper.selectNoticeView(notice_no);
		map.put("noticeVo", noticeVo);

		return map;
	}
	
	@Override
	public void noticeWriteDo(NoticeVo noticeVo, MultipartFile file) {

		String fileUrl="C:/Users/Koreavc/git/shoppingmall/test0617/src/main/resources/static/noticeUpload/";	
		long time = System.currentTimeMillis();
		String uploadImage = time+"_"+file.getOriginalFilename();
		File f = new File(fileUrl+uploadImage);
		
		try {
			file.transferTo(f);
		}catch (Exception e) {
			e.printStackTrace();
		}
		noticeVo.setNotice_image(uploadImage);
		
		
		System.out.println("testIm 이메일 : "+noticeVo.getEmail());
		System.out.println("testIm 제목 : "+noticeVo.getNotice_title());
		System.out.println("testIm 내용 : "+noticeVo.getNotice_content());
		System.out.println("testIm 파일 : "+noticeVo.getNotice_image());
		noticeMapper.insertNoticeWriteDo(noticeVo);
	}
	
	






}
