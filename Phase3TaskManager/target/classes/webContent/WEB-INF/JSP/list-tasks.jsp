<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-task">Add Task</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Tasks</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="30%">Task Name</th>
						<th width="30%">Description</th>
						<th width="30%">Start Date</th>
						<th width="30%">End Date</th>
						<th width="30%">Email</th>
						<th width="30%">Severity</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${tasks}" var="task">
						<tr>
							<td>${todo.taskName}</td>
							<td>${todo.description}</td>
							<td><fmt:formatDate value="${tasks.startDate}"
									pattern="dd/MM/yyyy" /></td>
							<td><fmt:formatDate value="${tasks.endDate}"
									pattern="dd/MM/yyyy" /></td>
							<td>${todo.email}</td>
							<td>${todo.severity}</td>
							<td><a type="button" class="btn btn-success"
								href="/update-tasks?id=${tasks.id}">Update</a>
							<a type="button" class="btn btn-warning"
								href="/delete-tasks?id=${tasks.id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
