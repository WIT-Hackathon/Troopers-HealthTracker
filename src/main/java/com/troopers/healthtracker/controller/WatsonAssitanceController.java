package com.troopers.healthtracker.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.google.gson.GsonBuilder;
import com.ibm.cloud.sdk.core.security.IamAuthenticator;
import com.ibm.cloud.sdk.core.service.exception.NotFoundException;
import com.ibm.cloud.sdk.core.service.exception.RequestTooLargeException;
import com.ibm.cloud.sdk.core.service.exception.ServiceResponseException;
import com.ibm.watson.assistant.v2.Assistant;
import com.ibm.watson.assistant.v2.model.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class WatsonAssitanceController {

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @Value("${ibm.api.key}")
    private String apikey;

    @Value("${ibm.assistant.id}")
    private String assistant_id;

    @Value("${ibm.assistant.version.date}")
    private String versionid;

    private String session_id;

    @Value("${ibm.assistant.url}")
    private String url;

    @PostMapping("/api/message")
    public String getMessage(@RequestBody com.troopers.healthtracker.dto.MessageInput messageInput) throws JsonProcessingException {
        try {
            IamAuthenticator authenticator = new IamAuthenticator(apikey);
            Assistant assistant = new Assistant(versionid, authenticator);
            assistant.setServiceUrl(url);

            session_id = getSessionId(assistant);

            MessageInput input = getMessageInput(messageInput);

            MessageContext context = getMessageContext();

            MessageOptions options = new MessageOptions.Builder(assistant_id, session_id)
                    .input(input)
                    .context(context)
                    .build();

            MessageResponse messageResponse = assistant.message(options).execute().getResult();
            String response = "{ \"output\" : " + new GsonBuilder().create().toJson(messageResponse.getOutput()) + "}";
            log.info("Response from watson assistance : " + response);
            return response;
        } catch (NotFoundException e) {
            log.error("NotFoundException", e);
            throw e;
        } catch (RequestTooLargeException e) {
            log.error("RequestTooLargeException", e);
            throw e;
        } catch (ServiceResponseException e) {
            log.error("Service returned status code "
                    + e.getStatusCode() + ": " + e.getMessage());
            throw e;
        }

    }

    private MessageContext getMessageContext() {

        MessageContextGlobalSystem system = new MessageContextGlobalSystem.Builder().userId("my_user_id").build();
        MessageContextGlobal globalContext = new MessageContextGlobal.Builder().system(system).build();

        Map<String, Object> userDefinedContext = new HashMap<>();
        userDefinedContext.put("account_num", "123456");
        MessageContextSkill mainSkillContext = new MessageContextSkill.Builder().userDefined(userDefinedContext).build();
        MessageContextSkills skillsContext = new MessageContextSkills();
        skillsContext.put("main skill", mainSkillContext);

        return new MessageContext.Builder().global(globalContext).skills(skillsContext).build();

    }

    private MessageInput getMessageInput(com.troopers.healthtracker.dto.MessageInput messageInput) {

        String text = (messageInput.getInput() == null || messageInput.getInput().getText() == null) ? "" : messageInput.getInput().getText();
        MessageInputOptions inputOptions = new MessageInputOptions.Builder().returnContext(true).build();

        return new MessageInput.Builder()
                .messageType("text")
                .text(text)
                .options(inputOptions)
                .build();
    }

    private String getSessionId(Assistant assistant) {

        CreateSessionOptions sessionoptions = new CreateSessionOptions.Builder(assistant_id).build();

        SessionResponse sessionResponse = assistant.createSession(sessionoptions).execute().getResult();
        return sessionResponse.getSessionId();
    }

}
