package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
public final class I0 {
    private static byte[] A01;
    private static final String A02;
    private static volatile I0 A03;
    private final Future<C0613Hz> A00;

    private static String A05(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A01 = new byte[]{17, 44, 40, 32, 33, 101, 42, 48, 49, 101, 50, 36, 44, 49, 44, 43, 34, 101, 35, 42, 55, 101, 38, 36, 38, 45, 32, 101, 54, 32, 55, 51, 32, 55, 107, 37, 42, 47, 38, 121, 108, 108, 108, 34, 45, 39, 49, 44, 42, 39, 28, 34, 48, 48, 38, 55, 108, 54, 20, 27, 82, 1, 85, 7, 16, 20, 17, 85, 20, 6, 6, 16, 1, 6, 91};
    }

    static {
        A06();
        A02 = I0.class.getSimpleName();
    }

    @VisibleForTesting
    private I0(Context context, int i) {
        this.A00 = Executors.newSingleThreadExecutor().submit(new CallableC0612Hy(this, context, i));
    }

    @Nullable
    private C0613Hz A00() throws ExecutionException, InterruptedException, TimeoutException {
        I0 i0 = this;
        C0613Hz c0613Hz = null;
        Throwable e = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        i0 = i0;
                        c0613Hz = i0.A00.get(500L, TimeUnit.MILLISECONDS);
                        c = '\r';
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
                    if (!BuildConfigApi.isDebug()) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    e = e;
                    Log.e(A02, A05(0, 35, 67), e);
                    c = '\f';
                    break;
                case '\f':
                    c0613Hz = null;
                    c = '\r';
                    break;
                case '\r':
                    return c0613Hz;
            }
        }
    }

    public static I0 A01(Context context) {
        if (A03 == null) {
            synchronized (I0.class) {
                if (A03 == null) {
                    A03 = new I0(context.getApplicationContext(), -1);
                }
            }
        }
        return A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InterfaceC0721Mi A02(Context context, String str) throws IOException, C0724Ml {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str.substring(A05(35, 22, 69).length()));
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr, 0, bArr.length);
                if (i != -1) {
                    buffer.write(bArr, 0, i);
                } else {
                    return new C0722Mj(buffer.toByteArray());
                }
            }
        } catch (IOException e) {
            throw new C0724Ml(A05(57, 18, 115), e);
        }
    }

    @Nullable
    public final String A07(String str) {
        String strA01 = null;
        char c = A00() == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    strA01 = null;
                    c = 3;
                    break;
                case 3:
                    return strA01;
                case 4:
                    str = str;
                    strA01 = C0613Hz.A01(str);
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A08(C0605Hr c0605Hr) throws ExecutionException, InterruptedException, TimeoutException {
        boolean z = false;
        C0613Hz c0613HzA00 = A00();
        char c = c0613HzA00 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0605Hr = c0605Hr;
                    c0613HzA00 = c0613HzA00;
                    if (!c0613HzA00.A07(c0605Hr)) {
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
