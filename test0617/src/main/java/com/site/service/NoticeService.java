package com.site.service;

import java.util.Map;

import com.site.vo.NoticeVo;

public interface NoticeService {

	Map<String, Object> noticeList(int page);

	Map<String, Object> noticeListSearch(int page, String category, String search);

	NoticeVo noticeModify(int bno);

}
