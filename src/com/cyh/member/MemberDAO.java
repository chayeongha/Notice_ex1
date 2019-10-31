package com.cyh.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Set;

public class MemberDAO {

	
		//memberJoin
	
	
	public int  memberJoin(Connection con , MemberDTO memberDTO ) throws Exception{
		
		int result =0;
		
		//SQL문이요
		
		String sql="insert into login values(?,?,?,?,?,?) "; 
		
		//미리전송
		PreparedStatement st = con.prepareStatement(sql);
		
		//값셋팅
		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());
		st.setString(3, memberDTO.getName());
		st.setString(4, memberDTO.getEmail());
		st.setString(5, memberDTO.getPhone());
		st.setInt(6, memberDTO.getGrade());
		
		
		//최종 전송
		result =st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	
	
}
