<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.employee.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.ResultSet"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard - Admin</title>
<%@include file="includes/head.jsp"%>
</head>
<body class="sb-nav-fixed">

	<%@include file="includes/headerTest.jsp"%>

	<div id="layoutSidenav">
		<%@include file="includes/sideBarTest.jsp"%>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Employee Database</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">All Employees</li>
					</ol>
					<%-- <%
					ArrayList<employee> employee = (ArrayList<employee>)request.getAttribute("allemployees");
					for (employee emp : employee) {
					%>
					<p><%=emp.getId()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getEmail()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					<p><%=emp.getName()%></p>
					
					<%
					}
					%> --%>
					
					
					
					<div>
						<a href="<%=request.getContextPath()%>/viewEmployeesServlet">View
							All Users</a>
					</div>
					<table>
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Address</th>
								<th>Username</th>
								<th>Gender</th>
								<th>Position</th>
								<th>Department</th>
								<th>DOB day</th>
								<th>DOB Month</th>
								<th>DOB Year</th>

							</tr>


						</thead>
						<tbody>
							<c:forEach var="emp" items="${allemployees}">
								<tr>
									<td><c:out value="${emp.id}" /> <c:set var="id" value="${emp.id}"></c:set></td>
									<td><c:out value="${emp.name}" /> <c:set var="name" value="${emp.name}"></c:set></td>
									<td><c:out value="${emp.email}" /> <c:set var="email" value="${emp.email}"></c:set></td>
									<td><c:out value="${emp.phone}" /> <c:set var="phone" value="${emp.id}"></c:set></td>
									<td><c:out value="${emp.address}" /> <c:set var="address" value="${emp.address}"></c:set></td>
									<td><c:out value="${emp.username}" /> <c:set var="username" value="${emp.username}"></c:set></td>
									<td><c:out value="${emp.gender}" /> <c:set var="gender" value="${emp.gender}"></c:set></td>
									<td><c:out value="${emp.position}" /> <c:set var="position" value="${emp.position}"></c:set></td>
									<td><c:out value="${emp.department}" /> <c:set var="department" value="${emp.department}"></c:set></td>
									<td><c:out value="${emp.dobDay}" /> <c:set var="dobDay" value="${emp.dobDay}"></c:set></td>
									<td><c:out value="${emp.dobMonth}" /> <c:set var="dobMonth" value="${emp.dobMonth}"></c:set></td>
									<td><c:out value="${emp.dobYear}" /> <c:set var="dobYear" value="${emp.dobYear}"></c:set></td>
									<td><c:out value="${emp.password}" /> <c:set var="password" value="${emp.password}" ></c:set></td>
									
									<td><c:url value="deleteEmployee" var="del">
									    <c:param name="id" value="${emp.id}"></c:param>
									    </c:url> 
									    <a href= "${del}"> <input type = "button" name = "delete" value = "delete"></a></td>
									    
									<td><c:url value="editEmployee.jsp" var="edit">
									     <c:param name="id" value="${emp.id}"></c:param>
									     <c:param name="name" value="${emp.name}"></c:param>
									     <c:param name="email" value="${emp.email}"></c:param>
									     <c:param name="phone" value="${emp.phone}"></c:param>
									     <c:param name="address" value="${emp.address}"></c:param>
									     <c:param name="username" value="${emp.username}"></c:param>
									     <c:param name="gender" value="${emp.gender}"></c:param>
									     <c:param name="position" value="${emp.position}"></c:param>
									     <c:param name="department" value="${emp.department}"></c:param>
									     <c:param name="dobDay" value="${emp.dobDay}"></c:param>
									     <c:param name="dobMonth" value="${emp.dobMonth}"></c:param>
									     <c:param name="dobYear" value="${emp.dobYear}"></c:param>
									     <c:param name="password" value="${emp.password}"></c:param>
									     </c:url> 
									     <a href= "${edit}"> <input type = "button" name = "edit" value = "edit"></a></td>	
								
								</tr>
							</c:forEach>
						</tbody>

					</table>


				</div>
			</main>

		</div>
	</div>
	<%@include file="includes/footerTest.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>