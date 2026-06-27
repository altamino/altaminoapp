package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Os, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0783Os {
    private int A00;

    public C0783Os(C0716Mc c0716Mc) {
        this.A00 = c0716Mc.A00();
    }

    public final boolean A00() {
        boolean z = false;
        char c = this.A00 == 200 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
