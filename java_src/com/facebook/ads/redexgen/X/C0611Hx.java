package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0611Hx {
    private static byte[] A01;
    private static final String A02;
    private static volatile C0611Hx A03;
    private final Future<C0610Hw> A00;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{-12, 9, 13, 5, 4, -64, 15, 21, 20, -64, 23, 1, 9, 20, 9, 14, 7, -64, 6, 15, 18, -64, 3, 1, 3, 8, 5, -64, 19, 5, 18, 22, 5, 18, -50};
    }

    static {
        A04();
        A02 = C0611Hx.class.getSimpleName();
    }

    private C0611Hx(Context context) {
        this.A00 = Executors.newSingleThreadExecutor().submit(new CallableC0608Hu(this, context));
    }

    @Nullable
    private C0610Hw A00() throws ExecutionException, InterruptedException, TimeoutException {
        C0611Hx c0611Hx = this;
        C0610Hw c0610Hw = null;
        Throwable e = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        c0611Hx = c0611Hx;
                        c0610Hw = c0611Hx.A00.get(500L, TimeUnit.MILLISECONDS);
                        c = 11;
                        break;
                    } catch (InterruptedException e2) {
                        e = e2;
                        c = '\n';
                        break;
                    } catch (ExecutionException e3) {
                        e = e3;
                        c = '\n';
                        break;
                    } catch (TimeoutException e4) {
                        e = e4;
                        c = '\n';
                        break;
                    }
                case '\n':
                    e = e;
                    Log.e(A02, A03(0, 35, 90), e);
                    c0610Hw = null;
                    c = 11;
                    break;
                case 11:
                    return c0610Hw;
            }
        }
    }

    public static C0611Hx A01(Context context) {
        if (A03 == null) {
            synchronized (C0611Hx.class) {
                if (A03 == null) {
                    A03 = new C0611Hx(context.getApplicationContext());
                }
            }
        }
        return A03;
    }

    @Nullable
    public final String A05(String str) {
        String strA04 = null;
        C0610Hw c0610HwA00 = A00();
        char c = c0610HwA00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA04 = null;
                    c = 3;
                    break;
                case 3:
                    return strA04;
                case 4:
                    str = str;
                    c0610HwA00 = c0610HwA00;
                    strA04 = c0610HwA00.A04(str);
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A06(C0605Hr c0605Hr) throws ExecutionException, InterruptedException, TimeoutException {
        boolean z = false;
        C0610Hw c0610HwA00 = A00();
        char c = c0610HwA00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0605Hr = c0605Hr;
                    c0610HwA00 = c0610HwA00;
                    if (!c0610HwA00.A05(c0605Hr)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
