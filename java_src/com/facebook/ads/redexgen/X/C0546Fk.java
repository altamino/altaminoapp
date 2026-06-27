package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import javax.annotation.Nullable;
import javax.inject.Singleton;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@Singleton
/* renamed from: com.facebook.ads.redexgen.X.Fk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0546Fk {
    private final Context A00;
    private final C0536Fa A01;
    private final C0537Fb A02;
    private final C0539Fd A03 = new C0539Fd();
    private final C0544Fi A04;

    @Nullable
    private final HU A05;

    public C0546Fk(Context context, C0544Fi c0544Fi) {
        this.A04 = c0544Fi;
        this.A00 = context;
        this.A05 = HU.A00(context, c0544Fi);
        this.A02 = new C0537Fb(context);
        this.A01 = C0536Fa.A00(this.A03, this.A02, c0544Fi);
        BC.A02(this.A04.A0S());
    }

    public final void A00(MotionEvent motionEvent) {
        this.A01.A03(motionEvent);
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A01(String str, String str2, String str3) {
        HZ hzA05;
        try {
            if (this.A04 != null && this.A04.A0h() && this.A05 != null && (hzA05 = new HY(this.A04).A05(str3, str, str2, this.A00.getPackageName())) != null && this.A04.A0f()) {
                new GU(this.A04, hzA05, this.A05, this.A03, this.A02).A03(str3, str, str2);
            }
        } catch (Throwable t) {
            BC.A03(t);
        }
    }

    public final synchronized void A02(boolean z) {
        if (z) {
            this.A01.A01();
        } else {
            this.A01.A02();
        }
    }
}
