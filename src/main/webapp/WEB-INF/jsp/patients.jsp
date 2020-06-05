<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/new-patient">Add New Patient</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Patients</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
					  <th width="15%"> Id</th>
                      <th width="15%">Name</th>
                      <th width="15%">Disease</th>
                      <th width="15%">Since</th>
                       <th width="10%">Patient Stats</th>
                       <th width="15%">Alert User</th>
                        <th width="15%">Actions</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${patients}" var="patient">
						<tr>
							<td>${patient.id}</td>
							<td>${patient.firstName} ${patient.lastName}</td>
							<td>${patient.disease}</td>
							<td>${patient.days}</td>

							<td>
							<a type="button" class="btn btn-success"
                            <a href="<c:url value='/${patient.id}/bar'/>">Patient Stats</a> </td>
                            <td><a href="mailto:${patient.email}">${patient.email}</a></td>
							<td><a type="button" class="btn btn-success"
								<a href="<c:url value='/${patient.id}'/>">Edit</a> </td>
								<td> <form action="/${patient.id}/delete" method="post" class="btn btn-success">
                                <input type="submit" value="Delete" />
                                 </form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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