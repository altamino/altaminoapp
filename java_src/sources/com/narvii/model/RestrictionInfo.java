package com.narvii.model;

import com.narvii.invite.InviteMembersFragment;

/* JADX INFO: loaded from: classes10.dex */
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

    public boolean hasAvailableDuration() {
        return this.availableDuration > 0;
    }

    public boolean isSupported() {
        int i10;
        int i11 = this.restrictType;
        return i11 <= 4 && i11 >= 0 && (i10 = this.discountStatus) <= 1 && i10 >= 0;
    }

    public int getAvailableDurationInDays() {
        return this.availableDuration / InviteMembersFragment.SECOND_DAY;
    }
}
