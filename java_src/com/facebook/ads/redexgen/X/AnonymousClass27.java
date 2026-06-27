package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"CatchGeneralException"})
/* renamed from: com.facebook.ads.redexgen.X.27, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AnonymousClass27 implements Runnable {
    private static byte[] A00;
    private static final AtomicBoolean A01;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 97);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-3, 12, -5, 13, 2, -7, 13, 2, 3, -1, 6, -2};
    }

    public abstract void A03();

    static {
        A01();
        A01 = new AtomicBoolean();
    }

    public static void A02(boolean z) {
        A01.set(z);
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        AnonymousClass27 anonymousClass27 = this;
        Throwable th = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        anonymousClass27 = anonymousClass27;
                        anonymousClass27.A03();
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        if (!A01.get()) {
                            c = 6;
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    }
                case 4:
                    P7.A0E(A00(0, 12, 57), 3301, new PA(th));
                    return;
                case 6:
                    throw th;
            }
        }
    }
}
