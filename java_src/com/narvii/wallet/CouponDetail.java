package com.narvii.wallet;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: CouponDetail.kt */
/* loaded from: classes3.dex */
public final class CouponDetail {
    public Integer couponValue;
    public String scopeDesc;
    public String title;

    public final int getValue() {
        Integer num = this.couponValue;
        if (num == null) {
            return 0;
        }
        if (num != null) {
            return num.intValue();
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final String getCouponTitle() {
        String str = this.title;
        return str != null ? str : "";
    }

    public final String getCouponScopeDesc() {
        String str = this.scopeDesc;
        return str != null ? str : "";
    }
}
