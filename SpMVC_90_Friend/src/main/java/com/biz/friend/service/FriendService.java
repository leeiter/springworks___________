package com.biz.friend.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.biz.friend.domain.FriendVO;
import com.biz.friend.persistence.FriendDao;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class FriendService {
	
	private final FriendDao fDao;

	public List<FriendVO> selectAll() {
		return fDao.selectAll();
	}

	public int save(FriendVO friendVO) {
		long f_seq = friendVO.getF_seq();
		if(f_seq > 0) {
			fDao.update(friendVO);
		} else {
			fDao.insert(friendVO);
		}
		return 0;
	}

	public FriendVO findBySeq(long f_seq) {
		return fDao.findBySeq(f_seq);
	}

	public int delete(long f_seq) {
		return fDao.delete(f_seq);
	}

}
