package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ih, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0621Ih {
    private static AtomicInteger A00;
    private static byte[] A01;
    private static final Object A02;
    private static final String A03;
    private static final Map<String, Integer> A04;
    private static final Set<String> A05;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 100);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A01 = new byte[]{72, 106, 101, 44, 127, 43, 111, 110, 103, 110, 127, 110, 43, 109, 98, 103, 110, 42, 53, 49, 50, 6, 23, 26, 22, 29, 16, 22, 61, 22, 7, 4, 28, 1, 24, 126, 77, 94, 85, 79, 120, 84, 78, 85, 79, 97, 96, 90, 105, 106, 98, 98, 108, 107, 98, 105, 127, 105, 105, 115, 117, 116, 69, 115, 126, 66, 79, 70, 83, 84, 66, 84, 84, 78, 72, 73, 120, 83, 78, 74, 66, 67, 101, 110, 126, 121, 112, 55, 99, 120, 55, 98, 103, 115, 118, 99, 114, 55, 98, 121, 101, 114, 116, 120, 101, 115, 114, 115, 55, 115, 114, 117, 98, 112, 91, 120, 112, 82, 97, 114, 121, 99, 57, 55, 118, 115, 115, 126, 121, 112, 55, 99, 120, 55, 88, 121, 112, 120, 126, 121, 112, 82, 97, 114, 121, 99, 57, 46, 40, 63, 41, 36, 45, 56, 2, 62, 50, 57, 56, 46, 35, 112, 87, 82, 71, 82, 100, 79, 94, 86, 75, 87, 86, 81, 70, 84, 76, 67, 65, 86, 85, 10, 40, 39, 110, 61, 105, 45, 44, 37, 44, 61, 44, 105, 45, 44, 43, 60, 46, 105, 44, 63, 44, 39, 61, 58, 105, 47, 32, 37, 44, 103, 23, 22, 17, 6, 20, 31, 28, 20, 0, 14, 1, 6, 1, 27, 0, 13, 12, 72, 13, 30, 13, 6, 28, 72, 27, 0, 7, 29, 4, 12, 72, 6, 7, 28, 72, 10, 13, 72, 29, 24, 12, 9, 28, 13, 12, 72, 28, 7, 72, 39, 6, 15, 7, 1, 6, 15, 45, 30, 13, 6, 28, 70, 53, 32, 32, 49, 57, 36, 32, 67, 91, 89, 64, 64, 85, 84, 117, 70, 85, 94, 68, 67, 16, 13, 16, 52, 12, 14, 23, 23, 2, 3, 71, 2, 17, 2, 9, 19, 20, 73, 16, 40, 42, 51, 51, 42, 45, 36, 99, 32, 44, 49, 49, 54, 51, 55, 38, 39, 99, 39, 38, 33, 54, 36, 99, 38, 53, 38, 45, 55, 99, 47, 42, 45, 38, 109, 48, 60, 88, 110, 115, 108, 95, 115, 105, 114, 104, 121, 110, 38, 60, 42, 15, 8, 29, 31, 90, 30, 31, 24, 15, 29, 90, 31, 12, 31, 20, 14, 9, 90, 28, 19, 22, 31, 84, 112, 60, 19, 22, 31, 90, 9, 19, 0, 31, 64, 90, 53, 40, 44, 36, 77, 75, 92, 74, 71, 78, 91};
    }

    static {
        A06();
        A03 = C0621Ih.class.getName();
        A02 = new Object();
        A05 = Collections.synchronizedSet(new HashSet());
        A04 = Collections.synchronizedMap(new HashMap());
        A00 = new AtomicInteger();
    }

    private C0621Ih() {
    }

    public static int A00(Context appContext) {
        return appContext.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(171, 10, 119), appContext), 0).getInt(A02(35, 10, 95), 0) - A05.size();
    }

    public static C0620Ig A01(String str, Context context, Map<String, String> map) {
        try {
            C0620Ig c0620Ig = new C0620Ig(O2.A01(), O2.A02(), new IW(str, map, true).A02());
            try {
                A0B(c0620Ig, context);
                return c0620Ig;
            } catch (Exception unused) {
                return c0620Ig;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static JSONArray A03(Context context) {
        return A04(context, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x010b A[Catch: IOException -> 0x0114, all -> 0x011e, TryCatch #2 {IOException -> 0x0114, blocks: (B:61:0x0106, B:63:0x010b, B:65:0x0110), top: B:74:0x0106, outer: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0110 A[Catch: IOException -> 0x0114, all -> 0x011e, TRY_LEAVE, TryCatch #2 {IOException -> 0x0114, blocks: (B:61:0x0106, B:63:0x010b, B:65:0x0110), top: B:74:0x0106, outer: #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONArray A04(android.content.Context r10, int r11) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0621Ih.A04(android.content.Context, int):org.json.JSONArray");
    }

    private static JSONObject A05(C0620Ig c0620Ig) throws JSONException {
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(A02(159, 2, 35), UUID.randomUUID().toString());
        jSONObject2.put(A02(65, 4, 82), c0620Ig.A05());
        jSONObject2.put(A02(399, 4, 37), OO.A02(c0620Ig.A03()));
        jSONObject2.put(A02(69, 12, 67), OO.A02(c0620Ig.A02()));
        jSONObject2.put(A02(55, 10, 126), c0620Ig.A04());
        String strA02 = A02(162, 4, 87);
        char c = c0620Ig.A06() != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0620Ig = c0620Ig;
                    jSONObject = new JSONObject(c0620Ig.A06());
                    c = 3;
                    break;
                case 3:
                    JSONObject jSONObject3 = jSONObject2;
                    jSONObject3.put(strA02, jSONObject);
                    jSONObject3.put(A02(274, 7, 48), String.valueOf(0));
                    return jSONObject3;
                case 4:
                    jSONObject = new JSONObject();
                    c = 3;
                    break;
            }
        }
    }

    public static void A07(Context context) {
        synchronized (A02) {
            File file = new File(context.getFilesDir(), ProcessUtils.getProcessSpecificName(A02(212, 9, 23), context));
            if (file.exists()) {
                file.delete();
            }
            A09(context, 0);
            A05.clear();
            A04.clear();
        }
    }

    private static void A08(Context appContext) {
        SharedPreferences sharedPreferences = appContext.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(171, 10, 119), appContext), 0);
        A09(appContext, sharedPreferences.getInt(A02(35, 10, 95), 0) + 1);
    }

    private static void A09(Context appContext, int i) {
        SharedPreferences.Editor editorEdit = appContext.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A02(171, 10, 119), appContext), 0).edit();
        String strA02 = A02(35, 10, 95);
        if (i < 0) {
            i = 0;
        }
        editorEdit.putInt(strA02, i).apply();
    }

    private static void A0A(Context context, String str) {
        File file = new File(context.getFilesDir(), str);
        char c = file.exists() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    if (!file.delete()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    P7.A0F(new RuntimeException(A02(0, 18, 111)));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public static void A0B(C0620Ig c0620Ig, Context context) {
        if (c0620Ig != null && context != null) {
            synchronized (A02) {
                try {
                    String processSpecificName = ProcessUtils.getProcessSpecificName(A02(212, 9, 23), context);
                    File file = new File(context.getFilesDir(), processSpecificName);
                    if (file.exists()) {
                        int iA0C = K1.A0C(context);
                        long length = file.length();
                        if (iA0C > 0 && length > iA0C) {
                            boolean zDelete = file.delete();
                            A09(context, 0);
                            A05.clear();
                            A04.clear();
                            if (zDelete) {
                                Map<String, String> mapA01 = C0647Jh.A01(context);
                                mapA01.put(A02(403, 7, 90), A02(45, 10, 97));
                                mapA01.put(A02(147, 12, 57), String.valueOf(2401));
                                A01(A02(363, 36, 30) + length + A02(348, 15, 120) + A00.getAndIncrement(), context, mapA01);
                                return;
                            }
                            Log.e(A02(18, 17, 23), A02(181, 31, 45));
                        }
                    }
                    JSONObject jSONObjectA05 = A05(c0620Ig);
                    FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(processSpecificName, 32768);
                    fileOutputStreamOpenFileOutput.write((jSONObjectA05.toString() + A02(161, 1, 30)).getBytes());
                    fileOutputStreamOpenFileOutput.close();
                    A08(context);
                } catch (Exception e) {
                    P7.A0F(e);
                }
            }
        }
    }

    public static void A0C(String str) {
        A04.remove(str);
        A05.add(str);
    }

    public static void A0D(String str) {
        Integer num = A04.get(str);
        char c = num == null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    if (!BuildConfigApi.isDebug()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    Log.e(A03, A02(81, 66, 115));
                    c = 4;
                    break;
                case 4:
                    num = 0;
                    c = 5;
                    break;
                case 5:
                    A04.put(str, Integer.valueOf(num.intValue() + 1));
                    return;
                case 6:
                    str = str;
                    A04.remove(str);
                    c = 5;
                    break;
            }
        }
    }

    private static void A0E(String str, int i) {
        char c = A05.contains(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new RuntimeException(A02(221, 53, 12));
                case 3:
                    str = str;
                    if (!A04.containsKey(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str = str;
                    A04.remove(str);
                    c = 5;
                    break;
                case 5:
                    A04.put(str, Integer.valueOf(i));
                    return;
            }
        }
    }

    public static boolean A0F(Context context) {
        boolean zA0H = false;
        char c = K1.A0l(context) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    zA0H = A0H(context);
                    c = 3;
                    break;
                case 3:
                    return zA0H;
                case 4:
                    context = context;
                    zA0H = A0G(context);
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x014a A[Catch: IOException -> 0x0158, all -> 0x01be, TryCatch #0 {IOException -> 0x0158, blocks: (B:45:0x0145, B:47:0x014a, B:49:0x014f, B:51:0x0154), top: B:94:0x0145, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014f A[Catch: IOException -> 0x0158, all -> 0x01be, TryCatch #0 {IOException -> 0x0158, blocks: (B:45:0x0145, B:47:0x014a, B:49:0x014f, B:51:0x0154), top: B:94:0x0145, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0154 A[Catch: IOException -> 0x0158, all -> 0x01be, TRY_LEAVE, TryCatch #0 {IOException -> 0x0158, blocks: (B:45:0x0145, B:47:0x014a, B:49:0x014f, B:51:0x0154), top: B:94:0x0145, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01a0 A[Catch: IOException -> 0x01ae, all -> 0x01be, TryCatch #4 {IOException -> 0x01ae, blocks: (B:79:0x019b, B:81:0x01a0, B:83:0x01a5, B:85:0x01aa), top: B:96:0x019b, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a5 A[Catch: IOException -> 0x01ae, all -> 0x01be, TryCatch #4 {IOException -> 0x01ae, blocks: (B:79:0x019b, B:81:0x01a0, B:83:0x01a5, B:85:0x01aa), top: B:96:0x019b, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01aa A[Catch: IOException -> 0x01ae, all -> 0x01be, TRY_LEAVE, TryCatch #4 {IOException -> 0x01ae, blocks: (B:79:0x019b, B:81:0x01a0, B:83:0x01a5, B:85:0x01aa), top: B:96:0x019b, outer: #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean A0G(android.content.Context r14) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0621Ih.A0G(android.content.Context):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x018d A[Catch: IOException -> 0x01a5, all -> 0x021c, TryCatch #0 {IOException -> 0x01a5, blocks: (B:47:0x0188, B:49:0x018d, B:51:0x0192, B:53:0x0197, B:55:0x019c, B:57:0x01a1), top: B:106:0x0188, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0192 A[Catch: IOException -> 0x01a5, all -> 0x021c, TryCatch #0 {IOException -> 0x01a5, blocks: (B:47:0x0188, B:49:0x018d, B:51:0x0192, B:53:0x0197, B:55:0x019c, B:57:0x01a1), top: B:106:0x0188, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0197 A[Catch: IOException -> 0x01a5, all -> 0x021c, TryCatch #0 {IOException -> 0x01a5, blocks: (B:47:0x0188, B:49:0x018d, B:51:0x0192, B:53:0x0197, B:55:0x019c, B:57:0x01a1), top: B:106:0x0188, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019c A[Catch: IOException -> 0x01a5, all -> 0x021c, TryCatch #0 {IOException -> 0x01a5, blocks: (B:47:0x0188, B:49:0x018d, B:51:0x0192, B:53:0x0197, B:55:0x019c, B:57:0x01a1), top: B:106:0x0188, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01a1 A[Catch: IOException -> 0x01a5, all -> 0x021c, TRY_LEAVE, TryCatch #0 {IOException -> 0x01a5, blocks: (B:47:0x0188, B:49:0x018d, B:51:0x0192, B:53:0x0197, B:55:0x019c, B:57:0x01a1), top: B:106:0x0188, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f4 A[Catch: IOException -> 0x020c, all -> 0x021c, TryCatch #10 {IOException -> 0x020c, blocks: (B:87:0x01ef, B:89:0x01f4, B:91:0x01f9, B:93:0x01fe, B:95:0x0203, B:97:0x0208), top: B:116:0x01ef, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01f9 A[Catch: IOException -> 0x020c, all -> 0x021c, TryCatch #10 {IOException -> 0x020c, blocks: (B:87:0x01ef, B:89:0x01f4, B:91:0x01f9, B:93:0x01fe, B:95:0x0203, B:97:0x0208), top: B:116:0x01ef, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01fe A[Catch: IOException -> 0x020c, all -> 0x021c, TryCatch #10 {IOException -> 0x020c, blocks: (B:87:0x01ef, B:89:0x01f4, B:91:0x01f9, B:93:0x01fe, B:95:0x0203, B:97:0x0208), top: B:116:0x01ef, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0203 A[Catch: IOException -> 0x020c, all -> 0x021c, TryCatch #10 {IOException -> 0x020c, blocks: (B:87:0x01ef, B:89:0x01f4, B:91:0x01f9, B:93:0x01fe, B:95:0x0203, B:97:0x0208), top: B:116:0x01ef, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0208 A[Catch: IOException -> 0x020c, all -> 0x021c, TRY_LEAVE, TryCatch #10 {IOException -> 0x020c, blocks: (B:87:0x01ef, B:89:0x01f4, B:91:0x01f9, B:93:0x01fe, B:95:0x0203, B:97:0x0208), top: B:116:0x01ef, outer: #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean A0H(android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0621Ih.A0H(android.content.Context):boolean");
    }

    public static boolean A0I(String str) {
        boolean z = false;
        char c = !A05.contains(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!A04.containsKey(str)) {
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
