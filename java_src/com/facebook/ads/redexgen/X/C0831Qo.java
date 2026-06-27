package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qo, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0831Qo extends AbstractC02052b {
    public final /* synthetic */ C0836Qt A00;

    public C0831Qo(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        C0831Qo c0831Qo = this;
        char c = !c0831Qo.A00.A0V.A07() ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0831Qo = c0831Qo;
                    c0831Qo.A00.A0V.A05();
                    if (!TextUtils.isEmpty(c0831Qo.A00.A0R.A0C())) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0831Qo = c0831Qo;
                    c0831Qo.A00.A0T.A4H(c0831Qo.A00.A0R.A0C(), new SN().A04(c0831Qo.A00.A0f).A03(c0831Qo.A00.A0V).A06(c0831Qo.A00.A0R.A0S()).A05(c0831Qo.A00.A0R.A05()).A07());
                    c = 4;
                    break;
                case 4:
                    c0831Qo = c0831Qo;
                    if (c0831Qo.A00.A04 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0831Qo = c0831Qo;
                    c0831Qo.A00.A04.A2f(J8.A0B.A02());
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }
}
