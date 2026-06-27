package com.narvii.influencer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.AuthorGetter;
import com.narvii.model.Benefactor;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class FansInfo extends NVObject implements AuthorGetter, Benefactor {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date expiredTime;
    public int fansStatus;
    public User fansUserProfile;
    public boolean isTipperAccessible = true;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastThankedTime;
    public int totalTippedCoins;
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
        return this.uid;
    }

    @Override // com.narvii.model.Benefactor
    public User getBenefactor() {
        return this.fansUserProfile;
    }

    @Override // com.narvii.model.Benefactor
    public boolean isThanksSent() {
        return this.lastThankedTime != null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return this.uid;
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.fansUserProfile;
    }
}
