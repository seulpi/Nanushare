package com.share.nanu.service;

import java.sql.Date;
import java.util.List;

import com.share.nanu.VO.BoardVO;
import com.share.nanu.VO.BoardreplyVO;
import com.share.nanu.VO.IteminvenVO;
import com.share.nanu.VO.MemberVO;
import com.share.nanu.VO.PointVO;
import com.share.nanu.mypaging.Criteria;
import com.share.nanu.security.MemberDetails;

public interface MyPageService {

	// 1.마이페이지-나의문의
	public List<BoardVO> myList1(Criteria cri, String member_id);

	public int getTotalCount1(Criteria cri, String member_id);

	// 2.마이페이지-나의인증
	public List<BoardVO> myList2(Criteria cri, String member_id);

	public int getTotalCount2(Criteria cri, String member_id);

	// 3.마이페이지-나의나눔
	public List<IteminvenVO> myList3(Criteria cri, String member_id);

	public int getTotalCount3(Criteria cri, String member_id);

	// 4.마이페이지-나의댓글
	public List<BoardreplyVO> myList4(Criteria cri, String rid);

	public int getTotalCount4(Criteria cri, String rid);

	// 5.마이페이지-나의결제
	public List<BoardreplyVO> myList5(Criteria cri, String member_id);

	public int getTotalCount5(Criteria cri, String member_id);

	// 6.마이페이지-나의포인트
	public List<PointVO> myList6(Criteria cri, String username);

	public int getTotalCount6(Criteria cri, String member_id);

	// 회원수정
	public void memberModifyPOST(MemberVO mvo);

	// 회원탈퇴페이지
	public void memberDelete(MemberVO mvo, MemberDetails md);

	// 이벤트 포인트 불러오기
	public PointVO mypnt(PointVO pointVO);

	// 이벤트 - 1일1회 카운트
	public int mycount(PointVO pointVO, String member_id);

	// 룰렛 포인트 쌓기
	public void getMypoint(PointVO pointVO, String member_id);

	// 달력 - 이벤트 - 1일1회 카운트 //시험중
	public int mycount2(PointVO pointVO, String member_id);

	// 달력 //시험중
	public void getMypoint2(PointVO pointVO, String member_id);

}
