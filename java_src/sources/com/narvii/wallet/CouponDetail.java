package com.narvii.wallet;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class CouponDetail {

    @Nullable
    public Integer couponValue;

    @Nullable
    public String scopeDesc;

    @Nullable
    public String title;

    @NotNull
    public final String getCouponScopeDesc() {
        String str = this.scopeDesc;
        return str == null ? "" : str;
    }

    @NotNull
    public final String getCouponTitle() {
        String str = this.title;
        return str == null ? "" : str;
    }

    public final int getValue() {
        Integer num = this.couponValue;
        if (num == null) {
            return 0;
        }
        kotlin.jvm.internal.t.g(num);
        return num.intValue();
    }
}
