package com.site.mapper;

import java.util.List;

import com.site.vo.NoticeVo;

public interface NoticeMapper {

	List<NoticeVo> selectnoticeList(int startrow, int endrow);
	int selectNoticeCount();
}
