<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>server main page</title>
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
.style4 {font-weight: bold}
.style5 {color: #FF0000}
.style6 {
	font-weight: bold;
	font-style: italic;
	font-family: Georgia, "Times New Roman", Times, serif;
}
.style7 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Emotion Recognition on Twitter</a></h1>
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
      <div class="mainbar style6">
        <div class="article">
          <h2 class="style5">Welcome to Tweet Server Main </h2>
          <p class="infopost">&nbsp;</p>
          <div class="img"><img src="images/img1.jpg" width="634" height="208" alt="" class="fl" /></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="style5 star style7"><em>Server Menu</em></h2>
          <div class="clr"></div>
          <ul class="sb_menu style4">
            <li><a href="servermain.jsp">Home</a></li>
            <li><a href="allusers.jsp">View All Users</a></li>
            <li><a href="allfriends.jsp">View All Friends</a></li>
			<li><a href="E_Cat.jsp">Add Emotion Category</a></li>	
			<li><a href="E_Filter.jsp">Add Emotion Filter</a></li>	
			<li><a href="View_All_Filters.jsp">View All Emotion Filters</a></li>		
            <li><a href="alltweets.jsp">View All Tweets</a></li>
            <li><a href="alltweets&amp;comments.jsp">View All Tweet Reviews</a></li>
            <li><a href="tweetsrelationship.jsp">View Tweets Emotion and Relationship</a></li>
            <li><a href="tweet_words.jsp">Tweets Hash words</a></li>
            <li><a href="View_All_Emotions.jsp">View all Emotion Sentiments</a></li>
            <li><a href="graph.jsp">View HashTag Result</a></li>
            <li><a href="serverlogin.jsp">Logout</a></li>
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
