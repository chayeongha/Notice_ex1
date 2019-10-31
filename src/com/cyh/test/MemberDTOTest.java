package com.cyh.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.Set;

import org.junit.Test;

import com.cyh.member.MemberDAO;
import com.cyh.member.MemberDTO;
import com.cyh.util.DBConnector;

public class MemberDTOTest {

	
	//memberJoinÅ×½ºÆ®
	@Test
	public void memberJointest()throws Exception {
		
		MemberDAO memberDAO = new MemberDAO();
		
		Connection con = DBConnector.getConnection();
		
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setId("iu3");
		memberDTO.setPw("iu3");
		memberDTO.setName("iu3");
		memberDTO.setEmail("iu3@naver.com");
		memberDTO.setPhone("010-2222-2222");
		memberDTO.setGrade(2);
		
		int result = memberDAO.memberJoin(con, memberDTO);
		
		
		assertEquals(1, result);
		
	}

}
