package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.narvii.util.ws.WsMessage;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0642Jc {
    private static byte[] A00;
    private static final String A01;
    private static final AtomicBoolean A02;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A00 = new byte[]{85, 57, 14, 18, 23, 31, 56, 20, 21, 29, 18, 28, 5, 18, 14, 11, 3, 24, 19, 30, 23, 2, 21, 23, 28, 23, 0, 27, 17, 4, 30, 50, 8, 0, 24, 120, 121, 126, 105, 123, 67, 106, 125, 112, 105, 121, 52, 24, 2, 27, 19, 87, 25, 24, 3, 87, 22, 19, 19, 87, 7, 22, 5, 22, 26, 18, 3, 18, 5, 77, 123, 115, 115, 123, 112, 121, 67, 111, 120, 119, 43, 9, 2, 21, 1, 3, 24, 5, 3, 2, 27, 122, 20, 69, 88, 92, 84, 75, 94, 95, 84, 110, 94, 87, 87, 66, 84, 69, 41, 56, 56, 23, 59, 60, 41, 58, 60, 45, 44, 23, 58, 45, 41, 59, 39, 38, 7, 29, 49, 10, 11, 12, 27, 9, 9, 15, 12, 2, 11, 112, 107, 110, 107, 106, 114, 107, 26, 53, 63, 41, 52, 50, 63, 123, 8, 31, 16, 123, 57, 46, 50, 55, 47, 123, 61, 52, 41, 123, 35, 99, 109, 33, 48, 43, 31, 51, 41, 58, 37, 67, 84, 72, 77, 69, 126, 85, 88, 81, 68, 25, 49, 41, 48, 61, 40, 51, 46, 120, 121, 126, 105, 123};
    }

    static {
        A06();
        A01 = C0642Jc.class.getSimpleName();
        A02 = new AtomicBoolean();
    }

    private C0642Jc() {
    }

    private static int A00() {
        return TimeZone.getDefault().getRawOffset();
    }

    private static long A01(Context context) {
        try {
            return new File(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).publicSourceDir).length();
        } catch (Exception e) {
            if (A02.compareAndSet(false, true)) {
                P7.A07(context, A02(22, 7, 68), P8.A0r, new PA(e));
            }
            return -1L;
        }
    }

    public static String A03(Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        A07(jSONObject, A02(29, 6, 91), String.valueOf(A08()));
        A07(jSONObject, A02(171, 8, 118), String.valueOf(A01(context)));
        A07(jSONObject, A02(93, 15, 7), String.valueOf(A00()));
        A07(jSONObject, A02(108, 18, 126), String.valueOf(NN.A01(context)));
        A07(jSONObject, A02(126, 13, 88), String.valueOf(A09(context)));
        A07(jSONObject, A02(35, 11, 42), A05(context));
        A07(jSONObject, A02(179, 10, 23), A04(context));
        return jSONObject.toString();
    }

    private static String A04(Context context) throws NoSuchFieldException, ClassNotFoundException {
        try {
            Class buildConfigClass = Class.forName(context.getPackageName() + A02(0, 12, 77));
            Field buildType = buildConfigClass.getDeclaredField(A02(12, 10, 113));
            return (String) buildType.get(null);
        } catch (Exception unused) {
            return A02(90, 3, 99);
        }
    }

    private static String A05(Context context) throws NoSuchFieldException, ClassNotFoundException {
        try {
            Class buildConfigClass = Class.forName(context.getPackageName() + A02(0, 12, 77));
            Field buildType = buildConfigClass.getDeclaredField(A02(197, 5, 10));
            return String.valueOf(buildType.getBoolean(null));
        } catch (Exception unused) {
            return A02(90, 3, 99);
        }
    }

    private static void A07(JSONObject jSONObject, String str, String str2) throws JSONException {
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e) {
            if (BuildConfigApi.isDebug()) {
                Log.e(A01, A02(46, 24, 65), e);
            }
        }
    }

    private static boolean A08() {
        boolean z = false;
        char c = !Build.FINGERPRINT.contains(A02(22, 7, 68)) ? (char) 2 : '\n';
        while (true) {
            switch (c) {
                case 2:
                    if (!Build.FINGERPRINT.startsWith(A02(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 7, 51))) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 3:
                    if (!Build.MODEL.contains(A02(70, 10, 42))) {
                        c = 4;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 4:
                    if (!Build.MODEL.contains(A02(PsExtractor.PRIVATE_STREAM_1, 8, 106))) {
                        c = 5;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 5:
                    if (!Build.MODEL.contains(A02(146, 25, 109))) {
                        c = 6;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 6:
                    if (!Build.MANUFACTURER.contains(A02(80, 10, 90))) {
                        c = 7;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case 7:
                    if (!Build.BRAND.startsWith(A02(22, 7, 68))) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!Build.DEVICE.startsWith(A02(22, 7, 68))) {
                        c = '\t';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\t':
                    if (!A02(70, 10, 42).equals(Build.PRODUCT)) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = true;
                    c = 11;
                    break;
                case 11:
                    return z;
                case '\f':
                    z = false;
                    c = 11;
                    break;
            }
        }
    }

    private static boolean A09(Context context) {
        boolean z = false;
        char c = (context.getApplicationInfo().flags & 2) != 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
