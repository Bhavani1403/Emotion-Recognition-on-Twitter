<title>insert tweets</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
				try{
				
						String user=(String)application.getAttribute("user");
						String t_name=request.getParameter("name");
						String cmt=request.getParameter("cmt");
						 
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt=strDate+" "+strTime;
						
         
    	
					 
				 PreparedStatement ps=connection.prepareStatement("insert into comments(username,tweet_name,comment,dt) values(?,?,?,?)");
						ps.setString(1,user);
						ps.setString(2,t_name);
						ps.setString(3,cmt);
						ps.setString(4,dt);
											
						int x=ps.executeUpdate();
						if(x>0)
						{
						
						String msg="Your comment on tweet posted successfully";
						application.setAttribute("msg",msg);
						response.sendRedirect("friendtweets.jsp");
					
						}
							

					   
			   connection.close();
			   }
		
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>

        