<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<s:url action="findAllRooms" var="url_dowload"></s:url>
<jsp:include page="jsp/layout/header.jsp"/>
      <div id="home">
      	<h1>Locanda - Download</h1>
      	<p><s:text name="homeWelcomeMessage"/>.</p>
      	<p id="home_images">
      	<a href="<s:property value="url_download"/>" title="download" ><img  src="images/download.png" alt="download"/></a>
      	</p>
      </div>
<jsp:include page="jsp/layout/footer.jsp" />     