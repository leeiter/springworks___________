package com.biz.rbooks.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.rbooks.domain.MemberDTO;
import com.biz.rbooks.repository.MemberDao;

@Service
public class MemberService {
	
	private final MemberDao mDao;
	
	@Autowired
	public MemberService(MemberDao mDao) {
		super();
		this.mDao = mDao;
	}

	public int insert(MemberDTO mDTO) { 
		
		return mDao.insert(mDTO);
		
	}

	public MemberDTO loginCheck(MemberDTO mDTO) {
		
		String m_id = mDTO.getM_id();
		String m_password = mDTO.getM_password();
				
		MemberDTO loginMemberDTO = mDao.findById(m_id);
		if(loginMemberDTO != null) {
			return loginMemberDTO;
		}
		
		// TODO Auto-generated method stub
		return null;
	}

}
