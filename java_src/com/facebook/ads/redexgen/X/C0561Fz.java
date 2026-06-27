package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0561Fz extends AbstractC0556Fu {
    private final Context A00;
    private final ApplicationInfo A01;
    private final boolean A02;

    public C0561Fz(Context context, boolean z) {
        this.A00 = context;
        this.A02 = z;
        this.A01 = context.getApplicationInfo();
    }

    @SuppressLint({"BadMethodUse-java.lang.System.currentTimeMillis"})
    public final InterfaceC0552Fq A07() {
        return new C0558Fw(this);
    }

    public final InterfaceC0552Fq A08() {
        return new C0560Fy(this);
    }

    public final InterfaceC0552Fq A09() {
        return new C0559Fx(this);
    }
}
