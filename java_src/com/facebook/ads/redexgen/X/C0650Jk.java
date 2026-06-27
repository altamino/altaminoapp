package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0650Jk implements InterfaceC0648Ji {
    public final /* synthetic */ String[] A00;

    public C0650Jk(String[] strArr) {
        this.A00 = strArr;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0648Ji
    public final boolean A2S(String str) {
        boolean z = false;
        String[] strArr = this.A00;
        int length = strArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    strArr = strArr;
                    if (!strArr[i].equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return z;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    z = true;
                    c = 4;
                    break;
            }
        }
    }
}
