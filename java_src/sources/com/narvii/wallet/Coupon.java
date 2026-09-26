package com.narvii.wallet;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.list.DateCompare;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import java.io.Serializable;
import java.util.Date;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class Coupon extends NVObject implements DateCompare, Serializable {

    @Nullable
    public CouponDetail coupon;

    @Nullable
    public String couponMappingId;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    @Nullable
    public Date createdTime;
    public boolean hasProperValue = true;

    @Override // com.narvii.model.NVObject
    @NotNull
    public String id() {
        String str = this.couponMappingId;
        return str == null ? "" : str;
    }

    public final boolean isAvailable() {
        return true;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @Nullable
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    @Nullable
    public String uid() {
        return null;
    }

    @Override // com.narvii.list.DateCompare
    @NotNull
    public Date getCompareDate() {
        Date date = this.createdTime;
        if (date == null) {
            return new Date();
        }
        kotlin.jvm.internal.t.g(date);
        return date;
    }

    @NotNull
    public final String getCouponScopeDesc() {
        CouponDetail couponDetail = this.coupon;
        String couponScopeDesc = couponDetail != null ? couponDetail.getCouponScopeDesc() : null;
        return couponScopeDesc == null ? "" : couponScopeDesc;
    }

    @NotNull
    public final String getCouponTitle() {
        CouponDetail couponDetail = this.coupon;
        String couponTitle = couponDetail != null ? couponDetail.getCouponTitle() : null;
        return couponTitle == null ? "" : couponTitle;
    }

    public final int getValue() {
        CouponDetail couponDetail = this.coupon;
        if (couponDetail == null) {
            return 0;
        }
        kotlin.jvm.internal.t.g(couponDetail);
        return couponDetail.getValue();
    }
}
