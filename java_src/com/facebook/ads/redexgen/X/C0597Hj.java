package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0597Hj extends AnonymousClass27 {
    public final /* synthetic */ C0598Hk A00;
    public final /* synthetic */ AtomicBoolean A01;

    public C0597Hj(C0598Hk c0598Hk, AtomicBoolean atomicBoolean) {
        this.A00 = c0598Hk;
        this.A01 = atomicBoolean;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        C0597Hj c0597Hj = this;
        char c = c0597Hj.A00.A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0597Hj = c0597Hj;
                    if (!c0597Hj.A01.get()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0597Hj = c0597Hj;
                    c0597Hj.A00.A02.A0I(KW.A0I);
                    IA.A03(c0597Hj.A00.A01, true, c0597Hj.A00.A02.A00);
                    c0597Hj.A00.A02.A0S();
                    c0597Hj.A00.A00.A57();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c0597Hj = c0597Hj;
                    c0597Hj.A00.A02.A0I(KW.A0H);
                    IA.A03(c0597Hj.A00.A01, false, c0597Hj.A00.A02.A00);
                    c0597Hj.A00.A02.A0T();
                    c0597Hj.A00.A00.A50();
                    c = 4;
                    break;
            }
        }
    }
}
