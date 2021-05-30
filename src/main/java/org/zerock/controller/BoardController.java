package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.domain.commentVO;
import org.zerock.service.BoardService;
import org.zerock.service.commentService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	private BoardService service;
	
//	@GetMapping("/list")
//	public void list(Model model) {
//		log.info("list-----------");
//		model.addAttribute("list",service.getList());		
//	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list -------- :" + cri);
		model.addAttribute("list",service.getList(cri));
//		model.addAttribute("pageMaker",new PageDTO(cri,123));
		int total = service.getTotal(cri);
		log.info("total :" + total);
		model.addAttribute("pageMaker", new PageDTO(cri,total));
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register: " + board);
		service.register(board);
		rttr.addFlashAttribute("result",board.getB_no());		
		return "redirect:/board/get?b_no="+board.getB_no();
	}
	@GetMapping("/register")
	public void register() {
		
	}
	
	
	private commentService serviceC;

	@PostMapping("/get")
	public String registerC(BoardVO board, @RequestParam("b_no") Long b_no, commentVO comment, RedirectAttributes rttr) {
		serviceC.register(comment);
		rttr.addFlashAttribute("result", board.getB_no());
		
		return "redirect:/board/get?b_no="+board.getB_no();
	}
	
	@GetMapping("/get")
	public void get1(@RequestParam("b_no") Long b_no, Criteria cri, Model model) {
		log.info("list2-----------");
		model.addAttribute("board",service.get(b_no));
		model.addAttribute("cri",cri);
		model.addAttribute("list", serviceC.getList(b_no));
		
	}
	
	
	
	
	
	
	@GetMapping("/modify")
	public void get(@RequestParam("b_no") Long b_no, Criteria cri, Model model) {
		log.info("/get or /modify" + cri);
		model.addAttribute("board",service.get(b_no));
		model.addAttribute("cri",cri);
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board,@ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify :"+board);
		if(service.modify(board)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
		rttr.addAttribute("type",cri.getType());
		rttr.addAttribute("keyword",cri.getKeyword());
		return "redirect:/board/get?b_no="+board.getB_no();
	}
	
	@PostMapping("/remove")
	public String remove(Long b_no,@ModelAttribute("cri") Criteria cri,RedirectAttributes rttr) {
		log.info("remove : " + b_no);
		if(service.remove(b_no)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
		rttr.addAttribute("type",cri.getType());
		rttr.addAttribute("keyword",cri.getKeyword());
		
		return "redirect:/board/list";
	}
	
	
	
	
	
	
	
	
	
	

}
