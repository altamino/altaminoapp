package com.narvii.wallet;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CouponListResponse.kt */
/* loaded from: classes3.dex */
public final class CouponListResponse extends ListResponse<Coupon> {

    @JsonProperty("couponMappingList")
    @JsonDeserialize(contentAs = Coupon.class)
    private ArrayList<Coupon> couponList;

    public final ArrayList<Coupon> getCouponList() {
        return this.couponList;
    }

    public final void setCouponList(ArrayList<Coupon> arrayList) {
        this.couponList = arrayList;
    }

    @Override // com.narvii.model.api.ListResponse
    public List<Coupon> list() {
        return this.couponList;
    }
}
