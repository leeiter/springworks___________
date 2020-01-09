package com.biz.rbooks.repository;

import org.apache.ibatis.jdbc.SQL;

public class BooksSQL {
	
	public String insert_sql() {
		
		return new SQL() {{
			
			INSERT_INTO("tbl_books");
			
			INTO_COLUMNS("B_CODE");
			INTO_COLUMNS("B_NAME");
			INTO_COLUMNS("B_COMP");
			INTO_COLUMNS("B_AUTHER");
			INTO_COLUMNS("B_TRANS");
			INTO_COLUMNS("B_PAGE");
			INTO_COLUMNS("B_YEAR");
			INTO_COLUMNS("B_IPRICE");
			
			INTO_VALUES("#{b_code, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_name, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_comp, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_auther, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_trans, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_page, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_year, jdbcType=VARCHAR}");
			INTO_VALUES("#{b_iprice, jdbcType=VARCHAR}");
			
		}}.toString();
		
	
	}
	

}
