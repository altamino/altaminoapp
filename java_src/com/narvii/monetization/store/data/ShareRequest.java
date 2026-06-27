package com.narvii.monetization.store.data;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class ShareRequest extends NVObject {
    public static final int OBJECT_APPROVAL_STATUS_APPROVED = 2;
    public static final int OBJECT_APPROVAL_STATUS_NONE = 0;
    public static final int OBJECT_APPROVAL_STATUS_PENDING = 1;
    public static final int OBJECT_APPROVAL_STATUS_REJECTED = 3;

    @JsonIgnore
    private NVObject cacheRefObject;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public JsonNode refObject;
    public String refObjectId;
    public int refObjectType;
    public String requestId;
    public int status;
    public String uid;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
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

    public NVObject getRefObject() {
        if (this.cacheRefObject == null) {
            this.cacheRefObject = StoreItem.parseRefObject(this.refObjectType, this.refObject);
        }
        return this.cacheRefObject;
    }
}
