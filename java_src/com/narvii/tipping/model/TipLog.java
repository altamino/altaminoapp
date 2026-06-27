package com.narvii.tipping.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.AuthorGetter;
import com.narvii.model.Benefactor;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class TipLog extends NVObject implements AuthorGetter, Benefactor {
    public boolean isTipperAccessible = true;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastThankedTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date lastTippedTime;
    public User tipper;
    public int totalTippedCoins;

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
        User user = this.tipper;
        if (user == null) {
            return null;
        }
        return user.id();
    }

    @Override // com.narvii.model.Benefactor
    public User getBenefactor() {
        return this.tipper;
    }

    @Override // com.narvii.model.Benefactor
    public boolean isThanksSent() {
        return this.lastThankedTime != null;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.tipper;
        if (user == null) {
            return null;
        }
        return user.id();
    }

    @Override // com.narvii.model.AuthorGetter
    public User getAuthor() {
        return this.tipper;
    }
}
