<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all tweets and comments</title>
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
.style5 {color: #FFFFFF}
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
          <h2>Emotion Recognition on Twitter</h2>
          <div class="img"></div>
          <div class="article">
            <p align="justify"> 
            <table width="642" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1,s2,s3,s4,result="";
	int i=0,j=0,m=0,count=0;
	
	try 
	{
	
	
	String key=request.getParameter("key");
	String tname=request.getParameter("tname");
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String query="select * from comments where tweet_name like'"+tname+"%'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
	
		if(m==0){
		%>
		
				<tr>
				 <td  width="109" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Username </div></td>
				  <td  width="97" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Tweet Name</div></td>
				  <td   width="206" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Tweet Comment</div></td>
				  <td  width="126" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5">Date</div></td>
				</tr>
					<%}%>
			<tr>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s1);%></div></td>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s2);%></div></td>	
			  <td  width="206" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%
			  
			  java.util.regex.Pattern pattern=java.util.regex.Pattern.compile("#"+key+"[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher=pattern.matcher(s3);
			  
			  while(matcher.find()){
			  for(j=0;j<=matcher.groupCount();j++)
			  {
			 	
			  String str=matcher.group(j);
			  s3=s3.replace(matcher.group(j),"<b><i><u><big><font>"+str+"</font></big></u></i></b>");
			  count=count+1;
			  al.add(matcher.group(j));
			  }
			  }
			
			  
			  			  
			  out.println(s3);%></div></td>
			  <td  width="126" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s4);%></div></td>
			</tr>
					
					<%m=2;
					java.util.regex.Pattern pattern1=java.util.regex.Pattern.compile("#[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher1=pattern1.matcher(s3);
			  
			  while(matcher1.find())
			  {
			  for(j=0;j<=matcher1.groupCount();j++)
			  {
			 	
			  al1.add(matcher1.group(j));
			  }
			  }
			  
				}
				
				String sql4="update hashwords set tweet_hash='"+al1+"' where tname like '"+tname+"%'";
				 Statement st4=connection.createStatement();
				 st4.executeUpdate(sql4);
				
				
				if(!(al.isEmpty()))
				{
				 String sql1="select * from tweet_words where tkeys='"+key+"'";
				 Statement st1=connection.createStatement();
				 ResultSet rs1=st1.executeQuery(sql1);
				 if(rs1.next())
			 {
				  String sql2="update tweet_words set words='"+al+"',count='"+count+"' where tkeys='"+key+"'";
				 Statement st2=connection.createStatement();
				 st2.executeUpdate(sql2);
			 }
			 else
			 {
				 String sql3="insert into tweet_words(tkeys,words,count)values('"+key+"','"+al+"','"+count+"')";
				 Statement st3=connection.createStatement();
				 st3.executeUpdate(sql3);
			 }
			 
			  }
				 
			 
			 
			 
			 
			 
			 
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
			</p>


            <div align="right"><a href="tweetsrelationship.jsp">Back</a></div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="servermain.jsp">Home</a></strong></li>
            <li><strong><a href="serverlogin.jsp">Logout</a></strong></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
