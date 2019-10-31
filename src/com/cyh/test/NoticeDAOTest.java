package com.cyh.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Random;

import org.junit.Test;

import com.cyh.notice.NoticeDAO;
import com.cyh.notice.NoticeDTO;
import com.cyh.util.DBConnector;

public class NoticeDAOTest {

	/* @Test */
	public void noticeListTest() throws Exception{
		
		NoticeDAO noticeDAO = new NoticeDAO();
		Connection con = DBConnector.getConnection();
		ArrayList<NoticeDTO> ar = noticeDAO.noticeList(con);
		assertNotEquals(1, ar.size());
		
		
	
	}

	/* @Test */
	public void noticeSelectTest()throws Exception {
		
		NoticeDAO noticeDAO = new NoticeDAO();
		
		Connection con = DBConnector.getConnection();
		
		NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, 132);
		
		assertNull(noticeDTO);
	
	
}
	
	/* @Test */
	public void noticeWrite()throws Exception{
		
		NoticeDAO noticeDAO = new NoticeDAO();
		
		Connection con  = DBConnector.getConnection();
		
				
			NoticeDTO noticeDTO = new NoticeDTO();
			
				noticeDTO.setWriter("gd");
				noticeDTO.setTitle("dfsf");
				noticeDTO.setHit(0);
				noticeDTO.setContents("dfdf");
				
				noticeDAO.noticeWrite(con, noticeDTO);
		
		
				con.close();
		}
				
				
	
	
	 
	 
}
