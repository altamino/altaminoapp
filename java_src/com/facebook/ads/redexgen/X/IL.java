package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@VisibleForTesting
/* loaded from: assets/assets/audience_network.dex */
public abstract class IL<T> {
    private IR A00;

    @Nullable
    public abstract T A03();

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IL != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    public final IR A00() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IL != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    public final void A01(IR ir) {
        this.A00 = ir;
    }
}
