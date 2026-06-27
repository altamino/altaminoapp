package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IY implements Thread.UncaughtExceptionHandler {
    private static byte[] A05;
    private final Context A00;
    private final IX A01;
    private final InterfaceC0617Id A02;
    private final Thread.UncaughtExceptionHandler A03;
    private final Map<String, String> A04;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A05 = new byte[]{-66, -70, -71, -19, -36, -31, -35, -26, -37, -35, -58, -35, -20, -17, -25, -22, -29, -51, -22, -2, 10, 8, -55, 1, -4, -2, 0, -3, 10, 10, 6, -55, -4, -1, 14, -54, -27, -25, -23, -26, -13, -13, -17, -92, -59, -7, -24, -19, -23, -14, -25, -23, -92, -46, -23, -8, -5, -13, -10, -17, -92, -12, -10, -13, -25, -23, -9, -9, -92, -25, -10, -27, -9, -20, -23, -24, -92, -5, -19, -8, -20, -92, -23, -4, -25, -23, -12, -8, -19, -13, -14, -66, -92, 50, 52, 33, 51, 56, 47, 36, 30, 34, 46, 35, 36, -3, 12, -5, 13, 2, -62, -34, -24, -24, -34, -29, -36, -107, -72, -28, -29, -23, -38, -19, -23, 8, 10, -9, 9, 14, 5, -6};
    }

    public IY(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context, IX ix) {
        this(uncaughtExceptionHandler, context, ix, C0619If.A00());
    }

    private IY(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context, IX ix, InterfaceC0617Id interfaceC0617Id) {
        this.A03 = uncaughtExceptionHandler;
        if (context == null) {
            throw new IllegalArgumentException(A00(110, 15, 32));
        }
        this.A00 = context.getApplicationContext();
        this.A04 = ix.A3i(context);
        this.A01 = ix;
        this.A02 = interfaceC0617Id;
    }

    private static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        IY iy = this;
        char c = iy.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    iy = iy;
                    thread = thread;
                    th = th;
                    iy.A03.uncaughtException(thread, th);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    A02();
                    c = 3;
                    break;
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        IW iw;
        try {
            String stackTraceString = OE.A03(this.A00, th);
            if (!TextUtils.isEmpty(stackTraceString) && stackTraceString.contains(A00(19, 16, 70))) {
                Map<String, String> mapA3I = this.A01.A3I();
                if (mapA3I != null) {
                    iw = new IW(stackTraceString, mapA3I);
                } else {
                    iw = new IW(stackTraceString, this.A04);
                }
                iw.A02();
                Map<String, String> mapA02 = iw.A02();
                mapA02.put(A00(125, 7, 64), A00(105, 5, 69));
                if (C2M.A00() == th) {
                    mapA02.put(A00(93, 12, 106), A00(18, 1, 100));
                } else {
                    mapA02.put(A00(93, 12, 106), A00(17, 1, 72));
                }
                this.A02.A7J(new C0620Ig(O2.A01(), O2.A02(), mapA02), this.A00);
                if (K1.A1M(this.A00)) {
                    K1.A0i(this.A00);
                }
            }
        } catch (Exception unused) {
        }
        if (!K1.A0z(this.A00) || !ProcessUtils.sRemoteProcess) {
            A03(thread, th);
        } else {
            try {
                Log.e(A00(0, 17, 35), A00(35, 58, 47), th);
            } catch (Throwable unused2) {
            }
            A02();
        }
    }
}
