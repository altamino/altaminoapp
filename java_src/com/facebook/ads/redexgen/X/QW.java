package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QW implements QV {
    public final /* synthetic */ QX A00;

    private QW(QX qx) {
        this.A00 = qx;
    }

    public /* synthetic */ QW(QX qx, QP qp) {
        this(qx);
    }

    @Override // com.facebook.ads.redexgen.X.QV
    public final void A58() {
        this.A00.A0O(true);
    }

    @Override // com.facebook.ads.redexgen.X.QV
    public final void A5R() {
        if (!TextUtils.isEmpty(this.A00.A08.A0B())) {
            this.A00.A0A.A4H(this.A00.A08.A0B(), new SN().A04(this.A00.A04.getViewabilityChecker()).A03(this.A00.A04.getTouchDataRecorder()).A07());
        }
        this.A00.A0E.A2f(this.A00.A0F.A3Z());
    }

    @Override // com.facebook.ads.redexgen.X.QV
    public final void A5i() {
        this.A00.A0E.A2f(this.A00.A0F.A3V());
    }
}
