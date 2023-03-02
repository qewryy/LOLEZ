package com.lolez.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lolez.dto.BoardDto;
import com.lolez.dto.ReplyDto;
import com.lolez.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private HttpSession session;

	@Autowired
	private BoardService bsvc;

	@RequestMapping(value = "/boardList")
	public ModelAndView boardList() {
		System.out.println("게시판 목록창 요청");
		ModelAndView mav = new ModelAndView();
		// 1. 글목록 조회
		ArrayList<BoardDto> boardList = bsvc.boardList();
		mav.addObject("boardList", boardList);

		// 2. 글목록페이지 지정
		mav.setViewName("board/BoardList");
		return mav;
	}

	@RequestMapping(value = "/boardWriteForm")
	public ModelAndView BoardWrite() {
		System.out.println("글 작성 페이지 요청");
		ModelAndView mav = new ModelAndView();

		if (session.getAttribute("loginNickname") == null) {
			mav.setViewName("redirect:/LoginForm");
			return mav;
		} else {
			mav.setViewName("board/BoardWriteForm");
		}

		return mav;
	}

	@RequestMapping(value = "/boardWrite")
	public ModelAndView boardWrite(BoardDto board) throws Exception {
		System.out.println("새 글 등록 요청");
		ModelAndView mav = new ModelAndView();

		// 1. session에서 로그인 아이디 확인
		if (session.getAttribute("loginNickname") == null) {
			mav.setViewName("redirect:/LoginForm");
			return mav;
		}

		String loginNickname = (String) session.getAttribute("loginNickname");

		// 2.board.bwriter(작성자)에 저장
		board.setBwriter(loginNickname);
		System.out.println(board);

		// 3. 글등록 서비스 호출
		int writeResult = bsvc.boardWrite(board);
		if (writeResult > 0) { // 글 등록에 성공 했을 경우
			
			// 글목록 페이지 이동요청
			mav.setViewName("redirect:/boardList");

		} else { // 글 등록에 실패 했을 경우

			// 글작성 페이지 이동요청
			mav.setViewName("redirect:/boardWriteForm");
		}

		return mav;
	}

	@RequestMapping(value = "/boardView")
	public ModelAndView boardView(int viewBno) {
		System.out.println("상세보기 페이지 이동 요청");
		ModelAndView mav = new ModelAndView();
		System.out.println("상세보기 글번호 : " + viewBno);

		// 1. 글 상세 정보 조회 
		BoardDto board = bsvc.boardView(viewBno);
		System.out.println(board);
		mav.addObject("board", board);

		// 2. 추천수 조회 
		int blikeCount = bsvc.boardLikeCount(viewBno);
		mav.addObject("blikeCount", blikeCount);

		String loginNickname = (String) session.getAttribute("loginNickname");

		// 3. 댓글 목록 조회

		ArrayList<ReplyDto> replyList = bsvc.boardReplyList(viewBno, loginNickname);
		mav.addObject("replyList", replyList);

		// . 글 상세보기 페이지 이동
		mav.setViewName("board/BoardView");
		return mav;
	}

	@RequestMapping(value = "/boardLike")
	public @ResponseBody String boardLike(int lbno, String lname) {
		System.out.println("게시글 추천 처리 요청");
		System.out.println("추천할 글번호 : " + lbno);
		System.out.println("추천자 아이디 : " + lname);

		String result = bsvc.boardLike(lbno, lname);

		return result;
	}

	@RequestMapping(value = "/testPage_OF_record")
	public ModelAndView testPage_OF_recode() {
		System.out.println("testPage on");
		ModelAndView mav = new ModelAndView();

		// 2. 글목록페이지 지정
		mav.setViewName("record/RecordPage");
		return mav;
	}
	
	@RequestMapping(value = "/replyList")
	public @ResponseBody String replyList(int rbno) {
		System.out.println("댓글 목록 조회 요청");
		System.out.println("댓글을 조회할 글번호 : " + rbno);
		
		String loginNickname = (String)session.getAttribute("loginNickname");
		String replyList = bsvc.replyList(rbno,loginNickname);
		return replyList;
	}	
	
	@RequestMapping(value = "/replyLike")
	public @ResponseBody String replyLike(int rlno, String rlname, int rlbno) {
		System.out.println("댓글 추천 등록 요청");
		System.out.println("추천할 댓글번호 : " + rlno);
		String likeResult = bsvc.replyLike(rlno, rlname, rlbno);
		
		return likeResult;
	}
	
	@RequestMapping(value = "/boardModify")
	public ModelAndView boardModify(BoardDto modBoard, RedirectAttributes ra) {
		System.out.println("글수정 요청");
		ModelAndView mav = new ModelAndView();
		System.out.println(modBoard);
		//1. 글 수정 기능 호출
		int modifyResult = bsvc.boardModify(modBoard);
		if(modifyResult > 0) {
			ra.addFlashAttribute("boardMsg", "글이 수정 되었습니다.");
		} else {
			ra.addFlashAttribute("boardMsg", "글이 수정에 실패하였습니다.");
		}
		
		mav.setViewName("redirect:/boardView?viewBno="+modBoard.getBno());
		return mav;
	}	
	
	@RequestMapping(value = "/replyWrite")
	public @ResponseBody String replyWrite(ReplyDto rcontent) {
		System.out.println("댓글 등록 요청");
		System.out.println(rcontent);
		int insertResult = bsvc.replyWrite(rcontent);
		return insertResult+"";
	}
	
	@RequestMapping(value = "/replyDelete_ajax")
	public @ResponseBody String replyDelete_ajax(int rno, int rbno) {
		System.out.println("댓글 삭제 요청");
		System.out.println("삭제할 댓글 번호 : " + rno);
		System.out.println("삭제할 댓글의 글 번호 : " + rbno);
		int deleteResult = bsvc.replyDelete(rno, rbno);
		return deleteResult + "";
	}	
	
	
	
	@RequestMapping(value = "/boardLikeCount_ajax")
	public @ResponseBody String boardLikeCount_ajax(int lbno, String lname) {
		System.out.println("게시글 추천수 조회 요청");
		
		String likeInfo = bsvc.boardLikeInfo(lbno, lname);
		
		return likeInfo;
	}	

}
