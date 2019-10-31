package com.cyh.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.cyh.util.DBConnector;


public class NoticeDAO {

	//noticeList
	
	public ArrayList<NoticeDTO> noticeList(Connection con) throws Exception{
	
		ArrayList<NoticeDTO> ar = new ArrayList<NoticeDTO>();
		
		String sql="select* from notice order by num asc";
		
		//미리 전송
		PreparedStatement st= con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			NoticeDTO noticeDTO = new NoticeDTO();
			
			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setWriter(rs.getString("writer"));
			/* noticeDTO.setContents(rs.getString("contents")); */
			noticeDTO.setReg_date(rs.getDate("reg_date"));
			noticeDTO.setHit(rs.getInt("hit"));
			
			ar.add(noticeDTO);
			
		}
		
		rs.close();
		st.close();
		
		

		return ar;
	}
	
	//noticeSelect
	public  NoticeDTO  noticeSelect(Connection con ,  int num) throws Exception{
		
		//초기화
		NoticeDTO noticeDTO = null;
		
		//sql
		String sql ="select * from notice where num=?";
		
		//미리전송
		
		PreparedStatement st = con.prepareStatement(sql);
		
		//물음표값 셋팅
		
		st.setInt(1, num);
		
		//select문 -resultset
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			
			noticeDTO = new NoticeDTO();
			
			noticeDTO.setNum(rs.getInt("num"));
			noticeDTO.setTitle(rs.getString("title"));
			noticeDTO.setWriter(rs.getString("writer"));
			noticeDTO.setContents(rs.getString("contents"));
			noticeDTO.setReg_date(rs.getDate("reg_date"));
			noticeDTO.setHit(rs.getInt("hit"));
			
		
		}
		
		rs.close();
		st.close();
		
		return noticeDTO;
	}
	
	//noticeWrite 문
	
	public int noticeWrite(Connection con, NoticeDTO noticeDTO)throws Exception {
		int result = 0;
		
		//sql문
		
		String sql="insert into notice values(board_seq.nextval,?,?,?,sysdate,0 ) ";
				
		//미리전송
		PreparedStatement st = con.prepareStatement(sql);
		
		//?값 세팅
		
		st.setString(1,noticeDTO.getTitle());
		st.setString(2, noticeDTO.getWriter());
		st.setString(3, noticeDTO.getContents());
		
		
		//최종전송
		result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	
	
	//noticeUpdate
	
	public int noticeUpdate(Connection con , NoticeDTO noticeDTO)throws Exception {
		
		int result=0;
		
		
		String sql = "update notice set writer=?, title=? where num=?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, noticeDTO.getWriter());
		st.setString(2, noticeDTO.getTitle() );
		st.setInt(3, noticeDTO.getNum());
		
		
		result=st.executeUpdate();
		
		
		st.close();
		
	
		
		return result;
		
		
		
	}
	
}
