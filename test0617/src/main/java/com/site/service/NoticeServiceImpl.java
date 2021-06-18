package com.site.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.site.mapper.NoticeMapper;
import com.site.vo.NoticeVo;

public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeMapper noticeMapper;

	@Override
	public Map<String, Object> noticeList(int page) {
		Map<String,Object> map = new HashMap<String, Object>();
		
		int limit = 10; 
		int startrow = (page-1)*limit+1; 
		int endrow = startrow+limit-1;   
		
		
		List<NoticeVo> list = noticeMapper.selectnoticeList(startrow,endrow);
		int listCount=0;  //총게시글 수
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
		
		return null;
	}

	@Override
	public NoticeVo noticeModify(int bno) {
		
		return null;
	}

}
