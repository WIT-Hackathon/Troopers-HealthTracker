<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<div class="panel-heading">Add Patient<p1>.</p1></div>
				<div class="panel-body">
				      <form:form action="${patient.id}/update" modelAttribute="patient" method="post">

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

	<div id="view-change-button" class="button" onclick="PayloadPanel.togglePanel(event, this)" style="z-index: 5000">
		<img class="option not-full" src="img/Chat Button.png">
		<img class="option full" src="img/Code Button.png">
	</div>
	<div id="contentParent" class="responsive-columns-wrapper" style="display:none;height:400px;width: 500px;position: absolute;right: 0px;right: 0px;bottom: 73px;">
	<div id="chat-column-holder" class="responsive-column content-column">
		<div class="chat-column">
			<div id="scrollingChat"></div>
			<p class="user-typing" id="user-typing-field"></p>
			<label for="textInput" class="inputOutline">
				<input id="textInput" class="input responsive-column" placeholder="Type something" type="text" onkeydown="ConversationPanel.inputKeyDown(event, this)"
					   autofocus>
			</label>
			<div class="disclaimer" style="display: none">
				* This system is for demonstration purposes only and is not intended to process Personal Data. No Personal
				Data is to be entered
				into this system as it may not have the necessary controls in place to meet the requirements of the General
				Data Protection
				Regulation (EU) 2016/679.
			</div>
		</div>
	</div>
	<div id="payload-column" class="fixed-column content-column">
		<div id="payload-initial-message">
			Type something to see the output
		</div>
		<div id="payload-request" class="payload"></div>
		<div id="payload-response" class="payload"></div>
	</div>
</div>

</div>
<%@ include file="common/footer.jspf"%>