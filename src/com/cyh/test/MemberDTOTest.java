package com.cyh.test;

import static org.junit.Assert.*;

import java.sql.Connection;


import org.junit.Test;

import com.cyh.member.MemberDAO;
import com.cyh.member.MemberDTO;
import com.cyh.util.DBConnector;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class MemberDTOTest {

	
	//memberJoin테스트
	/* @Test */
	public void memberJointest()throws Exception {
		
		
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();
		
		Connection con = DBConnector.getConnection();
		
		memberDTO.setId("iu");
		memberDTO.setPw("iu3");
		memberDTO.setName("iu3");
		memberDTO.setEmail("iu3@naver.com");
		memberDTO.setPhone("010-2222-2222");
		memberDTO.setGrade(2);
		
		int result = memberDAO.memberUpdate(con, memberDTO);
		
		
		assertEquals(1, result);
		
	}

	
	//memberLogin테스트
	
	/* @Test */
	public void memberLogin() throws Exception{
			MemberDAO memberDAO = new MemberDAO();
			
		     Connection con = DBConnector.getConnection();
			
			MemberDTO memberDTO = new MemberDTO();
			
			memberDTO.setId("iu");
			memberDTO.setPw("iu");

			memberDTO =memberDAO.memberLogin(con, memberDTO);
		
			assertNotNull(memberDTO);
			
	}
	
	/*@Test*/
	public void memberUpdateTest() throws Exception{
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		
		Connection con = DBConnector. getConnection();
		
		
		memberDTO.setId("iu");
		memberDTO.setPw("iu");
		memberDTO.setName("iudddd");
		memberDTO.setEmail("dcdf@naver.com");
		memberDTO.setPhone("010-4444-3434");
		
		int result= memberDAO.memberUpdate(con, memberDTO);
		
		con.close();
		
	    assertEquals( 1, result);
		
	}
	
	
	@Test
	public void memberDeleteTest() throws Exception{
		MemberDAO memberDAO =  new MemberDAO();
		
		
		Connection con = DBConnector.getConnection();
		
		MemberDTO memberDTO = new MemberDTO();
		
		memberDTO.setId("2131");
		
		
		
		int result = memberDAO.memberDelete(con, memberDTO);
		
		
		assertEquals(1, result);
		
		
		
	}
	
	
	
}
