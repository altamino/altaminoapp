package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.shield.NoAutoExceptionHandling;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@NoAutoExceptionHandling
/* renamed from: com.facebook.ads.redexgen.X.Le, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0694Le {
    private Object[] A00;

    private C0694Le() {
        this.A00 = new Object[0];
    }

    public C0694Le(long j) {
        this.A00 = new Object[]{new C0693Ld(this, j)};
    }

    public C0694Le(String str) {
        this.A00 = new Object[]{new String(str)};
    }

    public static String A00(long j) {
        return new C0694Le(j).toString();
    }

    public static String A01(String str) {
        return new C0694Le(str).toString();
    }

    public C0694Le A02(C0694Le ret) {
        C0694Le c0694Le = this;
        int i = 0;
        C0694Le c0694Le2 = new C0694Le();
        c0694Le2.A00 = new Object[c0694Le.A00.length + ret.A00.length];
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0694Le = c0694Le;
                    if (i2 >= c0694Le.A00.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0694Le = c0694Le;
                    c0694Le2 = c0694Le2;
                    c0694Le2.A00[i2] = c0694Le.A00[i2];
                    i2++;
                    c = 2;
                    break;
                case 4:
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    ret = ret;
                    if (i >= ret.A00.length) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0694Le = c0694Le;
                    ret = ret;
                    c0694Le2 = c0694Le2;
                    c0694Le2.A00[c0694Le.A00.length + i] = ret.A00[i];
                    i++;
                    c = 5;
                    break;
                case 7:
                    return c0694Le2;
            }
        }
    }

    public C0694Le A03(Object obj) {
        C0694Le c0694Le = this;
        C0694Le c0694Le2 = new C0694Le();
        c0694Le2.A00 = new Object[c0694Le.A00.length + 1];
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0694Le = c0694Le;
                    if (i >= c0694Le.A00.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0694Le = c0694Le;
                    c0694Le2 = c0694Le2;
                    c0694Le2.A00[i] = c0694Le.A00[i];
                    i++;
                    c = 2;
                    break;
                case 4:
                    C0694Le c0694Le3 = c0694Le2;
                    c0694Le3.A00[c0694Le.A00.length] = obj;
                    return c0694Le3;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Object[] objArr = this.A00;
        int length = objArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    sb = sb;
                    objArr = objArr;
                    sb.append(objArr[i].toString());
                    i++;
                    c = 2;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }
}
