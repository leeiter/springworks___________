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
		
		return 0;
	}
	

	
	

}
