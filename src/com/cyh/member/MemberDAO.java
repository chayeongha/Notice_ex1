package com.cyh.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Set;

public class MemberDAO {

	
		//memberJoin
	
	
	public int  memberJoin(Connection con , MemberDTO memberDTO ) throws Exception{
		
		int result =0;
		
		//SQL���̿�
		
		String sql="insert into login values(?,?,?,?,?,?) "; 
		
		//�̸�����
		PreparedStatement st = con.prepareStatement(sql);
		
		//������
		st.setString(1, memberDTO.getId());
		st.setString(2, memberDTO.getPw());
		st.setString(3, memberDTO.getName());
		st.setString(4, memberDTO.getEmail());
		st.setString(5, memberDTO.getPhone());
		st.setInt(6, memberDTO.getGrade());
		
		
		//���� ����
		result =st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	
	public MemberDTO memberLogin(Connection con , MemberDTO memberDTO)throws Exception{
		
		
			//sql
			String sql= "select *from login where id=? and pw=?";
			// �̸�����
			PreparedStatement st = con.prepareStatement(sql);
			
			//����ǥ�� ����
			
			st.setString(1, memberDTO.getId());
			st.setString(2, memberDTO.getPw());
			
			
			ResultSet rs= st.executeQuery();
			
			if(rs.next()) {
				
				//id �� pw��  �Է¹������� db�� ���� ���⶧���� ���þ���.
				memberDTO.setName(rs.getString("name"));
				memberDTO.setEmail(rs.getString("email"));
				memberDTO.setPhone(rs.getString("phone"));
				memberDTO.setGrade(rs.getInt("grade"));
				
			}else {
				
				memberDTO=null;
			}
			
			rs.close();	
			
			st.close();
			
				
			return memberDTO;
			
	}
	
	//memberUpdate
	
	public int memberUpdate(Connection con , MemberDTO memberDTO) throws Exception{
		int result =0;
		
		String sql="update login set pw=? ,name=? ,email=?,phone=? , grade=? where id=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, memberDTO.getPw());
		st.setString(2, memberDTO.getName());
		st.setString(3, memberDTO.getEmail());
		st.setString(4, memberDTO.getPhone());
		st.setInt(5, memberDTO.getGrade());
		st.setString(6, memberDTO.getId());
		
		result=st.executeUpdate();
		
		st.close();
		
		return result;
		
		
	}
	
	//memberDelete
	
	public int memberDelete(Connection con ,MemberDTO memberDTO )throws Exception {
		
		int result=0;
		
		String sql="delete  login where id=?";
		
		//�̸� ����
		PreparedStatement st = con.prepareStatement(sql);
		
		//����ǥ�� ����
		st.setString(1, memberDTO.getId());
		
		//��������
		result = st.executeUpdate();
		
		
		st.close();
		
		
	
		return result;
		
		
		
	}
	
	
}
