package com.narvii.model;

import com.narvii.invite.InviteMembersFragment;

/* loaded from: classes3.dex */
public class RestrictionInfo {
    public static final int DAYS_IN_A_MONTH = 31;
    public static final int PRODUCT_DISCOUNT_STATUS_AMINO_PLUS = 1;
    public static final int PRODUCT_DISCOUNT_STATUS_OFF = 0;
    public static final int PRODUCT_RESTRICT_TYPE_AMINO_MEMBERSHIP = 2;
    public static final int PRODUCT_RESTRICT_TYPE_COIN = 4;
    public static final int PRODUCT_RESTRICT_TYPE_FREE = 1;
    public static final int PRODUCT_RESTRICT_TYPE_NONE = 0;
    public static final int PRODUCT_RESTRICT_TYPE_NO_RESTRICTION = 3;
    public int availableDuration;
    public int discountStatus;
    public int discountValue;
    public int restrictType;
    public int restrictValue;

    public boolean isSupported() {
        int i;
        int i2 = this.restrictType;
        return i2 <= 4 && i2 >= 0 && (i = this.discountStatus) <= 1 && i >= 0;
    }

    public int getAvailableDurationInDays() {
        return this.availableDuration / InviteMembersFragment.SECOND_DAY;
    }

    public boolean hasAvailableDuration() {
        return this.availableDuration > 0;
    }
}
