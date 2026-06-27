package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import java.util.Arrays;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0604Hq implements Callable<Boolean> {
    private static byte[] A02;
    private final C0603Hp A00;
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{10, 14, 2, 4, 6};
    }

    public CallableC0604Hq(C0607Ht c0607Ht, C0603Hp c0603Hp) {
        this.A01 = c0607Ht;
        this.A00 = c0603Hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() {
        CallableC0604Hq callableC0604Hq = this;
        IB ib = null;
        int height = 0;
        int iA00 = 0;
        boolean precacheResult = false;
        C01770z c01770z = new C01770z(callableC0604Hq.A00.A07, callableC0604Hq.A00.A06, callableC0604Hq.A00.A05, A01(0, 5, 23), callableC0604Hq.A00.A01);
        c01770z.A01 = callableC0604Hq.A00.A04;
        c01770z.A00 = callableC0604Hq.A00.A03;
        char c = IA.A09() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    callableC0604Hq = callableC0604Hq;
                    c01770z = c01770z;
                    C0607Ht.A0J.put(callableC0604Hq.A00.A07, c01770z);
                    c = 3;
                    break;
                case 3:
                    callableC0604Hq = callableC0604Hq;
                    if (!callableC0604Hq.A01.A0D) {
                        c = 16;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    callableC0604Hq = callableC0604Hq;
                    c01770z = c01770z;
                    precacheResult = C0607Ht.A03(callableC0604Hq.A01.A02).A6u(c01770z, false).A01();
                    c = 5;
                    break;
                case 5:
                    callableC0604Hq = callableC0604Hq;
                    ib = callableC0604Hq.A00.A00;
                    if (ib == null) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    ib = ib;
                    if (!ib.A02()) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    ib = ib;
                    iA00 = ib.A00();
                    height = ib.A01();
                    if (iA00 <= 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (height <= 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    callableC0604Hq = callableC0604Hq;
                    if (!callableC0604Hq.A01.A0D) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    callableC0604Hq = callableC0604Hq;
                    c01770z = c01770z;
                    c01770z.A00 = iA00;
                    c01770z.A01 = height;
                    callableC0604Hq.A04(callableC0604Hq.A00.A07, c01770z);
                    c = 11;
                    break;
                case 11:
                    return Boolean.valueOf(precacheResult);
                case '\f':
                    callableC0604Hq = callableC0604Hq;
                    callableC0604Hq.A03(iA00, height);
                    c = 11;
                    break;
                case '\r':
                    callableC0604Hq = callableC0604Hq;
                    if (!callableC0604Hq.A01.A0D) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    callableC0604Hq = callableC0604Hq;
                    c01770z = c01770z;
                    callableC0604Hq.A04(callableC0604Hq.A00.A07, c01770z);
                    c = 11;
                    break;
                case 15:
                    callableC0604Hq = callableC0604Hq;
                    callableC0604Hq.A03(callableC0604Hq.A00.A03, callableC0604Hq.A00.A04);
                    c = 11;
                    break;
                case 16:
                    callableC0604Hq = callableC0604Hq;
                    if (callableC0604Hq.A01.A06.A0C(callableC0604Hq.A00) == null) {
                        c = 5;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    precacheResult = true;
                    c = 5;
                    break;
            }
        }
    }

    private void A03(int i, int i2) {
        Bitmap bitmapA0D = this.A01.A06.A0D(this.A00.A07, i, i2, this.A00.A01);
        if (bitmapA0D == null) {
            return;
        }
        this.A01.A0A.put(this.A00.A07, bitmapA0D);
    }

    private void A04(String str, C01770z c01770z) {
        Bitmap bitmapA00 = C0607Ht.A03(this.A01.A02).A6u(c01770z, true).A00();
        if (bitmapA00 == null) {
            return;
        }
        this.A01.A0A.put(str, bitmapA00);
    }
}
