package com.share.nanu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.share.nanu.VO.IteminvenVO2;
import com.share.nanu.VO.MemberVO;
import com.share.nanu.VO.VmVO;
import com.share.nanu.VO.VmVmamVO;
import com.share.nanu.mapper.AdminMapper;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@AllArgsConstructor
@Service
public class AdminPageServiceImpl implements AdminPageService {

	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public List<MemberVO> getMember() {
		return adminMapper.member();
	}

	@Override
	public List<MemberVO> getMemberView(String member_id) {
		// TODO Auto-generated method stub
		return adminMapper.member_view(member_id);
	}

	@Override
	public List<IteminvenVO2> getHeadItem() {
		
		return adminMapper.getHeadItem();
	}

	@Override
	public List<VmVO> getvm() {
		// TODO Auto-generated method stub
		return adminMapper.getVmBranch();
	}

	@Override
	public List<VmVmamVO> getBranchItem() {
		// TODO Auto-generated method stub
		return adminMapper.getVmVmam();
	}

}
