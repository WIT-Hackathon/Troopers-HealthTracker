<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add Patient<p1>.</p1></div>
				<div class="panel-body">
					<form:form action="/add" method="post" modelAttribute="patient">
						<fieldset class="form-group">
							<form:label path="firstName">First Name</form:label>
							<form:input path="firstName" type="text" class="form-control"
								required="required" />
							<form:errors path="firstName" cssClass="text-warning" />
						</fieldset>

						<fieldset class="form-group">
							<form:label path="lastName">Last Name</form:label>
							<form:input path="lastName" type="text" class="form-control"
								required="required" />
							<form:errors path="lastName" cssClass="text-warning" />
						</fieldset>
						<fieldset class="form-group">
                          <form:label path="contact">Contact</form:label>
                        <form:input path="contact" type="text" class="form-control"
                        required="required" />
                         <form:errors path="contact" cssClass="text-warning" />
                          </fieldset>
                         <fieldset class="form-group">
                          <form:label path="emailId">Email Id</form:label>
                          <form:input path="emailId" type="text" class="form-control"
                           required="required" />
                       <form:errors path="emailId" cssClass="text-warning" />
                       </fieldset>
						<fieldset class="form-group">
                       	<form:label path="disease">Symptom</form:label>
                        <form:input path="disease" type="text" class="form-control"
                        		required="required" />
                        <form:errors path="disease" cssClass="text-warning" />
                        </fieldset>
                        <fieldset class="form-group">
                        <form:label path="days">Days</form:label>
                         <form:input path="days" type="text" class="form-control"
                               required="required" />
                          <form:errors path="days" cssClass="text-warning" />
                         </fieldset>
                       <fieldset class="form-group">
                        <form:label path="prescription">Prescription</form:label>
                          <form:textarea path="prescription" type="text" class="form-control rounded-0" id="exampleFormControlTextarea2" rows="5"
                          required="required" />
                          <form:errors path="prescription" cssClass="text-warning" />
                         </fieldset>
						<button type="submit" class="btn btn-success">Save</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>