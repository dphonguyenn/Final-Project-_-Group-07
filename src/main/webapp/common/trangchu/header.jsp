<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">GROUP 7</a>
            </div>
            <div class="navbar-collapse collapse move-me">
                <ul class="nav navbar-nav navbar-right">
                    <li ><a href="#home">HOME</a></li>
                    <li><a href="#features-sec">EXERCISES</a></li>
                    <li><a href="#faculty-sec">MY TEAM</a></li>
                    <li><a href="<c:url value="/home?action=home" />">FINAL PROJECT</a></li>
                    <li><a href="#contact-sec">CONTACT</a></li>
                    </ul>
                </div> 
            </div>
        </div>
          <!--NAVBAR SECTION END-->
        <div class="home-sec" id="home">
            <div class="overlay">
                <div class="container">
                   <div class="row text-center " >
                
                       <div class="col-lg-12  col-md-12 col-sm-12">
                    
                        <div class="flexslider set-flexi" id="main-section">
                            <ul class="slides move-me">
                                <!-- Slider 01 -->
                                <li>
                                    <h3>HI ^^ WELCOME TO MY WEBSITE OF GROUP 7</h3>
                                   <h1>Let's explore</h1>
                                    <a  href="#features-sec" class="btn btn-info btn-lg" >
                                        EXERCISES LIST
                                    </a>
                                     <a  href="<c:url value="/home?action=home" />	" class="btn btn-success btn-lg" >
                                        FINAL PROJECT
                                    </a>
                                </li>
                                <!-- End Slider 01 -->

                                <!-- Slider 02 -->
                                <li>
                                    <h3>GROUP'S PHILOSOPHY</h3>
                                   <h1>PASSIONATE</h1>
                                     <a  href="#features-sec" class="btn btn-primary btn-lg" >
                                       EXERCISES LIST 
                                    </a>
                                     <a  href="#features-sec" class="btn btn-danger btn-lg" >
                                        FINAL PROJECT
                                    </a>
                                </li>
                                <!-- End Slider 02 -->

                                <!-- Slider 03 -->
                                <li>
                                    <h3>GROUP'S PHILOSOPHY</h3>
                                   <h1>CREATIVE</h1>
                                     <a  href="#features-sec" class="btn btn-default btn-lg" >
                                        EXERCISES LIST 
                                    </a>
                                     <a  href="#features-sec" class="btn btn-info btn-lg" >
                                        FINAL PROJECT
                                    </a>
                                </li>
                                <!-- End Slider 03 -->
                                <!-- Slider 04 -->
                                <li>
                                    <h3>GROUP'S PHILOSOPHY</h3>
                                   <h1>BREAKING</h1>
                                    <a  href="#features-sec" class="btn btn-success btn-lg" >
                                        EXERCISES LIST
                                    </a>
                                     <a  href="#features-sec" class="btn btn-primary btn-lg" >
                                        FINAL PROJECT
                                    </a>
                                </li>
                                <!-- End Slider 04 -->
                            </ul>
                        </div>
                    </div>   
                </div>
            </div>
        </div>
    </div>
</body>
</html>