package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.util.Date;

/* loaded from: classes3.dex */
public class MembershipStatus extends NVObject {
    public static final int ACCOUNT_MEMBERSHIP_STATUS_AMINO_PLUS = 1;
    public static final int ACCOUNT_MEMBERSHIP_STATUS_NONE = 0;
    public static final int PAYMENT_TYPE_ANDROID_IN_APP_PURCHASE = 4;
    public static final int PAYMENT_TYPE_ANDROID_IN_APP_SUBSCRIPTION = 5;
    public static final int PAYMENT_TYPE_COIN = 1;
    public static final int PAYMENT_TYPE_IOS_IN_APP_PURCHASE = 2;
    public static final int PAYMENT_TYPE_IOS_IN_APP_SUBSCRIPTION = 3;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    public Date createdTime;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    public Date expiredTime;
    public boolean isAutoRenew;
    public boolean isPremiumItemMembership;
    public int membershipStatus;
    public int paymentType;

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
}
