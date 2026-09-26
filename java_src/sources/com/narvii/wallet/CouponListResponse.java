package com.narvii.wallet;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class CouponListResponse extends ListResponse<Coupon> {

    @JsonProperty("couponMappingList")
    @JsonDeserialize(contentAs = Coupon.class)
    @Nullable
    private ArrayList<Coupon> couponList;

    @Nullable
    public final ArrayList<Coupon> getCouponList() {
        return this.couponList;
    }

    @Override // com.narvii.model.api.ListResponse
    @Nullable
    public List<Coupon> list() {
        return this.couponList;
    }

    public final void setCouponList(@Nullable ArrayList<Coupon> arrayList) {
        this.couponList = arrayList;
    }
}
