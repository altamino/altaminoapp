package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.ThreadSafe;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@ThreadSafe
/* loaded from: assets/assets/audience_network.dex */
public final class B5 implements B1 {
    private EnumC0522Em A00;
    private FI A01;
    private FJ A02;
    private final C0430Ay A03;
    private final C0432Ba A04;
    private final AtomicBoolean A05 = new AtomicBoolean();

    public B5(C0430Ay c0430Ay, C0432Ba c0432Ba) {
        this.A03 = c0430Ay;
        this.A04 = c0432Ba;
    }

    private final synchronized void A04() {
        if (this.A02 != null && this.A05.get()) {
            this.A01.A01(this.A02);
            FE.A00().A04();
            this.A04.A02();
            this.A05.compareAndSet(true, false);
        }
    }

    public final synchronized void A05(EnumC0522Em enumC0522Em) {
        if (!this.A05.get() && enumC0522Em != null && this.A03.A0Y() && FH.A0C(enumC0522Em)) {
            this.A01 = new FI(FE.A00().A03().getLooper());
            this.A00 = enumC0522Em;
            this.A02 = new FJ(new B4(this, enumC0522Em));
            this.A04.A03(enumC0522Em);
            this.A01.A00(this.A02);
            this.A05.compareAndSet(false, true);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B1
    public final synchronized void A7G(EnumC0522Em enumC0522Em) {
        if (this.A00 != enumC0522Em) {
            this.A00 = enumC0522Em;
            if (enumC0522Em == EnumC0522Em.A05) {
                A04();
            } else {
                A05(enumC0522Em);
            }
        }
    }
}
