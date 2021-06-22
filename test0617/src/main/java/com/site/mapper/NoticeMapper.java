package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartFile;

import com.site.vo.NoticeVo;

@Mapper
public interface NoticeMapper {
	
	//전체리스트
	List<NoticeVo> selectNoticeList(int startrow, int endrow);
	int selectNoticeCount();
	void updatehit(int notice_no);
	NoticeVo selectNoticeView(int notice_no);
	void insertNoticeWriteDo(NoticeVo noticeVo);
	
	
	
	

}
