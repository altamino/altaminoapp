package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.logging.AdEventManagerImpl;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class KO extends IH<String> {
    public final /* synthetic */ KH A00;
    public final /* synthetic */ AdEventManagerImpl A01;

    public KO(AdEventManagerImpl adEventManagerImpl, KH kh) {
        this.A01 = adEventManagerImpl;
        this.A00 = kh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.IH
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A02(String str) {
        KO ko = this;
        super.A02(str);
        char c = ko.A00.A06() == KS.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ko = ko;
                    str = str;
                    FP.A08(ko.A01.A01, ko.A00.A06().toString(), str);
                    c = 3;
                    break;
                case 3:
                    ko = ko;
                    if (!ko.A00.A0B()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ko = ko;
                    ko.A01.A03.A0C();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    ko = ko;
                    ko.A01.A03.A0B();
                    c = 5;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.IH
    public final void A01(int i, String str) {
        super.A01(i, str);
    }
}
