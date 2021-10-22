<%@ page import ="java.io.*"%>
<%@ page import ="java.io.File.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="art1.ment"%>
<%@page import="art1.stud"%>


<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" class="html2">

<head>



<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>DashBoard</title>

<link rel="stylesheet" type="text/css" href="/css/style.css?v=12" >

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css">

</head>
<body id="body2" class="alt-grid" onload="noBack();" >



 
<% String state5 = (String) session.getAttribute("state5"); %>
<%! String idea; %><% idea = (String) session.getAttribute("idea"); %>
<%! String feed1; %><% feed1 = (String) session.getAttribute("feed1"); %>
<script>

var divs = ["cont", "cont1", "cont2", "cont3","cont4", "cont5", "cont6"];
    var visibleDivId = null;
	
	
	
    function showCon(divId) {
      if(visibleDivId === divId) {
        visibleDivId = divId;
      } else {
        visibleDivId = divId;
      }
      hideNonVisibleDivs();
    }
    function hideNonVisibleDivs() {
      var i, divId, div;
      for(i = 0; i < divs.length; i++) {
        divId = divs[i];
        div = document.getElementById(divId);
        if(visibleDivId === divId) {
          div.style.display = "block";
        } else {
          div.style.display = "none";
        }
      }
    }
	</script>
	<script>
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, "mentordash.jsp" );
}
</script>
	    <% ArrayList<stud> sti ;%>
	    <% sti = new ArrayList<stud>() ;%>
	   <% ArrayList<ment> mtu = (ArrayList<ment>) session.getAttribute("mtu"); %>
	   
	   <%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>

   <%! String flag3 = "false"; %><% flag3 = (String) session.getAttribute("flag3"); %>
   <%! String flag4 = "false"; %><% flag4 = (String) session.getAttribute("flag4"); %>
   
  
<div class="container-fluid " style="width:100%;">
   <div class="row" style="width:100%";>
      <div class="col-md-12"  >
         <div id="content" class="content content-full-width" >
            <!-- begin profile -->
            <div class="profile" >
               <div class="profile-header">
                  <!-- BEGIN profile-header-cover -->
                  <div class="profile-header-cover"></div>
                  <!-- END profile-header-cover -->
                  <!-- BEGIN profile-header-content -->
                  <div class="profile-header-content">
                     <!-- BEGIN profile-header-img -->
                     <div class="profile-header-img">
                        <img src="/asset/avatar.png" alt="">
                     </div>
					 


                     <!-- END profile-header-img -->
                     <!-- BEGIN profile-header-info -->
                     <div class="profile-header-info">
                        <p style="font-size:26px;"><% for(ment m : mtu){out.println(m.getName());}%>
						<br>
						<p style="font-size:20px;color:#fff;">Mentor </p></p>
         <!--               <a href="#" class="btn btn-sm btn-info mb-2">Edit Profile</a>-->
                     </div>
                     <!-- END profile-header-info -->
                  </div>
                  <!-- END profile-header-content -->
                  <!-- BEGIN profile-header-tab -->
                  
                  <!-- END profile-header-tab -->
               </div>
            </div>
			
            <!-- end profile -->
            <!-- begin profile-content -->
           
         </div>
      </div>
   </div>
   
<% if(flag4=="true") {%> <script>  Swal.fire('Sorry. There are currently no students available.'); </script> <% session.getAttribute("flag4");} %>
<% if(flag3=="true") {%> <script>  Swal.fire('Sorry. We alloted few number of students than you have asked as there are not enough registered students.'); </script> <% session.getAttribute("flag3");} %>
   <div class="parent" style="overflow:auto;">
   <div class="sidenav">
					<a href="#" onclick="showCon('cont6');" style="text-decoration:none;" ><ion-icon name="person-outline" style="padding-right:5px;padding-bottom:0px;"></ion-icon>Profile</a>
					<a href="#" onclick="showCon('cont5');" style="text-decoration:none;" ><ion-icon name="person-outline" style="padding-right:5px;padding-bottom:0px;"></ion-icon>Your students</a>
					<a href="#" onclick="showCon('cont4');" style="text-decoration:none;" ><ion-icon name="person-outline" style="padding-right:5px;padding-bottom:0px;"></ion-icon> Feedback form</a>
					<a href="#" onclick="showCon('cont3');"style="text-decoration:none;" ><ion-icon name="people-outline" style="padding-right:5px;padding-top:5px;"></ion-icon> Query/idea  </a>
					<a href="#" onclick="showCon('cont2');"style="text-decoration:none;" ><ion-icon name="people-outline" style="padding-right:5px;padding-top:5px;"></ion-icon> Review articles </a>
					
					<a href="#" onclick="showCon('cont1');" style="text-decoration:none;" ><ion-icon name="book-outline" style="padding-right:5px;padding-top:5px;"></ion-icon>Publish Articles</a>
					<a href="#" onclick="showCon('cont');"  style="text-decoration:none;" ><ion-icon name="pencil-outline" style="padding-right:5px;padding-top:5px;"></ion-icon>Activity</a>
					<a href="index.jsp" style="text-decoration:none;" ><ion-icon name="home-outline" style="padding-right:5px;padding-top:5px;"></ion-icon>Home Page</a>
				</div>
	<div id="cont" class="cont" align="center" style="display:none" >
	<h2  align="center"> Meeting schedule </h2>
	<p id="al"> </p>
	
				</div>
	
	<div id="cont1" class="cont" align="center" style="display:none">
	<h2 align="center"> Articles Published </h2>
		<p align="center" > The article section has been provided for the students to share what they have learnt, which they believe that will be useful for everyone.<br>
		Kindly provide the name of your article and provide the article link (Google drive or Google doc link). After reviewing the article, we shall publish your article in our website. 
	</br> If you have any queries, kindly contact eqclub.ceg@gmail.com or submit your query in the query submission section. We will get back to you shortly</p>
	<p> <% for(ment m : mtu){if(m.articles.size()!=0){out.println(m.articles);}else { %> <h2 style="color:lightgray;font-size:35px;margin-top:160px;">You have not published any articles yet.</h2><% }}%></p>
	<div class="formDesign">
	<form align="center" style="margin-top:60px;" action="./PublishArticle" method="post" autocomplete="off";>
				<h5 align="center" style="color:#2A265F;">PUBLISH YOUR ARTICLE</h2>
				
				<label for="articleName">NAME OF YOUR ARTICLE <em>&#x2a;</em></label>
				<input align="center" id="articleName" name="articleName" required="" type="text" />
				<label for="article">ARTICLE LINK<em>&#x2a;</em></label>
				<input align="center" type="url" id="article" name="article">
				<!--<input id="article" name="article" required="" type="file" />-->
				<button class="btn1" id="submit" type="submit" style="margin-top:5%;">UPLOAD</button>
				</form>
				</div>
	</div>
	
	<div id="cont2" class="cont" align="center" style="display:none">
	<h2 align="center"> Review articles </h2>
	<p align="center" > The following articles are written by mentees and mentors. You are welcome to review the articles. Kindly select only one of the article. We shall send the link </br>
	to the article that you have selected. Kindly edit the articles (in track mode (MS word) or in suggesting mode (Google docs)). </br> After done reviweing, Kindly click the button "Finished". </br> 
	</p>
	<div class="formDesign">
	<form align="center" style="margin-top:40px;" action="SuggestAnIdea" method="post" autocomplete="off";>
				
				<textarea align="center" id="idea" name="idea" required="" rows="4" required></textarea>
				<button class="btn1" type="submit" id="submit" style="margin-top:5%;">SEND</button>
				</form>
				</div>
	</div>
	
	<div id="cont3" class="cont" align="center" style="display:none">
	<h2 align="center"> Query/idea submission </h2>
	<p align="center" > If you have any idea on how we can improve the club activity and also any query that you want us to ask or know, kindly let us know. </br>
	Do you find the current method of matching mentors and students? Do you find the workshops useful?</br> How about the quality of the blog? Do you want us to add any new features? </p>
	<div class="formDesign">
	<form align="center" style="margin-top:40px;" action="SuggestAnIdea" method="post" autocomplete="off";>
				
				<textarea align="center" id="idea" name="idea" required="" rows="4" required></textarea>
				<button class="btn1" type="submit" id="submit" style="margin-top:5%;">SEND</button>
				</form>
				</div>
	</div>
	
	<div id="cont4" class="cont" align="center" style="display:none">
	<h2 align="center"> Feedback form </h2>
	<p align="center"> We are great to have you as a mentor in our community. Thank you so much for your selfless work. We would like to hear feedback </br>
	from you about your work and our services. How well are you satisfied with this mentor matching program? Do you find some services unecessary  or not helpful? </br> Do you want us to improve or add new features?
	Did you find any difficulty while interacting with your mentees? Do you require any help </br> from college administration regarding your students' queries. Kindly provide a feedback once a month.</p>
	<div>
	<p><% for(ment m : mtu){if(m.student.size()!=0){ %>
	<form  class="signIn" action="./Feed" method="post" autocomplete="off">
	
		<div><textarea name="q1" id="q1" rows="2" cols="33" placeholder="How often do you schedule meeting with your mentee?" required></textarea></div>
		<div><textarea name="q2" id="q2" rows="2" cols="33" placeholder="How does the communication go with your mentee?" required></textarea></div>
		<div><textarea name="q3" id="q3" rows="2" cols="33" placeholder="Have you come across any difficult situations while handling your mentee?" required></textarea></div>
		<div><textarea name="q4" id="q4" rows="2" cols="33" placeholder="What are the areas that you have helped your student?" required></textarea></div>
		<div><textarea name="q5" id="q5" rows="2" cols="33" placeholder="Do you want us to provide any other service for students" required></textarea></div>
		<div><textarea name="q6" id="q6" rows="2" cols="33" placeholder="What do you think about the quality of workshops?"  required></textarea></div>
		<div><textarea name="q7" id="q7" rows="2" cols="33" placeholder="What do you think about the quality of web services?" required></textarea></div>
		<div><textarea name="q8" id="q8" rows="2" cols="33" placeholder="Hav you come across any query from your student in which you need help from college administration?" required></textarea></div>
		<div><textarea name="rate" id="rate" rows="2" cols="33" placeholder="Satisfaction meter (1-10)" required ></textarea></div>
		<div><textarea name="q9" id="q9" rows="2" cols="33" placeholder="Other comments, if any?" ></textarea></div>
		
		<div align="center";><button class="form-btn dx" type="submit">Submit</button></div>
	</form>
	<% } else { %> <h2 style="color:lightgray;font-size:35px;margin-top:160px;">You have not been assigned any mentor.</h2> <%}}%></p>
	</div>
	</div>
	
	<div id="cont5" class="cont" align="center" style="display:none">
	<h2 align="center"> Your students </h2>
	<p> <% for(ment m : mtu){if(m.student.size()!=0){ %>
		<% sti = (ArrayList<stud>) request.getAttribute("sti"); if(sti == null){sti = (ArrayList<stud>) session.getAttribute("sti"); } %>
	 <div class="table-responsive">
	<table align="center" class="table table-hover table-borderless " style="margin-top:55px;width:50%;">
	<thead>
		
		<th scope="column"> Name </th>
		<th scope="column"> Email Id </th>
		
		<th scope="column"> Degree and Branch</th>
		<th scope="column"> Year </th>
		<th scope="column"> College Campus </th>
		
		<th scope="column"> activityScore</th>
		<th scope="column"> selfEsteemScore</th>
		</thead>
		<tbody>
		
		<% for (stud s : sti){ %>
		<tr>
			<td><% out.println(s.getuserName()); %></td>
			<td><% out.println(s.getemailId()); %></td>
			<td><% out.println(s.getdegree()); %></td>
			<td><% out.println(s.getyear()); %></td>
			<td><% out.println(s.getcampus()); %></td>
			
			<td><% out.println(s.getactivityScore()); %></td>
			<td><% out.println(s.getselfEsteemScore()); %></td>
		</tr>
		<% } %>
		</tbody>
		</table>
		</div>
	<%}else { %> <h2 style="color:lightgray;font-size:35px;margin-top:100px;">You have not assigned any students yet.</h2>
	 <h4 style="color:#2a2965;font-size:25px;margin-top:40px;">How many students do you want to mentor ?</h4>
	 <div style="color:lightgray;font-size:23px;margin-top:20px;"><form action="/assign" method="post"><div><select  style="background-color:#2a2965;" align="center"; id="num" name="num" type="number"  required="" autocomplete='off' ><option align="center" value="" disabled selected hidden >Number of Students</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option></select></div>
  <div style="margin-top:20px;"> <button style="background-color:#2a2965;color:white;font-size:15px;" class="btn" id="value1" name="value1" type="submit">Ok!</button></div></form></div><% }}%></p>
 
		
	</div>
	<div id="cont6" class="cont" align="center" >
	<h2 align="center"> Personal Details </h2>
	<div class="table-responsive">
	<table align="center" class="table table-hover table-borderless " style="margin-top:55px;width:50%;">
    <tbody>

    <tr class='borderless'>
       <th >Name</th>
      <td><% for(ment m : mtu){out.println(m.getName());}%></td>
     </tr>
    <tr class='borderless'>
      <th style="width: 65%;">Email Id</th>
      <td ><% for(ment m : mtu){out.println(m.getemailId());}%></td>
     </tr>
    <tr class='borderless'>
       <th style="width: 65%;"> Place </th>
      <td><% for(ment m : mtu){out.println(m.getplace());}%></td>
     </tr>
	 <tr class='borderless'>
       <th > Contact </th>
      <td><% for(ment m : mtu){out.println(m.getcontact());}%></td>
     </tr>
	  <tr class='borderless'>
       <th > Qualification</th>
      <td><% for(ment m : mtu){out.println(m.getqualification());}%></td>
     </tr>
	 <tr class='borderless'>
       <th > Affiliation</th>
      <td><% for(ment m : mtu){out.println(m.getaffiliation());}%></td>
     </tr>
  </tbody>
</table>
<div align="center"><form action="change.jsp" method="post"><button style="background-color:#2a2965;color:white;" class="btn" id="value1" name="value1" type="submit">Change Password</button></form></div>
	</div>
	</div>
				</div>
				
</div>

<% if(idea=="true") {%> <script> Swal.fire('Thank you for suggesting an idea. We will try to implement this.'); </script> <% session.removeAttribute("idea");} %>
<% if(feed1=="true") {%> <script> Swal.fire('Thank you for your feedback. We shall get back to you shortly if required.'); </script> <% session.removeAttribute("feed1");} %>


</body>
</html>
