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
/* loaded from: assets/assets/audience_network.dex */
public final class I8 {
    private static byte[] A01;
    private static final String A02;
    private static volatile I8 A03;
    private Future<C0737My> A00;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 125);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{112, 77, 73, 65, 64, 4, 75, 81, 80, 4, 83, 69, 77, 80, 77, 74, 67, 4, 66, 75, 86, 4, 71, 69, 71, 76, 65, 4, 87, 65, 86, 82, 65, 86, 10};
    }

    static {
        A04();
        A02 = I8.class.getSimpleName();
    }

    private I8(Context context) {
        this.A00 = Executors.newSingleThreadExecutor().submit(new I4(this, context));
    }

    public static I8 A00(Context context) {
        if (A03 == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (I8.class) {
                if (A03 == null) {
                    A03 = new I8(applicationContext);
                }
                C0737My.A0A(new I3());
            }
        }
        return A03;
    }

    @Nullable
    private C0737My A01() throws ExecutionException, InterruptedException, TimeoutException {
        I8 i8 = this;
        C0737My c0737My = null;
        Throwable e = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        i8 = i8;
                        c0737My = i8.A00.get(1500L, TimeUnit.MILLISECONDS);
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
                    Log.e(A02, A02(0, 35, 89), e);
                    c0737My = null;
                    c = 11;
                    break;
                case 11:
                    return c0737My;
            }
        }
    }

    private void A03() {
        Context contextA00 = IF.A00();
        if (contextA00 != null) {
            this.A00 = Executors.newSingleThreadExecutor().submit(new I7(this, contextA00));
        }
    }

    @Nullable
    public final String A05(String str) {
        String strA0O = null;
        C0737My c0737MyA01 = A01();
        char c = c0737MyA01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA0O = null;
                    c = 3;
                    break;
                case 3:
                    return strA0O;
                case 4:
                    str = str;
                    c0737MyA01 = c0737MyA01;
                    strA0O = c0737MyA01.A0O(str);
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A06(C0605Hr c0605Hr) throws ExecutionException, InterruptedException, TimeoutException {
        I8 i8 = this;
        boolean z = false;
        C0737My c0737MyA01 = i8.A01();
        char c = c0737MyA01 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    i8 = i8;
                    c0605Hr = c0605Hr;
                    c0737MyA01 = c0737MyA01;
                    if (!c0737MyA01.A0P(c0605Hr.A06, new I6(i8, c0605Hr))) {
                        c = 7;
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
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    i8 = i8;
                    i8.A03();
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
