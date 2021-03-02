<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add Task</div>
				<div class="panel-body">
					<form:form method="post" modelAttribute="Tasks">
						<form:hidden path="id" />						
						<fieldset class="form-group">
							<form:label path="taskName">Task Name</form:label>
							<form:input path="taskName" type="text" class="form-control"
								required="required" />
							<form:errors path="taskName" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="description">Description</form:label>
							<form:input path="description" type="text" class="form-control"
								required="required" />
							<form:errors path="description" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="startDate">Start Date</form:label>
							<form:input path="startDate" type="text" class="form-control"
								required="required" />
							<form:errors path="startDate" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="endDate">End Date</form:label>
							<form:input path="endDate" type="text" class="form-control"
								required="required" />
							<form:errors path="endDate" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="email">Email</form:label>
							<form:input path="email" type="text" class="form-control"
								required="required" />
							<form:errors path="email" cssClass="text-warning" />
						</fieldset>
						
						<fieldset class="form-group">
							<form:label path="severity">Severity</form:label>
							<form:input path="severity" type="text" class="form-control"
								required="required" />
							<form:errors path="severity" cssClass="text-warning" />
						</fieldset>

						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>