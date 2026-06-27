package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.list.DateCompare;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.io.Serializable;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Coupon.kt */
/* loaded from: classes.dex */
public final class Coupon extends NVObject implements DateCompare, Serializable {
    public CouponDetail coupon;
    public String couponMappingId;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date createdTime;
    public boolean hasProperValue = true;

    public final boolean isAvailable() {
        return true;
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

    @Override // com.narvii.model.NVObject
    public String id() {
        String str = this.couponMappingId;
        return str != null ? str : "";
    }

    @Override // com.narvii.list.DateCompare
    public Date getCompareDate() {
        Date date = this.createdTime;
        if (date == null) {
            return new Date();
        }
        if (date != null) {
            return date;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final int getValue() {
        CouponDetail couponDetail = this.coupon;
        if (couponDetail == null) {
            return 0;
        }
        if (couponDetail != null) {
            return couponDetail.getValue();
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final String getCouponTitle() {
        CouponDetail couponDetail = this.coupon;
        String couponTitle = couponDetail != null ? couponDetail.getCouponTitle() : null;
        return couponTitle != null ? couponTitle : "";
    }

    public final String getCouponScopeDesc() {
        CouponDetail couponDetail = this.coupon;
        String couponScopeDesc = couponDetail != null ? couponDetail.getCouponScopeDesc() : null;
        return couponScopeDesc != null ? couponScopeDesc : "";
    }
}
