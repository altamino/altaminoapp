package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8Q, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8Q {
    public static C5A<C8Q> A03 = new C5B(20);
    public int A00;

    @Nullable
    public C03507t A01;

    @Nullable
    public C03507t A02;

    private C8Q() {
    }

    public static C8Q A00() {
        C8Q record = A03.A2T();
        return record == null ? new C8Q() : record;
    }

    public static void A01() {
        while (A03.A2T() != null) {
        }
    }

    public static void A02(C8Q c8q) {
        c8q.A00 = 0;
        c8q.A02 = null;
        c8q.A01 = null;
        A03.A6p(c8q);
    }
}
