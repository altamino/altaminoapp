package com.narvii.catalog.review;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes2.dex */
public class ItemSubmission extends NVObject {
    public static final int STATUS_APPROVED = 2;
    public static final int STATUS_CANCELLED = 4;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_PENDING = 1;
    public static final int STATUS_REJECTED = 3;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    public Date createdTime;
    public String destinationItemId;
    public Item item;
    public String itemId;
    public String message;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    public Date modifiedTime;
    public User operator;
    public Item originalItem;
    public String requestId;
    public String responseMessage;
    public int status;
    public String uid;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 15;
    }

    @Override // com.narvii.model.NVObject
    public String objectTypeName() {
        return "itemSubmission";
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
        return this.requestId;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }
}
