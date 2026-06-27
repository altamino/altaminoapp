package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NV {
    private static byte[] A00;

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{36, 44, 96, 109, 119, 116, 104, 101, 125, 97, 96, 36, 98, 107, 118, 36, 112, 97, 119, 112, 36, 101, 96, 119, 36, 107, 106, 104, 125, 45, 27, 20, 30, 8, 21, 19, 30, 84, 21, 9, 84, 59, 9, 3, 20, 25, 46, 27, 9, 17};
    }

    private NV() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.os.AsyncTask<P, PR, R>] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v4, types: [android.os.AsyncTask] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.os.AsyncTask] */
    /* JADX WARN: Type inference failed for: r4v0, types: [P[]] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object[]] */
    public static <P, PR, R> AsyncTask<P, PR, R> A00(Executor executor, AsyncTask<P, PR, R> asyncTask, P... pArr) {
        char c = Build.VERSION.SDK_INT >= 11 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    executor = executor;
                    asyncTask = (AsyncTask) asyncTask;
                    pArr = (Object[]) pArr;
                    asyncTask.executeOnExecutor(executor, pArr);
                    c = 3;
                    break;
                case 3:
                    return (AsyncTask) asyncTask;
                case 4:
                    asyncTask = (AsyncTask<P, PR, R>) ((AsyncTask) asyncTask);
                    pArr = (P[]) ((Object[]) pArr);
                    asyncTask.execute(pArr);
                    c = 3;
                    break;
            }
        }
    }

    public static void A02() {
        try {
            Class.forName(A01(30, 20, 48));
        } catch (Throwable unused) {
        }
    }

    public static void A04(Context context, String str) {
        if (AdInternalSettings.isTestMode(context)) {
            String str2 = str + A01(0, 30, 78);
        }
    }
}
