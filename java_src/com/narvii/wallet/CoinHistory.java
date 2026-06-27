package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.list.DateCompare;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes3.dex */
public class CoinHistory extends NVObject implements DateCompare {
    public static final int COIN_SOURCE_TYPE_FANS_BACKWARD = 16;
    public double bonusCoinsFloat;
    public int changedCoins;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    public Date createdTime;
    public ObjectNode extData;
    public double originCoinsFloat;
    public int sourceType;
    public double taxCoinsFloat;
    public int totalCoins;
    public String uid;

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
        return this.uid;
    }

    @Override // com.narvii.list.DateCompare
    public Date getCompareDate() {
        return this.createdTime;
    }

    public String description() {
        return JacksonUtils.nodeString(this.extData, "description");
    }

    public String subtitle() {
        return JacksonUtils.nodeString(this.extData, "subtitle");
    }

    public String deepLink() {
        return JacksonUtils.nodeString(this.extData, "objectDeeplinkUrl");
    }

    public String icon() {
        return JacksonUtils.nodeString(this.extData, "icon");
    }

    public double getBonusCoinsFloat() {
        return this.bonusCoinsFloat;
    }
}
