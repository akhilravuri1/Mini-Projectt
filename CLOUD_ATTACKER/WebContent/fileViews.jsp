<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attacker</title>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.Connections.*"%>



<link rel="stylesheet" href="css/style.css">




</head>

<%
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	Statement st = null;
	PreparedStatement ps1 = null;
	ResultSet resultSet1 = null;
	Statement st1 = null;
	String query = null;

	String officeId = request.getParameter("id");
%>
<body background="images/attack.jpg">

	<div class="wrapper">
		<div class="container">


			<%
				if (officeId == null || officeId.equals("")) {
			%>

			<h1>NO Cloud Service with this Office Id and Location</h1>
			<%
				} else {
					String parameter = request.getParameter("returnParameter");
					if ("attackResponse".equalsIgnoreCase(parameter)) {
						String fileKey = request.getParameter("filekey");
						//String Id =request.getParameter("officeId");
						String status = "A";
						query = "UPDATE itjcc03.adminupload SET status='" + status
								+ "' where filekey='" + fileKey
								+ "' and office_id='" + officeId + "'";
						ps1 = Connections.con().prepareStatement(query);
						ps1.executeUpdate();
			%>


			<h1>File Has been attacked</h1>

			<%
				}
			%>
			

			<h1>***CLOUD SERVICE GOING TO ATTACKED***</h1>
			
			<h2>	Files Of Location Id<%=officeId%></h2>


			<center>
				Admin Files
				<table border="2" bordercolor="gray" width="500">

					<tr bgcolor="yellow">
						<td><center>Name/Key</center></td>
						<td><center>File</center></td>
						<td><center>Security Check</center></td>
					</tr>
					<%
						int total = 0;

							String q = "select name,path,filekey, security_check, status from itjcc03.adminupload where office_id='"
									+ officeId + "'";
							ps = Connections.con().prepareStatement(q);
							resultSet = ps.executeQuery();
							while (resultSet.next()) {
					%>

					<tr bgcolor="#00000">

						<td><%=resultSet.getString(3)%></td>
						<td><%=resultSet.getString(1)%></td>

						<!-- 	<td>
						<input type="button" onclick="myFunction('<%=resultSet.getString(1)%>')" value="OPEN"></input>
					</td>
				 -->
						<%-- 					<td><a href="Files/all content/<%=resultSet.getString(1)%>" target='_blank' title="Click here to Download"><center>OPEN</center></a></td>
 --%>
						<%
							if (resultSet.getBoolean(4)) {
						%>
						<td>Security Enabled</td>
						<%
							} else {
										if (resultSet.getString(5).equals("A")) {
						%>

						<td>Attacked</td>
						<%
							} else {
						%>
						<td>
							<%--  <input type="button" value="Attack" onclick="AttackCmd('<%=resultSet.getString(3)%>','<%=officeId%>')"/> --%>
							<a
							href="fileViews.jsp?filekey=<%=resultSet.getString(3)%>&id=<%=officeId%>&returnParameter=attackResponse"
							title="Click here to Attck">Attack</a>

						</td>
						<%
							}

									}
						%>

					</tr>

					<%
						}
						}
					%>
				</table>
		</div>
























	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	<script src="js/index.js"></script>




</body>
</html>
