package com.narvii.visitor;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.AuthorGetter;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class RecentVisitor extends NVObject implements AuthorGetter {
    public int ownerPrivacyMode;
    public User profile;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date visitTime;
    public int visitorPrivacyMode;

    @Override // com.narvii.model.NVObject
    public String id() {
        return null;
    }

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
    public String uid() {
        return null;
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.profile;
    }
}
