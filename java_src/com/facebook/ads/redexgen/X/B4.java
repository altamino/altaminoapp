package com.facebook.ads.redexgen.X;

import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class B4 implements Runnable {
    private EnumC0522Em A00;
    public final /* synthetic */ B5 A01;

    public B4(B5 b5, EnumC0522Em enumC0522Em) {
        this.A01 = b5;
        this.A00 = enumC0522Em;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.A01.A04.A04(EnumC0524Eo.A03, this.A00, null);
        this.A01.A01.A02(this.A01.A02, TimeUnit.SECONDS.toMillis(this.A01.A03.A0N()));
    }
}
