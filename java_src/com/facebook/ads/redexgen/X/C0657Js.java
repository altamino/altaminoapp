package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.util.ws.WsMessage;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Js, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0657Js {
    public static String A00;
    private static byte[] A01;
    private static final AtomicBoolean A02;
    private static final AtomicReference<String> A03;

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A01 = new byte[]{26, 22, 22, 42, 3, 41, 37, 36, 49, 18, 36, 88, 71, 76, 72, 81, 70, 72, 49, 72, 87, 90, 82, 85, 78, 41, 82, 85, 36, 81, 71, 85, 82, 76, 71, 30, -1, -5, 12, 15, -24, 37, 30, 52, 35, 42, 33, 33, -16, -4, -4, -8, -74, -23, -17, -19, -10, -4, -32, -34, -48, -35, -54, -52, -46, -48, -39, -33, -64, -68, -69, -48, -87, 23, 21, 30, 21, 34, 25, 19, -41, -16, -19, -16, -15, -7, -16, -21, -25, -26, -25, -44, -7, 52, 78, 60, 57, 54, 77, 64, 60, 78, -45, -33, -35, -98, -42, -47, -45, -43, -46, -33, -33, -37, -98, -47, -44, -29, -98, -39, -34, -28, -43, -30, -34, -47, -36, -98, -27, -47, 3, 48, 38, 52, 49, 43, 38, -72, -76, -66, -75, -95, 20, 18, 4, 17, -2, 0, 6, 4, 13, 19, -2, 11, 0, 18, 19, -2, 17, 4, 5, 17, 4, 18, 7, -83, 43, 39, 56, 51, 20, 13, -38, -42, -22, -25, -61};
    }

    static {
        A08();
        A00 = A00(80, 7, 28);
        A02 = new AtomicBoolean();
        A03 = new AtomicReference<>();
    }

    private C0657Js() {
    }

    @VisibleForTesting
    @TargetApi(17)
    private static String A01(Context context) {
        return WebSettings.getDefaultUserAgent(context);
    }

    @SuppressLint({"CatchGeneralException"})
    @Nullable
    private static String A02(Context context) {
        String str = null;
        FutureTask futureTask = new FutureTask(new CallableC0656Jr(context));
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= 3) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    futureTask = futureTask;
                    OR.A00(futureTask);
                    c = 4;
                    break;
                case 4:
                    try {
                        futureTask = futureTask;
                        str = (String) futureTask.get();
                        c = '\t';
                        break;
                    } catch (Throwable t) {
                        A09(context, t);
                        SystemClock.sleep(500L);
                        i++;
                        c = 2;
                        break;
                    }
                case '\b':
                    str = null;
                    c = '\t';
                    break;
                case '\t':
                    return str;
            }
        }
    }

    public static String A03(Context context, JF jf) {
        String strA06 = jf.A06();
        char c = TextUtils.isEmpty(strA06) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (!A02.getAndSet(true)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    context = context;
                    P7.A07(context, A00(73, 7, 74), P8.A18, new PA(A00(41, 7, 111)));
                    c = 4;
                    break;
                case 4:
                    return strA06;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    @Nullable
    private static String A04(Context context, boolean z) {
        String property = null;
        long jA0Y = 0;
        String strA02 = null;
        long j = 0;
        String string = null;
        char c = context == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    property = A00;
                    c = 3;
                    break;
                case 3:
                    return property;
                case 4:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    property = System.getProperty(A00(48, 10, 34));
                    c = 3;
                    break;
                case 6:
                    property = A03.get();
                    if (property != null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    context = context;
                    jA0Y = K1.A0Y(context);
                    if (jA0Y <= 0) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    context = context;
                    SharedPreferences sharedPreferences = context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(102, 28, 10), context), 0);
                    string = sharedPreferences.getString(A00(58, 10, 5), null);
                    j = sharedPreferences.getLong(A00(ScriptIntrinsicBLAS.RIGHT, 23, 57), 0L);
                    if (!TextUtils.isEmpty(string)) {
                        c = '\t';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\t':
                    if (System.currentTimeMillis() - j >= jA0Y) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    string = string;
                    A03.set(string);
                    property = string;
                    c = 3;
                    break;
                case 11:
                    strA02 = null;
                    if (Build.VERSION.SDK_INT >= 17) {
                        try {
                            strA02 = A01(context);
                            A03.set(strA02);
                        } catch (Throwable th) {
                            A09(context, th);
                        }
                    }
                    if (strA02 != null) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    context = context;
                    strA02 = A02(context);
                    c = 18;
                    break;
                case 18:
                    if (strA02 != null) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    property = A00;
                    c = 3;
                    break;
                case 20:
                    if (jA0Y <= 0) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    context = context;
                    SharedPreferences sharedPreferences2 = context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(102, 28, 10), context), 0);
                    sharedPreferences2.edit().putString(A00(58, 10, 5), A03.get()).apply();
                    sharedPreferences2.edit().putLong(A00(ScriptIntrinsicBLAS.RIGHT, 23, 57), System.currentTimeMillis()).apply();
                    c = 22;
                    break;
                case 22:
                    property = strA02;
                    c = 3;
                    break;
            }
        }
    }

    private static String A05(JF jf, Context context) {
        String strA00 = null;
        char c = K1.A1a(context) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jf = jf;
                    context = context;
                    strA00 = A00(87, 5, 63) + A03(context, jf) + A00(165, 1, 12) + A00(68, 5, 20) + jf.A05() + A00(165, 1, 12) + A00(0, 5, 110) + jf.A03() + A00(165, 1, 12);
                    c = 3;
                    break;
                case 3:
                    return strA00;
                case 4:
                    strA00 = A00(130, 0, 120);
                    c = 3;
                    break;
            }
        }
    }

    public static String A06(JF jf, Context context, boolean z) {
        return A04(context, z) + A00(92, 2, 115) + A00(5, 31, 125) + A00(166, 5, 127) + A00(130, 7, 92) + A00(165, 1, 12) + A00(36, 5, 83) + JF.A02 + A00(165, 1, 12) + A05(jf, context) + A00(TsExtractor.TS_STREAM_TYPE_AC4, 5, 46) + BuildConfigApi.getVersionName(context) + A00(165, 1, 12) + A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 5, 12) + Locale.getDefault().toString() + A00(171, 1, 74);
    }

    private static void A09(Context context, Throwable th) {
        P7.A07(context, A00(94, 8, 113), P8.A1l, new PA(th));
    }
}
