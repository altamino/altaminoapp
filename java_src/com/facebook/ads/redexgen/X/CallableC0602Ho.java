package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ho, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0602Ho implements Callable<Boolean> {
    private static byte[] A02;
    private final C0605Hr A00;
    public final /* synthetic */ C0607Ht A01;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{-44, -56, -39, -46, -36, -41, 30, 17, 12, 13, 23};
    }

    public CallableC0602Ho(C0607Ht c0607Ht, C0605Hr c0605Hr) {
        this.A01 = c0607Ht;
        this.A00 = c0605Hr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() {
        CallableC0602Ho callableC0602Ho = this;
        String strA01 = null;
        Boolean boolValueOf = null;
        C01770z c01770z = null;
        boolean z = false;
        char c = callableC0602Ho.A01.A0C ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    callableC0602Ho = callableC0602Ho;
                    if (!callableC0602Ho.A00.A03) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strA01 = A01(0, 6, 55);
                    c = 4;
                    break;
                case 4:
                    callableC0602Ho = callableC0602Ho;
                    strA01 = strA01;
                    c01770z = new C01770z(callableC0602Ho.A00.A06, callableC0602Ho.A00.A05, callableC0602Ho.A00.A04, strA01, callableC0602Ho.A00.A01);
                    c01770z.A04 = callableC0602Ho.A00.A02;
                    c01770z.A02 = callableC0602Ho.A00.A00;
                    c01770z.A05 = callableC0602Ho.A00.A03;
                    if (!IA.A09()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    callableC0602Ho = callableC0602Ho;
                    c01770z = c01770z;
                    C0607Ht.A0J.put(callableC0602Ho.A00.A06, c01770z);
                    c = 6;
                    break;
                case 6:
                    callableC0602Ho = callableC0602Ho;
                    c01770z = c01770z;
                    if (C0607Ht.A03(callableC0602Ho.A01.A02).A6v(c01770z) == null) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = true;
                    c = '\b';
                    break;
                case '\b':
                    boolValueOf = Boolean.valueOf(z);
                    c = '\t';
                    break;
                case '\t':
                    return boolValueOf;
                case '\n':
                    z = false;
                    c = '\b';
                    break;
                case 11:
                    strA01 = A01(6, 5, 120);
                    c = 4;
                    break;
                case '\f':
                    callableC0602Ho = callableC0602Ho;
                    if (!callableC0602Ho.A01.A0F) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    callableC0602Ho = callableC0602Ho;
                    boolValueOf = Boolean.valueOf(callableC0602Ho.A01.A05.A08(callableC0602Ho.A00));
                    c = '\t';
                    break;
                case 14:
                    callableC0602Ho = callableC0602Ho;
                    boolValueOf = Boolean.valueOf(callableC0602Ho.A01.A04.A06(callableC0602Ho.A00));
                    c = '\t';
                    break;
            }
        }
    }
}
