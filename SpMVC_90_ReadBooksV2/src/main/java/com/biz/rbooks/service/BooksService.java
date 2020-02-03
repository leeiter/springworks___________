package com.biz.rbooks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.rbooks.domain.BooksDTO;
import com.biz.rbooks.repository.BooksDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BooksService {
	
	private final BooksDao bsDao;

	@Autowired
	public BooksService(BooksDao bsDao) {
		super();
		this.bsDao = bsDao;
	}
	
	public List<BooksDTO> selectAll() {
		return bsDao.selectAll();
	}
	
	public int insert(BooksDTO bsDTO) {
		
		// 9791162540480
		String b_code = bsDao.getMaxBCode();
		String b_prefixCode = "97911";
		
		int intBCode = 1;
		
		try {
			
			b_prefixCode = b_code.substring(0,5);
			String b_surfixCode = b_code.substring(5);
			
			intBCode = Integer.valueOf(b_surfixCode) + 1;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		b_code = String.format("%s%07d", b_prefixCode, intBCode);
		
		bsDTO.setB_code(b_code);

		
		int ret = bsDao.insert(bsDTO);
		
		
		
		return ret;
	}
	
	public int update(BooksDTO bsDTO) {
		
		
		
		return bsDao.update(bsDTO);
		
	}
	
	public int delete(String b_code) {
		
		return bsDao.delete(b_code);
		
	}

	public BooksDTO findByBCode(String b_code) {
		
		BooksDTO bsDTO = bsDao.findByBCode(b_code);
		return bsDTO;

	}
	
}
