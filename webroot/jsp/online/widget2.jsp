<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<jsp:include page="../layout/header_widget.jsp" />
<!-- Start of first page -->
<div data-role="page" id="foo">

	<div data-role="header">
		<h1>Select a Room</h1>
		<a href="goOnlineBookingCalendar.action" class="ui-btn-right" data-icon="home" data-iconpos="notext" 
           data-direction="reverse">Home</a> 
	</div><!-- /header -->

	<div data-role="content">
<p><strong><s:property value="dateArrival"/></strong>, <s:property value="numNight"/> nights, <s:property value="numGuests"/> peoples</p>	
	<ul data-role="listview" data-theme="g">
	<s:iterator value="rooms" var="eachRoom" >
		<li><img src="images/hotel-demo.jpeg"  alt="room photo" />
	<a rel="external" href="goOnlineBookingExtras.action?id=<s:property value="id"/>&dateArrival=<s:property value="dateArrival"/>&numNight=<s:property value="numNight"/>&numGuests=<s:property value="numGuests"/>"><p><s:property value="#eachRoom.roomType"/></p>
	<p class="price_room_widget">&euro; <s:property value="#eachRoom.price"/> <span>/room/nigth</span></p></a></li>
	</s:iterator>
</ul>
	

	</div><!-- /content -->

	<div data-role="footer">
		<h4>Locanda Mobile Widget</h4>
	</div><!-- /header -->
</div>