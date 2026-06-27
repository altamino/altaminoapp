package com.narvii.influencer;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import java.util.Date;

/* loaded from: classes.dex */
public class FanClub extends NVObject {
    public static final int FANS_STATUS_ACTIVE = 1;
    public static final int FANS_STATUS_NONE = 0;
    public Community community;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date expiredTime;
    public int fansStatus;
    public boolean isAutoRenew;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date modifiedTime;
    public int ndcId = -1;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date renewedTime;
    public String targetUid;
    public User targetUserProfile;

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

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.targetUid;
    }

    public boolean isActive() {
        return this.fansStatus == 1;
    }

    public boolean isExpired() {
        return (isActive() || this.expiredTime == null) ? false : true;
    }

    public boolean hasSubscriptionBefore() {
        return this.expiredTime != null;
    }

    public int expiringDays() {
        Date date = this.expiredTime;
        if (date == null) {
            return -1;
        }
        long time = date.getTime();
        if (time == 0) {
            return -1;
        }
        long jCurrentTimeMillis = time - System.currentTimeMillis();
        if (jCurrentTimeMillis <= 0) {
            return -1;
        }
        return (int) (jCurrentTimeMillis / DateUtils.ONE_DAY);
    }

    public int daysExpired() {
        Date date = this.expiredTime;
        if (date == null) {
            return -1;
        }
        long time = date.getTime();
        if (time == 0) {
            return -1;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - time;
        if (jCurrentTimeMillis <= 0) {
            return -1;
        }
        return (int) (jCurrentTimeMillis / DateUtils.ONE_DAY);
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.hashCode() != hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FanClub)) {
            return false;
        }
        FanClub fanClub = (FanClub) obj;
        return Utils.isEquals(fanClub.targetUid, this.targetUid) && fanClub.fansStatus == this.fansStatus && fanClub.isAutoRenew == this.isAutoRenew && Utils.isEquals(fanClub.createdTime, this.createdTime) && Utils.isEquals(fanClub.expiredTime, this.expiredTime);
    }

    public boolean isClosed() {
        User user = this.targetUserProfile;
        return user != null && user.influencerInfo == null;
    }
}
