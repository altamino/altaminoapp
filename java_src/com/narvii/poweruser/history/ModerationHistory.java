package com.narvii.poweruser.history;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class ModerationHistory extends NVObject {
    public static final String LEVEL_DANGER = "danger";
    public static final String LEVEL_DEFAULT = "default";
    public static final String LEVEL_SUCCESS = "success";
    public static final String LEVEL_WARNING = "warning";
    public static final int MODERATION_LEVEL_CURATOR = 1;
    public static final int MODERATION_LEVEL_IMOD = 3;
    public static final int MODERATION_LEVEL_LEADER = 2;
    public static final int MODERATION_LEVEL_NONE = 0;
    public static final int OP_ADMIN_SEND_STRIKE_TO_USER = 205;
    public static final int OP_ADMIN_SEND_WARNING_TO_USER = 267;
    public User author;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public ObjectNode extData;
    public long logId;
    public int moderationLevel;
    public int ndcId;
    public String objectId;
    public int objectType;
    public String objectUrl;
    public int operation;
    public String operationDetail;
    public String operationLevel;
    public String operationName;
    public ObjectNode refObject;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 900;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return String.valueOf(this.logId);
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user != null) {
            return user.id();
        }
        return null;
    }
}
