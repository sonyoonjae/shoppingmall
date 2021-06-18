package com.site.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.service.NoticeService;
import com.site.vo.NoticeVo;



@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	

	@RequestMapping("/notice") //리스트페이지 호출
	public String notice(@RequestParam(value="page",defaultValue = "1") int page, 
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search, 
			Model model) {
		Map<String,Object> map = null;
		if(category==null || search==null || category=="" || search=="") {
			map = noticeService.noticeList(page); //전체리스트 가져오기
		}else {
			map = noticeService.noticeListSearch(page,category,search); //검색리스트 가져오기
		}
		model.addAttribute("map",map);
		return "/notice";
	}	
		@RequestMapping("/noticeView")
	public String noticeView() {
		return "/noticeView";
	}
	@RequestMapping("/modify") //수정페이지 호출
	public String modify(@RequestParam("bno") int bno,Model model) {
		NoticeVo noticeVo = noticeService.noticeModify(bno);
		model.addAttribute(noticeVo);
		return "/modify";
	}

}
