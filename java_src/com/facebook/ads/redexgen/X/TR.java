package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TR extends AbstractC02052b {
    public final /* synthetic */ KM A00;
    public final /* synthetic */ OP A01;
    public final /* synthetic */ UB A02;
    public final /* synthetic */ SQ A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ Map A05;

    public TR(SQ sq, String str, UB ub, KM km, Map map, OP op) {
        this.A03 = sq;
        this.A04 = str;
        this.A02 = ub;
        this.A00 = km;
        this.A05 = map;
        this.A01 = op;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        TR tr = this;
        char c = !tr.A03.A01.A0X() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    tr = tr;
                    if (!TextUtils.isEmpty(tr.A04)) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    tr = tr;
                    if (!tr.A03.A07.get(tr.A02.A02())) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    tr = tr;
                    tr.A00.A4H(tr.A04, new SN(tr.A05).A04(tr.A03.A02).A03(tr.A01).A07());
                    tr.A03.A07.put(tr.A02.A02(), true);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }
}
