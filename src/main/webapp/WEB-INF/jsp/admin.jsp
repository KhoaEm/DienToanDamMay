<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    
    <title>Task Manager | Home</title>
    
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
     <link href="static/css/style.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<div class="container">

  <img src="../../static/images/hoinghiquocte.jpg" width=980px>
  <div style="padding-left:980px;padding-bottom:20px;">
  <button type="button" class="btn btn-success btn-block"><a  href="/taskUser">Log out</a></button>
  
  </div>
  
	<div role="navigation">
		<div class="navbar navbar-inverse" style="background:#0000CD">
           
			<!--<a href="/" class="navbar-brand">HOME</a> 
			<li><a href="/task1">ABOUT</a></li>
			 -->
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav" style="color:#fff">
					<li><a href="/taskAdmin"><b>HOME</b></a></li>
				    <li><a href=""><b>ABOUT</b></a></li> 
					
					
					<li><a href=""><b>FOR AUTHOR</b></a></li>
					<li><a href=""><b>KEYNOTE SPEAKERS</b></a></li>
					<li><a href=""><b>PROGRAM</b></a></li>
					<li><a href=""><b>PUBLICATION</b></a></li>
					<li><a href=""><b>VENUE&HOTEL</b></a></li>
					<li><a href=""><b>GALLERY</b></a></li>
					<li><a href="/all-tasks"><b>ALL NEW</b></a></li>
					<li><a href="/new-task"><b>ADD NEW</b></a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
	<c:when test="${mode == 'MODE_TASKAdmin'}">
	
	
	<div class="row">
		<div class="col-md-9" style="border-right: 2px solid #B0C4DE">
		<div class="col-md-12" style="border: 1px solid #CD5C5C;background:#F5F5F5">
			<h3 style="text-align:center">${tasks[3].name}</h3>
			<div  style="text-align:justify"><p>${tasks[3].description}</p></div>
			<br/>
			<h4>ICSSE PUBLISHED PROCEEDINGS</h4>

ICSSE 2010: <a style="color:#4169E1">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=5540658</a><br/>
ICSSE 2012: <a style="color:#4169E1">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6246741</a><br/>
ICSSE 2014: <a style="color:#4169E1">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=6879759</a><br/>
ICSSE 2016: <a style="color:#4169E1">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=7548195</a><br/>
ICSSE 2017: <a style="color:#4169E1">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=8024255</a><br/>
			
		</div>		
			<div class="row"><h1></h1></div>
			<div class="row"><h1></h1></div>
		<h4>SPONSORED BY</h4>
		<br/><br/>
		
		<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-3">
				<img src="../../static/images/1.png" class="img-responsive" style="float:left">
				
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
				<img src="../../static/images/2.png" class="img-responsive" style="float:left">
				
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
				<img src="../../static/images/3.png" class="img-responsive" style="float: left">
				
				</div>
		
		</div>
	
		<div class="row">
		<div class="col-md-1"></div>
				<div class="col-md-3">
				
				<img src="../../static/images/5.jpg" class="img-responsive" style="float:left">
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
				<img src="../../static/images/6.jpg" class="img-responsive" style="float:left">
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
				<img src="../../static/images/4.png" class="img-responsive" style="float:left">
				</div>
		
		</div>
		
		</div>
		
		
		<div class="col-md-3">
			<div class="col-md-12" style="background:#9370D8">
				<h4 style="text-align:left">LATEST NEWS</h4>
			</div>
			<div class="list-group">
			<c:forEach var="task" items="${tasks}">
			<button type="button" class="list-group-item">
			<span style="font-size: 13px;color:#ff0000">Create Date ${task.dateCreated}</span>
			<br/>
			<span style="font-size: 13px;text-align:justify">${task.name}</span>
			</button>
			</c:forEach>
	  
	  
			</div>
			
			<div class="col-md-12" style="background:#9ACD32">
				<h4 style="text-align:left">SPECIAL SESSION</h4>
			</div>
		
			<div class="list-group" style="color:#00008B">
	
		<div class="row"><h1></h1></div>	
		<div class="row"><h1></h1></div>	
			<h5 style="text-align:center">SPECIAL SESSION SUBMISSION LINK </h5>
			
	<h5 style="text-align:center;background-color: 	#FFD700">
	SPECIAL SESSION 01<br/>
	INTELLIGENT HEALTHCARE<br/> SYSTEMS</h5>
<h5 style="text-align:center">CALL FOR PAPER</h5>
			<br/>
<h5 style="text-align:center;background-color:	#FFD700">SPECIAL SESSION 02<br/> FUZZY SYSTEMS & ITS<br/> APPLICATIONS</h5>
<h5 style="text-align:center">CALL FOR PAPER</h5>


			</div>

		</div>
	<div class="col-md-12" style="background:#0000CD;color:#FFD700;">
	<div class="row"><h2></h2></div>
	<p style="font-size: 17px">4th International Conference on Green Technology and Sustainable Development  <br/>
HCMC University of Technology and Education <br/>
Add: No 1 Vo Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho Chi Minh City <br/>
Tel: (+84.8) 37 221 223 - Ext: 8161 or 8443  <br/>
E-mail: gtsd2018@hcmute.edu.vn
	</p>
	</div>
	</div>
			
				
		</c:when>
		<c:when test="${mode == 'MODE_TASKS'}">
			<div class="container text-center" id="tasksDiv">
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date Created</th>
								<th>Finished</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="task" items="${tasks}">
								<tr>
									<td>${task.id}</td>
									<td>${task.name}</td>
									<td>${task.description}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
									<td>${task.finished}</td>
									<td><a href="update-task?id=${task.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-task?id=${task.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Task</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-task">
					<input type="hidden" name="id" value="${task.id}"/>
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name" value="${task.name}"/>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
						<!--<input type="text" class="form-control" name="description" value="${task.description}"/>  -->	
							<textarea name="description" id="editor1" rows="25" cols="100" >${task.description}</textarea>
						</div>				
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Finished</label>
						<div class="col-md-7">
							<input type="radio" class="col-sm-1" name="finished" value="true"/>
							<div class="col-sm-1">Yes</div>
							<input type="radio" class="col-sm-1" name="finished" value="false" checked/>
							<div class="col-sm-1">No</div>
						</div>				
					</div>		
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Save"/>
					</div>
				</form>
			</div>
		</c:when>		
	</c:choose>
	</div>
	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="static/ckeditor/ckeditor.js"> </script>
</body>
</html>