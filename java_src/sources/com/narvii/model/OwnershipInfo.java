package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* JADX INFO: loaded from: classes6.dex */
public class OwnershipInfo {

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date expiredTime;
    public boolean isAutoRenew;
    public int ownershipStatus;

    public boolean isAutoRenew() {
        return this.isAutoRenew && this.ownershipStatus == 1;
    }

    public int daysExpired() {
        Date date = this.expiredTime;
        if (date == null) {
            return 0;
        }
        long time = date.getTime();
        if (time == 0) {
            return 0;
        }
        return (int) ((System.currentTimeMillis() - time) / DateUtils.ONE_DAY);
    }

    public boolean isExpired() {
        if (this.expiredTime == null) {
            return false;
        }
        return daysExpired() > 0 || this.ownershipStatus == 3;
    }
}
