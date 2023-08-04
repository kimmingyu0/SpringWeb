<%--
  Created by IntelliJ IDEA.
  User: KIMMINGYU
  Date: 2023-08-03
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.kimmingyu.temp.HelloSpring"%>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<html>
  <head>
    <title>Jsp Test</title>
  </head>
  <body>
  <%
    ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
    HelloSpring helloSpring = context.getBean(HelloSpring.class);

    out.println(helloSpring.sayHello("김민규"));
  %>
  </body>
</html>
