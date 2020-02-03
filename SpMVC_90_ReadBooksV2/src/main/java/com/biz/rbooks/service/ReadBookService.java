package com.biz.rbooks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.rbooks.domain.BooksDTO;
import com.biz.rbooks.domain.ReadBookDTO;
import com.biz.rbooks.repository.ReadBookDao;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ReadBookService {
	
	private final ReadBookDao rbDao;
	
	@Autowired
	public ReadBookService(ReadBookDao rbDao) {
		super();
		this.rbDao = rbDao;
	}
	
	public List<ReadBookDTO> selectAll() {
		return rbDao.selectAll();
		
	}
	
	public int insert(ReadBookDTO rbDTO) {
		
		return rbDao.insert(rbDTO);
		
	}
	
	public ReadBookDTO findByRBSeq(long rb_seq) {
		ReadBookDTO rbDTO = rbDao.findByRBSeq(rb_seq);
		return rbDTO;
		
	}
	
	public int update(ReadBookDTO rbDTO) {
		return rbDao.update(rbDTO);
	}
	
	public int delete(long rb_seq) {
		return rbDao.delete(rb_seq);
		
	}

}
