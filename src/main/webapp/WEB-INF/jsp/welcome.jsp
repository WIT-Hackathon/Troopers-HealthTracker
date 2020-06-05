<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div  class="container">
	<div class="panel panel-primary">
		<div class="alert alert-success" role="alert">
          <h4 class="alert-heading">Welcome <p1>${name}</p1>!</h4>
          </div>

 </div>
</div>
<%@ include file="bar_global.jsp"%>
<div id="chatbot">
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
</div>
<%@ include file="common/footer.jspf"%>