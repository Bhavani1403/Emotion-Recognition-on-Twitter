<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Emotions</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 40px}
.style4 {
	color: #FFFFFF;
	font-weight: bold;
}
.style5 {font-weight: bold}
.style6 {color: #FF0000}
.style8 {font-size: 18px; color: #FF0000; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style2">Emotion Recognition on Twitter</span></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
	  <%String server=(String)application.getAttribute("server");%>
	  
        <ul>
          <li ><a href="servermain.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="#"><span><%=server%></span></a></li>
          <li><a href="serverlogin.jsp"><span>Logout</span></a></li>
      
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style6">  View All Sentiments Emotions </h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            
		    <h2 class="style8">All Anger Tweets Details         </h2>
		    <p class="style8">=================================</p>
		    <%@ include file="connect.jsp" %>
		    
				  
		<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", Ang="Anger" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	try
	{
			String sql3="select tweet_name,username from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0,count1=0;
			%>
	
				 
				  <%

				  String query="select * from comments where tweet_name='"+s1+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(4);
					s5=rs.getString(5);

					count++;

			   
			       String sql1="select * from filter where categorie='"+Ang+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{
								    
			                 count1++;
									 %>
									 
									 <table width="631" border="1">
				  <tr>
				    <td colspan="5" ><h2>Anger Tweets of : <%=s1%> [tweet owner: <a href="A_UserProfile.jsp?value=<%=s7%>&type=<%="Anger"%>"> <%=s7%>] </a> </h2></td>
			      </tr>
				  <tr>
					<td width="160" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Reviewed User </div>
					</div></td>
					<td width="134" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Review</div>
					</div></td>
					<td width="116" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">Date</div>
					</div></td>
					<td width="193" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">View the Details</div>
					</div></td>
				  </tr>
									 
							  <tr>
								<td width="160" height="0"  style="color:#000000;"><div align="center"><a href="userdetails11.jsp?value=<%=s2%>&type=<%="positive"%>"><%=s2%></a></div></td>
								<td width="134" height="0"  style="color:#000000;"><div align="center"><%=s3%></div></td>
								<td width="116" height="0"  style="color:#000000;"><div align="center"><%=s5%></div></td>
								<td width="193" height="0"  style="color:#000000;"><div align="center">
								<a href="details.jsp?tname=<%=s1%>&type=<%="Anger"%>"><strong>View&nbsp;</strong></a></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	<p>&nbsp;</p>
				<%
			
				
				}
   			
        
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
	
	
	<h2 class="style8">All Depression Tweets Details         </h2>
	<p class="style8">------------------------------------------------------------------------</p>
	<%
		   			  
	String s11="",s21="",s31="",s41="",s51="",s61="",s71="", dep="Depression" ;
	int i1=0,poscnt1=0,negcnt1=0,strcnt1=0;
	try
	{
			String sql3="select tweet_name,username from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s11=rs3.getString(1);
			   s71=rs3.getString(2);
			   int count1=0,count11=0;
			%>
	
				 
				  <%

				  String query="select * from comments where tweet_name='"+s11+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i1=rs.getInt(1);
					s21=rs.getString(2);
					s31=rs.getString(4);
					s51=rs.getString(5);

					count1++;

			   
			       String sql1="select * from filter where categorie='"+dep+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t11=rs1.getString(1);
			             String t21=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s31.contains(t21)))
									{
								    
			                 count1++;
									 %>
									 
									 <table width="631" border="1">
				  <tr>
				    <td colspan="5" ><h2>Depression Tweets of : <%=s11%> [tweet owner: <a href="A_UserProfile.jsp?value=<%=s71%>&type=<%="Depression"%>"> <%=s71%>] </a> </h2></td>
			      </tr>
				  <tr>
					<td width="160" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Reviewed User </div>
					</div></td>
					<td width="134" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Review</div>
					</div></td>
					<td width="116" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">Date</div>
					</div></td>
					<td width="193" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">View the Details</div>
					</div></td>
				  </tr>
							  <tr>
								<td width="160" height="0"  style="color:#000000;"><div align="center"><a href="userdetails11.jsp?value=<%=s21%>&type=<%="Depression"%>"><%=s21%></a></div></td>
								<td width="134" height="0"  style="color:#000000;"><div align="center"><%=s31%></div></td>
								<td width="116" height="0"  style="color:#000000;"><div align="center"><%=s51%></div></td>
								<td width="193" height="0"  style="color:#000000;"><div align="center">
								<a href="details.jsp?tname=<%=s11%>&type=<%="Depression"%>"><strong>View&nbsp;</strong></a></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	<p>&nbsp;</p>
				<%
			
				
				}
   			
       
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
	
	
	<h2 class="style8">All fatigue Tweets Details         </h2>
	<p class="style8">---------------------------------------------------------------</p>
	<%
		   			  
	String s111="",s211="",s311="",s411="",s511="",s611="",s711="", fat="Fatigue" ;
	int i11=0,poscnt11=0,negcnt11=0,strcnt11=0;
	try
	{
			String sql3="select tweet_name,username from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s111=rs3.getString(1);
			   s711=rs3.getString(2);
			   int count11=0,count111=0;
			%>
	
				 
				  <%

				  String query="select * from comments where tweet_name='"+s111+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i11=rs.getInt(1);
					s211=rs.getString(2);
					s311=rs.getString(4);
					s511=rs.getString(5);

					count11++;

			   
			       String sql1="select * from filter where categorie='"+fat+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t111=rs1.getString(1);
			             String t211=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s311.contains(t211)))
									{
								    
			                 count11++;
									 %>
									 
									 <table width="631" border="1">
				  <tr>
				    <td colspan="5" ><h2>Depression Tweets of : <%=s111%> [tweet owner: <a href="A_UserProfile.jsp?value=<%=s7%>&type=<%="Fatigue"%>"> <%=s711%>] </a> </h2></td>
			      </tr>
				  <tr>
					<td width="160" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Reviewed User </div>
					</div></td>
					<td width="134" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Review</div>
					</div></td>
					<td width="116" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">Date</div>
					</div></td>
					<td width="193" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">View the Details</div>
					</div></td>
				  </tr>
									 
							  <tr>
								<td width="160" height="0"  style="color:#000000;"><div align="center"><a href="userdetails11.jsp?value=<%=s211%>&type=<%="Fatigue"%>"><%=s211%></a></div></td>
								<td width="134" height="0"  style="color:#000000;"><div align="center"><%=s311%></div></td>
								<td width="116" height="0"  style="color:#000000;"><div align="center"><%=s511%></div></td>
								<td width="193" height="0"  style="color:#000000;"><div align="center">
								<a href="details.jsp?tname=<%=s111%>&type=<%="Fatigue"%>"><strong>View&nbsp;</strong></a></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	<p>&nbsp;</p>
				<%
			
				
				}
   			
       
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
	
	
	
	<h2 class="style8">All Tension Tweets Details<br />
	  ---------------------------------------
</h2>
	
		<%
		   			  
	String s1111="",s2111="",s3111="",s4111="",s5111="",s6111="",s7111="", ten="Tension" ;
	int i111=0,poscnt111=0,negcnt111=0,strcnt111=0;
	try
	{
			String sql3="select tweet_name,username from tweets";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1111=rs3.getString(1);
			   s7111=rs3.getString(2);
			   int count111=0,count1111=0;
			%>
	
				 
				  <%

				  String query="select * from comments where tweet_name='"+s1111+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i111=rs.getInt(1);
					s2111=rs.getString(2);
					s3111=rs.getString(4);
					s5111=rs.getString(5);

					count111++;

			   
			       String sql1="select * from filter where categorie='"+ten+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1111=rs1.getString(1);
			             String t2111=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s3111.contains(t2111)))
									{
								    
			                 count111++;
									 %>
									 
									 <table width="631" border="1">
				  <tr>
				    <td colspan="5" ><h2>Tension Tweets of : <%=s1111%> [tweet owner: <a href="A_UserProfile.jsp?value=<%=s7111%>&type=<%="Fatigue"%>"> <%=s7111%>] </a> </h2></td>
			      </tr>
				  <tr>
					<td width="160" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Reviewed User </div>
					</div></td>
					<td width="134" bgcolor="#FFFF00" ><div align="left" class="style4 style5 style6">
						<div align="center">Review</div>
					</div></td>
					<td width="116" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">Date</div>
					</div></td>
					<td width="193" bgcolor="#FFFF00"><div align="left" class="style4 style5 style6">
						<div align="center">View the Details</div>
					</div></td>
				  </tr>
							  <tr>
								<td width="160" height="0"  style="color:#000000;"><div align="center"><a href="userdetails11.jsp?value=<%=s2111%>&type=<%="Tension"%>"><%=s2111%></a></div></td>
								<td width="134" height="0"  style="color:#000000;"><div align="center"><%=s3111%></div></td>
								<td width="116" height="0"  style="color:#000000;"><div align="center"><%=s5111%></div></td>
								<td width="193" height="0"  style="color:#000000;"><div align="center">
								<a href="details.jsp?tname=<%=s1111%>&type=<%="Tension"%>"><strong>View&nbsp;</strong></a></div></td>
							  </tr>
							  
							
		    <%
			
					
			
			
			
			}

					 }
			}
			        %></table> 
	<p>&nbsp;</p>
				<%
			
				
				}
   			
       
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
	
	
	
			</p>


            <div align="right"><a href="servermain.jsp">Back</a></div>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style5">
            <li><a href="servermain.jsp">Home</a></li>
            <li><a href="serverlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
