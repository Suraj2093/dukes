<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
        <head>
                <title>JBoss on Azure</title>
                <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        </head>

        <body >
                <%@ page import="javax.servlet.http.*,
                 java.net.InetAddress,
                 java.util.*" %>


		<%

		 Cookie ck = new Cookie ("INGLBCK",InetAddress.getLocalHost().getHostName());
		 ck.setMaxAge(-1);
		 response.addCookie(ck);
		 
		
		%>

		 
        <table width="600" border="1" align="left" cellpadding="1" cellspacing="0">
                <tr>
                        <td colspan="2">
                                <div align="center">
                                        <img src="https://raw.githubusercontent.com/Suraj2093/dukes/master/images/redhat-logo.png" width="600">
                                </div>
                        </td>
                        
                <tr>
                        <td colspan="2">
                              
                                        <font size="+1" face="Verdana, Arial, Helvetica, sans-serif">
                                                <strong>
                                                        
                                                        
                                                        <% String srv = InetAddress.getLocalHost().getHostName();%><%=srv%> ( 
                                                                <%
                                                                try {
                                                        java.net.InetAddress inetAdd =
                                                        java.net.InetAddress.getLocalHost();
                                                        out.println(inetAdd.getHostAddress());
                                                                }catch(java.net.UnknownHostException tsss){
                                                        }
                                                        %>
                                                        )
                                                </strong>      
                                        </font>
                               
                        </td>
                </tr>
                <tr>
                        <td colspan="2">
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">                                                        
                                        <a href="<%=request.getContextPath()%>/testHA.jsp"><B>What's up! Click on This to refresh a page</B></a><br>
                                </font>
                                
                        </td>
                </tr>
                <tr>
                        <td>
                                <%
                                        int cont=0;
                                        if(session.getAttribute("cont")!=null){
                                        cont = Integer.parseInt(session.getAttribute("cont").toString()) + 1;
                                        }
                                        session.removeAttribute("cont");
                                        session.setAttribute("cont",String.valueOf(cont));
                                        String ip = InetAddress.getLocalHost().getHostAddress();
                                        String host = InetAddress.getLocalHost().getHostName();
                                        String hexa = Integer.toHexString(255);
                                        StringTokenizer ipTokenizer = new StringTokenizer(ip,".");
                                        StringBuffer hexaIp = new StringBuffer();
                                        while(ipTokenizer.hasMoreTokens()){
                                        String ipToken = Integer.toHexString(Integer.parseInt(ipTokenizer.nextToken()));
                                        if(ipToken.length()==1)
                                                hexaIp.append("0");
                                        hexaIp.append(ipToken);
                                        }
                                %>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">COUNT</font>
                        </td>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                        <%=cont%>
                                        <% System.out.println("\n El contador va en : " + cont);%>
                                </strong>
                                </font>
                        </td>
                </tr>
                <tr>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">SESSION ID</font>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><%=session.getId()%> <% System.out.println("ID de session: " + session.getId());%></font>
                        </td>
                </tr>
                <tr>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">CLIENT</font>
                        </td>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><%=request.getServerName()%></font>
                        </td>
                </tr>
                <tr>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">SERVER</font>
                        </td>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><%=host%></font>
                        </td>
                </tr>
                <tr>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">CLIENT IP</font>
                        </td>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><%=ip%></font>
                        </td>
                </tr>
                <tr>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">APPLICATION PATH</font>
                        </td>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><%=request.getContextPath()%></font>
                        </td>
                </tr>
                <tr>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">TIMESTAMP</font>
                        </td>
                        <td>
                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><%=new java.util.Date()%></font>
                        </td>
                </tr>             
        </table>
</body>
</html>
