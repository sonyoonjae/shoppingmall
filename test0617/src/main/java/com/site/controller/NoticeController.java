package com.site.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.site.service.NoticeService;

import com.site.vo.NoticeVo;



@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	
	@RequestMapping("/notice") //리스트페이지 호출
	public String notice(@RequestParam (value="page",defaultValue = "1") int page, 
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
		return "/notice/notice";
	}
	
	@RequestMapping("/view") //뷰페이지 호출 view?notice_no=${notice_no}
	public String view(@RequestParam("notice_no") int notice_no,
			Model model) {
		//Mvc_board객체 1개 가져옴
		Map<String,Object> map = noticeService.noticeView(notice_no);
		model.addAttribute("map",map);
		return "/notice/noticeView";
	
	}
	
	@RequestMapping("/write") //쓰기페이지 호출
	public String write() {
		return "/notice/noticeWrite";
	}
	
	@RequestMapping("/writeDo") //쓰기저장 호출
	public String writeDo(NoticeVo noticeVo,@RequestPart MultipartFile file) {
		System.out.println("testC 이메일 : "+noticeVo.getEmail());
		System.out.println("testC 제목 : "+noticeVo.getNotice_title());
		noticeService.noticeWriteDo(noticeVo,file);
		return "redirect:/notice";
	}
	


}
