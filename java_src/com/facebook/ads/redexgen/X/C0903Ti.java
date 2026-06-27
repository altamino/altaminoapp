package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ti, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0903Ti implements InterfaceC03718p {
    public final /* synthetic */ C8s A00;
    public final /* synthetic */ C0902Th A01;

    public C0903Ti(C0902Th c0902Th, C8s c8s) {
        this.A01 = c0902Th;
        this.A00 = c8s;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC03718p
    public final boolean A3t() {
        C0903Ti c0903Ti = this;
        boolean zA0E = false;
        char c = c0903Ti.A01.A0C() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0903Ti = c0903Ti;
                    c0903Ti.A01.A0B(c0903Ti.A00);
                    zA0E = true;
                    c = 3;
                    break;
                case 3:
                    return zA0E;
                case 4:
                    c0903Ti = c0903Ti;
                    zA0E = c0903Ti.A01.A0E();
                    c = 3;
                    break;
            }
        }
    }
}
