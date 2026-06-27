package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class O8 implements O7 {
    public int A00;
    public final O7 A01;
    public final O7 A02;

    public O8(O7 o7, int i, O7 o72) {
        this.A01 = o7;
        this.A00 = i;
        this.A02 = o72;
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void A6c(String str) {
        O8 o8 = this;
        char c = o8.A00 > 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    o8 = o8;
                    str = str;
                    o8.A01.A6c(str);
                    o8.A01.flush();
                    o8.A00--;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    o8 = o8;
                    str = str;
                    o8.A02.A6c(str);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void flush() {
        this.A02.flush();
    }
}
