package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class Q2 extends Q1 {
    public final /* synthetic */ Q9 A00;

    public Q2(Q9 q9) {
        this.A00 = q9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(K0 k0) {
        Q2 q2 = this;
        float total = 0.0f;
        int videoLengthMs = q2.A00.A01 != null ? 2 : 7;
        while (true) {
            switch (videoLengthMs) {
                case 2:
                    q2 = q2;
                    k0 = k0;
                    int iA00 = k0.A00();
                    int videoLengthMs2 = q2.A00.A0F.getDuration();
                    float unskippableSeconds = videoLengthMs2;
                    float fMin = Math.min(((AbstractC0810Pt) q2.A00).A08.A0H().get(0).A03().A03() * 1000.0f, unskippableSeconds);
                    float total2 = iA00;
                    total = total2 / fMin;
                    if (((AbstractC0810Pt) q2.A00).A0B == null) {
                        videoLengthMs = 6;
                        break;
                    } else {
                        videoLengthMs = 3;
                        break;
                    }
                case 3:
                    q2 = q2;
                    ((AbstractC0810Pt) q2.A00).A0B.setProgress(100.0f * total);
                    if (total < 1.0f) {
                        videoLengthMs = 6;
                        break;
                    } else {
                        videoLengthMs = 4;
                        break;
                    }
                case 4:
                    q2 = q2;
                    if (!q2.A00.A07) {
                        videoLengthMs = 5;
                        break;
                    } else {
                        videoLengthMs = 6;
                        break;
                    }
                case 5:
                    q2 = q2;
                    C0797Pg c0797Pg = ((AbstractC0810Pt) q2.A00).A0B;
                    int videoLengthMs3 = q2.A00.getCloseButtonStyle();
                    c0797Pg.setToolbarActionMode(videoLengthMs3);
                    q2.A00.A07 = true;
                    videoLengthMs = 6;
                    break;
                case 6:
                    q2 = q2;
                    k0 = k0;
                    q2.A00.A01.A0T(k0);
                    videoLengthMs = 7;
                    break;
                case 7:
                    return;
            }
        }
    }
}
