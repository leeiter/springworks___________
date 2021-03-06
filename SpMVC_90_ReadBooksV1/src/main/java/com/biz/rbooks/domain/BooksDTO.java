package com.biz.rbooks.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class BooksDTO {
	
	private String b_code; 		//	varchar2(20 byte)
	private String b_name; 		//	nvarchar2(125 char)
	private String b_comp; 		//	nvarchar2(125 char)
	private String b_auther;	//	nvarchar2(125 char)
	private String b_trans; 	//	nvarchar2(125 char)
	private int b_page; 		//	number
	private String b_year; 		//	varchar2(10 byte)
	private int b_iprice; 		//	number

}
