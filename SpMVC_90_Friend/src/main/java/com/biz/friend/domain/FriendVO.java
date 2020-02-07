package com.biz.friend.domain;

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
public class FriendVO {
	
	private long f_seq; 	// BIGINT PRIMARY KEY AUTO_INCREMENT,
	private String f_name; 	// VARCHAR(20) NOT NULL,
	private String f_tel; 	// VARCHAR(20) NOT NULL,
	private String f_addr; 	// VARCHAR(125),
	private String f_hobby; // VARCHAR(125),
	private String f_rel; 	// VARCHAR(125)

}
