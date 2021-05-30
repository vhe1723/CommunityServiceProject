package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.groupVO;
import org.zerock.service.groupService;
import org.zerock.service.mypageService;

import com.kubg.utils.UploadFileUtils;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class GroupController {

	private groupService service;
	private mypageService service2;

	HttpSession session;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// http://localhost:8080/group/list
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list-----------");
		model.addAttribute("list", service.getList());

	}

	@GetMapping("/mypage")
	public void mypage(Model model) {

		String id;
		if (session.getAttribute("id") != null)
			id = (String) session.getAttribute("id");
		else
			id = "";

		log.info("mylist---------");
		model.addAttribute("list", service2.getMyList(id));

		model.addAttribute("list2", service2.getJoinList(id));

	}

	@GetMapping("/register")
	public void register() {

	}

	@PostMapping("/register")
	public String register(groupVO group, MultipartFile file, RedirectAttributes rttr, HttpServletResponse response)
			throws Exception {

		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
			group.setG_img_src(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
			group.setG_thumb_src(
					File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		} else {
			//fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			fileName = "";
			group.setG_img_src(fileName);
			group.setG_thumb_src(fileName);
		}

		

		log.info("register: " + group);
		service.register(group);
		rttr.addFlashAttribute("result", group.getG_no());

		// **************************
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();

		out.println("<script>alert('개설되었습니다.'); location.href='http://localhost:8080/list';</script>");

		out.flush();
		out.close();

		// **************************
		return "redirect:/list";
	}

	@GetMapping("/info")
	public void get(@RequestParam("g_no") Long g_no, Model model) {
		log.info("/info");
		model.addAttribute("group", service.get(g_no));
	}

	@PostMapping("/mypage")
	public String modify2(groupVO group, RedirectAttributes rttr, HttpServletResponse response)
			throws ServletException, IOException {

		log.info("modify2: " + group);
		if (service.modify2(group)) {
			rttr.addFlashAttribute("result", "success");
		}

		// **************************
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();

		out.println("<script>alert('참가되었습니다.'); location.href='http://localhost:8080/mypage';</script>");

		out.flush();
		out.close();

		// **************************
		return "redirect:/mypage";

	}

	@PostMapping("/modify")
	public String modify(groupVO group, RedirectAttributes rttr) {
		log.info("modify: " + group);
		if (service.modify(group)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/list";
	}

	@PostMapping("/remove")
	public String remove(Long g_no, RedirectAttributes rttr) {
		log.info("remove: " + g_no);
		if (service.remove(g_no)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/list";
	}

	@GetMapping("/main")
	public void main() {

	}

	@GetMapping("/introPrj")
	public void introPrj() {

	}

	@GetMapping("/introMem")
	public void introMem() {

	}

	@GetMapping("/board")
	public void board() {

	}

}