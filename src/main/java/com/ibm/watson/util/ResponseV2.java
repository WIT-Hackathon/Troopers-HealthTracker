/*
package com.ibm.watson.util;

import com.google.gson.reflect.TypeToken;
import com.ibm.watson.assistant.v2.model.*;
import com.ibm.watson.developer_cloud.assistant.v1.model.Context;
import com.ibm.watson.developer_cloud.assistant.v1.model.OutputData;
import com.ibm.watson.developer_cloud.util.GsonSerializationHelper;

import java.lang.reflect.Type;
import java.util.List;

public class ResponseV2 {

    private final MessageResponse messageResponse;

    */
/*private Type inputType = (new TypeToken<MessageInput>() {
    }).getType();*//*

    private Type intentsType = (new TypeToken<List<RuntimeIntent>>() {
    }).getType();
    private Type entitiesType = (new TypeToken<List<RuntimeEntity>>() {
    }).getType();
    private Type alternateIntentsType = (new TypeToken<Boolean>() {
    }).getType();
    private Type contextType = (new TypeToken<Context>() {
    }).getType();
    private Type outputType = (new TypeToken<OutputData>() {
    }).getType();
    private Type actionsType = (new TypeToken<List<DialogNodeAction>>() {
    }).getType();
    private Type skillsType = (new TypeToken<List<MessageContextSkill>>() {
    }).getType();

    public ResponseV2(MessageResponse response) {
        this.messageResponse = response;
    }

   */
/* public MessageInput getInput() {
        return (MessageInput)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getOutput().getUserDefined(), this.inputType);
    }*//*


    public List<RuntimeIntent> getIntents() {
        return (List)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getOutput().getIntents(), this.intentsType);
    }

    public List<RuntimeEntity> getEntities() {
        return (List)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getOutput().getEntities(), this.entitiesType);
    }

    */
/*public Boolean isAlternateIntents() {
        return (Boolean)GsonSerializationHelper.serializeDynamicModelProperty(this.get("alternate_intents"), this.alternateIntentsType);
    }*//*


    public Context getContext() {
        return (Context)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getContext(), this.contextType);
    }

    public OutputData getOutput() {
        return (OutputData)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getOutput(), this.outputType);
    }

    public List<DialogNodeAction> getActions() {
        return (List)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getOutput().getActions(), this.actionsType);
    }

    public List<MessageContextSkill> getSkills() {
        return (List)GsonSerializationHelper.serializeDynamicModelProperty(this.messageResponse.getContext().skills().get("messagecontextskill"), this.skillsType);
    }
}
*/
