package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.internal.adreportingconfig.AdReportingReason;
import com.facebook.ads.internal.util.process.ProcessUtils;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4j, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02654j {
    private static C02654j A01;
    private static byte[] A02;
    private static final String[] A03;
    private final SharedPreferences A00;

    private static String A05(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 92);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0N() {
        A02 = new byte[]{-14, -2, -4, -67, -11, -16, -14, -12, -15, -2, -2, -6, -67, -16, -13, 2, -67, -48, -45, -18, -31, -44, -33, -34, -31, -29, -40, -35, -42, -18, -46, -34, -35, -43, -40, -42, 45, 48, 53, 48, 58, 47, 44, 43, 38, 57, 44, 55, 54, 57, 59, 38, 40, 43, -34, -1, -6, -5, -74, -41, -6, -54, -51, -46, -51, -41, -52, -55, -56, -61, -56, -55, -41, -57, -42, -51, -44, -40, -51, -45, -46, -15, -27, -14, -27, -21, -23, -29, -27, -24, -29, -12, -10, -23, -22, -23, -10, -23, -14, -25, -23, -9, -24, -37, -26, -27, -24, -22, -43, -41, -38, -43, -36, -27, -30, -30, -27, -19, -43, -21, -26, -43, -34, -37, -41, -38, -33, -28, -35, 59, 60, 55, 56, 50, 52, 55, 50, 57, 66, 63, 63, 66, 74, 50, 72, 67, 50, 59, 56, 52, 55, 60, 65, 58, 16, 51, -17, 65, 52, 63, 62, 65, 67, 52, 51, -3, -39, -20, -9, -10, -7, -5, -89, -56, -21, 8, -3, 15, 16, -5, 17, 12, 0, -3, 16, 1, 0, -5, 16, 5, 9, 1, 15, 16, -3, 9, 12, 7, 40, -39, 43, 30, 41, 40, 43, 45, -39, 26, 29, -39, 40, 41, 45, 34, 40, 39, 44, 35, 36, 40, 29, 35, 34, 19, 40, 25, 44, 40, -39, -52, -41, -42, -39, -37, -58, -56, -53, -58, -53, -52, -38, -54, -39, -48, -41, -37, -48, -42, -43, -6, 12, 12, -57, 13, 12, 30, 12, 25, -57, 8, 11, 26, -57, 19, 16, 18, 12, -57, 27, 15, 16, 26, 33, 36, 31, 35, 40, 47, 41, 35, 37, 51, 31, 53, 50, 41, -12, 5, 22, -67, -2, 10, -67, -26, -67, 16, 2, 2, 6, 11, 4, -67, 17, 5, 6, 16, -36, -5, 24, 31, 35, -45, 40, 38, -45, 40, 33, 23, 24, 37, 38, 39, 20, 33, 23, -45, 42, 27, 20, 39, -45, 28, 38, -45, 27, 20, 35, 35, 24, 33, 28, 33, 26, -31, -45, 10, 27, 44, -45, 23, 34, 33, -38, 39, -45, 44, 34, 40, -45, 42, 20, 33, 39, -45, 39, 34, -45, 38, 24, 24, -45, 39, 27, 28, 38, -14, -90, -45, -25, -8, -15, -90, -25, -22, -90, -25, -7, -90, -11, -20, -20, -21, -12, -7, -17, -4, -21, -90, -11, -8, -90, -17, -12, -25, -10, -10, -8, -11, -10, -8, -17, -25, -6, -21, -41, -38, -33, -38, -28, -39, -42, -43, -48, -39, -38, -43, -42, -48, -46, -43, 33, 55, 61, 58, -24, 59, 61, 42, 53, 49, 59, 59, 49, 55, 54, -24, 49, 59, -24, 54, 55, 63, -24, 42, 45, 49, 54, 47, -24, 58, 45, 62, 49, 45, 63, 45, 44, -10, -24, -19, -18, -15, -23, -9, -22, -13, -28, -12, -11, -7, -18, -12, -13, -8, -44, -24, -11, -24, -18, -20, -89, -24, -21, -89, -9, -7, -20, -19, -20, -7, -20, -11, -22, -20, -6, -21, 12, -67, 5, 6, 1, 2, -67, -2, 1, -67, 12, 13, 17, 6, 12, 11, 16, -18, -17, -22, -21, -27, -25, -22, -72, -43, -36, -32, -112, -27, -29, -112, -27, -34, -44, -43, -30, -29, -28, -47, -34, -44, -112, -25, -40, -47, -28, -112, -39, -29, -112, -40, -47, -32, -32, -43, -34, -39, -34, -41, -98, -112, -57, -40, -23, -112, -39, -29, -112, -28, -40, -39, -29, -112, -39, -34, -47, -32, -32, -30, -33, -32, -30, -39, -47, -28, -43, -81, 70, 71, 75, 64, 70, 69, 54, 77, 56, 67, 76, 60, -72, -70, 51, 52, 47, 48, 42, 44, 47, 42, 47, 48, 62, 46, 61, 52, 59, 63, 52, 58, 57, -52, -17, -85, -13, -12, -17, -17, -16, -7, -71, -20, -19, -24, -23, -29, -27, -24, -29, -13, -12, -8, -19, -13, -14, -9, -31, -44, -33, -34, -31, -29, -40, -35, -42, -49, -62, -51, -52, -49, -47, -68, -66, -63, -5, -17, -4, -17, -11, -13, -19, -17, -14, -19, -2, 0, -13, -12, -13, 0, -13, -4, -15, -13, 1, -19, 3, 0, -9, 14, 19, 20, 23, 15, 29, 16, 25, 10, 19, 16, 12, 15, 20, 25, 18, -18, -31, -20, -21, -18, -16, -37, -35, -32, -37, -21, -20, -16, -27, -21, -22, -17, 10, -5, 12, -14, -12, 0, -14, -4, -14, 6, -8, -8, -4, 1, -6, -14, 7, -5, -4, 6, -20, -13, -22, -22};
    }

    static {
        A0N();
        A03 = new String[]{A05(523, 7, 42), A05(608, 19, 111), A05(129, 25, 119), A05(637, 15, 40), A05(661, 9, 1), A05(228, 21, 11), A05(102, 27, 26), A05(Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PAUSED, 17, 32), A05(81, 21, 40), A05(414, 16, 21), A05(36, 18, 107), A05(61, 20, 8), A05(728, 20, 55), A05(272, 14, 100), A05(670, 25, 50)};
    }

    private C02654j(Context context) {
        this.A00 = context.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A05(0, 36, 51), context), 0);
    }

    public static long A00(Context context) {
        return A02(context).A01(A05(175, 22, 64), 0L);
    }

    private long A01(String str, long j) {
        return this.A00.getLong(str, j);
    }

    private static C02654j A02(Context context) {
        if (A01 == null) {
            synchronized (C02654j.class) {
                if (A01 == null) {
                    A01 = new C02654j(context);
                }
            }
        }
        return A01;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0049 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C02684m A03(android.content.Context r7) {
        /*
            r0 = 0
            r0 = 0
            r5 = 0
            r0 = 0
            com.facebook.ads.redexgen.X.4m r4 = new com.facebook.ads.redexgen.X.4m
            java.lang.String r0 = A0H(r7)
            r4.<init>(r0)
            r0 = 2
        Le:
            switch(r0) {
                case 2: goto L1e;
                case 11: goto L12;
                case 15: goto L6e;
                default: goto L11;
            }
        L11:
            goto Le
        L12:
            java.util.Iterator r5 = (java.util.Iterator) r5     // Catch: org.json.JSONException -> L4f
            java.lang.Object r0 = r5.next()     // Catch: org.json.JSONException -> L4f
            com.facebook.ads.redexgen.X.4m r0 = (com.facebook.ads.redexgen.X.C02684m) r0     // Catch: org.json.JSONException -> L4f
            r4.A06(r0)     // Catch: org.json.JSONException -> L4f
            goto L43
        L1e:
            android.content.Context r7 = (android.content.Context) r7     // Catch: org.json.JSONException -> L4f
            com.facebook.ads.redexgen.X.4j r6 = A02(r7)     // Catch: org.json.JSONException -> L4f
            r2 = 637(0x27d, float:8.93E-43)
            r1 = 15
            r0 = 40
            java.lang.String r3 = A05(r2, r1, r0)     // Catch: org.json.JSONException -> L4f
            r2 = 523(0x20b, float:7.33E-43)
            r1 = 0
            r0 = 23
            java.lang.String r0 = A05(r2, r1, r0)     // Catch: org.json.JSONException -> L4f
            java.lang.String r0 = r6.A0J(r3, r0)     // Catch: org.json.JSONException -> L4f
            java.util.List r0 = A0K(r0)     // Catch: org.json.JSONException -> L4f
            java.util.Iterator r5 = r0.iterator()     // Catch: org.json.JSONException -> L4f
        L43:
            boolean r0 = r5.hasNext()     // Catch: org.json.JSONException -> L4f
            if (r0 == 0) goto L4c
            r0 = 11
            goto Le
        L4c:
            r0 = 15
            goto Le
        L4f:
            r3 = move-exception
            com.facebook.ads.redexgen.X.4j r0 = A02(r7)
            r0.A0M()
            r2 = 652(0x28c, float:9.14E-43)
            r1 = 9
            r0 = 19
            java.lang.String r2 = A05(r2, r1, r0)
            int r1 = com.facebook.ads.redexgen.X.P8.A1T
            com.facebook.ads.redexgen.X.PA r0 = new com.facebook.ads.redexgen.X.PA
            r0.<init>(r3)
            com.facebook.ads.redexgen.X.P7.A07(r7, r2, r1, r0)
            r0 = 15
            goto Le
        L6e:
            com.facebook.ads.redexgen.X.4m r4 = (com.facebook.ads.redexgen.X.C02684m) r4
            com.facebook.ads.redexgen.X.4m r4 = (com.facebook.ads.redexgen.X.C02684m) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02654j.A03(android.content.Context):com.facebook.ads.redexgen.X.4m");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0049 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C02684m A04(android.content.Context r7) {
        /*
            r0 = 0
            r0 = 0
            r5 = 0
            r0 = 0
            com.facebook.ads.redexgen.X.4m r4 = new com.facebook.ads.redexgen.X.4m
            java.lang.String r0 = A0I(r7)
            r4.<init>(r0)
            r0 = 2
        Le:
            switch(r0) {
                case 2: goto L1e;
                case 11: goto L12;
                case 15: goto L6e;
                default: goto L11;
            }
        L11:
            goto Le
        L12:
            java.util.Iterator r5 = (java.util.Iterator) r5     // Catch: org.json.JSONException -> L4f
            java.lang.Object r0 = r5.next()     // Catch: org.json.JSONException -> L4f
            com.facebook.ads.redexgen.X.4m r0 = (com.facebook.ads.redexgen.X.C02684m) r0     // Catch: org.json.JSONException -> L4f
            r4.A06(r0)     // Catch: org.json.JSONException -> L4f
            goto L43
        L1e:
            android.content.Context r7 = (android.content.Context) r7     // Catch: org.json.JSONException -> L4f
            com.facebook.ads.redexgen.X.4j r6 = A02(r7)     // Catch: org.json.JSONException -> L4f
            r2 = 711(0x2c7, float:9.96E-43)
            r1 = 17
            r0 = 32
            java.lang.String r3 = A05(r2, r1, r0)     // Catch: org.json.JSONException -> L4f
            r2 = 523(0x20b, float:7.33E-43)
            r1 = 0
            r0 = 23
            java.lang.String r0 = A05(r2, r1, r0)     // Catch: org.json.JSONException -> L4f
            java.lang.String r0 = r6.A0J(r3, r0)     // Catch: org.json.JSONException -> L4f
            java.util.List r0 = A0K(r0)     // Catch: org.json.JSONException -> L4f
            java.util.Iterator r5 = r0.iterator()     // Catch: org.json.JSONException -> L4f
        L43:
            boolean r0 = r5.hasNext()     // Catch: org.json.JSONException -> L4f
            if (r0 == 0) goto L4c
            r0 = 11
            goto Le
        L4c:
            r0 = 15
            goto Le
        L4f:
            r3 = move-exception
            com.facebook.ads.redexgen.X.4j r0 = A02(r7)
            r0.A0M()
            r2 = 652(0x28c, float:9.14E-43)
            r1 = 9
            r0 = 19
            java.lang.String r2 = A05(r2, r1, r0)
            int r1 = com.facebook.ads.redexgen.X.P8.A1W
            com.facebook.ads.redexgen.X.PA r0 = new com.facebook.ads.redexgen.X.PA
            r0.<init>(r3)
            com.facebook.ads.redexgen.X.P7.A07(r7, r2, r1, r0)
            r0 = 15
            goto Le
        L6e:
            com.facebook.ads.redexgen.X.4m r4 = (com.facebook.ads.redexgen.X.C02684m) r4
            com.facebook.ads.redexgen.X.4m r4 = (com.facebook.ads.redexgen.X.C02684m) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C02654j.A04(android.content.Context):com.facebook.ads.redexgen.X.4m");
    }

    public static String A06(Context context) {
        return A02(context).A0J(A05(272, 14, 100), A05(523, 0, 23));
    }

    public static String A07(Context context) {
        return A02(context).A0J(A05(61, 20, 8), A05(430, 38, 108));
    }

    public static String A08(Context context) {
        return A02(context).A0J(A05(414, 16, 21), A05(627, 10, 47));
    }

    public static String A09(Context context) {
        return A02(context).A0J(A05(36, 18, 107), A05(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 12, 115));
    }

    public static String A0A(Context context) {
        return A02(context).A0J(A05(608, 19, 111), A05(249, 23, 75));
    }

    public static String A0B(Context context) {
        return A02(context).A0J(A05(523, 7, 42), A05(54, 7, 58));
    }

    public static String A0C(Context context) {
        return A02(context).A0J(A05(670, 25, 50), A05(523, 0, 23));
    }

    public static String A0D(Context context) {
        return A02(context).A0J(A05(81, 21, 40), A05(484, 21, 43));
    }

    public static String A0E(Context context) {
        return A02(context).A0J(A05(228, 21, 11), A05(376, 38, 42));
    }

    public static String A0F(Context context) {
        return A02(context).A0J(A05(661, 9, 1), A05(166, 9, 43));
    }

    public static String A0G(Context context) {
        return A02(context).A0J(A05(728, 20, 55), A05(286, 21, 65));
    }

    private static String A0H(Context context) {
        return A02(context).A0J(A05(129, 25, 119), A05(307, 69, 87));
    }

    private static String A0I(Context context) {
        return A02(context).A0J(A05(102, 27, 26), A05(530, 64, 20));
    }

    private String A0J(String str, String str2) {
        String string = this.A00.getString(str, str2);
        char c = string != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    string = string;
                    if (!string.equals(A05(748, 4, 34))) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str2 = str2;
                    string = str2;
                    c = 4;
                    break;
                case 4:
                    return string;
            }
        }
    }

    private static List<C02684m> A0K(String str) throws JSONException {
        Iterator<C02684m> it = null;
        C02684m c02684m = null;
        List<AdReportingReason> reasonsList = null;
        JSONArray jSONArray = null;
        int i = 0;
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!str.equalsIgnoreCase(A05(748, 4, 34))) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    reasonsList = new ArrayList<>();
                    c = 4;
                    break;
                case 4:
                    return (ArrayList) reasonsList;
                case 5:
                    str = str;
                    jSONArray = new JSONArray(str);
                    reasonsList = new ArrayList<>();
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    jSONArray = jSONArray;
                    if (i >= jSONArray.length()) {
                        c = 4;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONArray = jSONArray;
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                    c02684m = new C02684m(jSONObject.getInt(A05(594, 12, 123)), jSONObject.getString(A05(217, 11, 88)), jSONObject.optString(A05(695, 16, 79)));
                    it = A0K(jSONObject.optString(A05(468, 16, 41))).iterator();
                    c = '\b';
                    break;
                case '\b':
                    it = it;
                    if (!it.hasNext()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c02684m = c02684m;
                    it = it;
                    c02684m.A06(it.next());
                    c = '\b';
                    break;
                case '\n':
                    reasonsList = (ArrayList) reasonsList;
                    c02684m = c02684m;
                    reasonsList.add(c02684m);
                    i++;
                    c = 6;
                    break;
            }
        }
    }

    @Nullable
    private static Map<String, String> A0L(Context context, @Nullable String str) {
        if (str == null || str.isEmpty() || str.equals(A05(606, 2, 1))) {
            return null;
        }
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            for (String str2 : A03) {
                if (!jSONObject.has(str2)) {
                    return null;
                }
                map.put(str2, jSONObject.getString(str2));
            }
            if (A0K(jSONObject.getString(A05(Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PAUSED, 17, 32))).size() == 0) {
                P7.A07(context, A05(652, 9, 19), P8.A1V, new PA(A05(197, 20, 93)));
                return null;
            }
            if (A0K(jSONObject.getString(A05(637, 15, 40))).size() != 0) {
                return map;
            }
            P7.A07(context, A05(652, 9, 19), P8.A1S, new PA(A05(505, 18, 65)));
            return null;
        } catch (JSONException e) {
            P7.A07(context, A05(652, 9, 19), P8.A1U, new PA(e));
            return null;
        }
    }

    private void A0M() {
        SharedPreferences.Editor editorEdit = this.A00.edit();
        editorEdit.putLong(A05(175, 22, 64), 0L);
        editorEdit.apply();
    }

    public static void A0O(Context context, @Nullable String str) {
        int i = 0;
        int length = 0;
        SharedPreferences.Editor editorEdit = null;
        String[] strArr = null;
        Map<String, String> mapA0L = A0L(context, str);
        char c = mapA0L != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mapA0L = mapA0L;
                    if (mapA0L.size() == A03.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    context = context;
                    editorEdit = A02(context).A00.edit();
                    strArr = A03;
                    length = strArr.length;
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    if (i >= length) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    mapA0L = mapA0L;
                    editorEdit = editorEdit;
                    strArr = strArr;
                    String str2 = strArr[i];
                    editorEdit.putString(str2, mapA0L.get(str2));
                    i++;
                    c = 5;
                    break;
                case 7:
                    editorEdit = editorEdit;
                    editorEdit.putLong(A05(175, 22, 64), System.currentTimeMillis());
                    editorEdit.apply();
                    c = 3;
                    break;
            }
        }
    }

    public static boolean A0P(Context context, boolean z) {
        boolean zA1h = false;
        boolean z2 = false;
        char c = z ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    zA1h = K1.A1h(context);
                    c = 3;
                    break;
                case 3:
                    if (!zA1h) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    if (A00(context) <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z2 = true;
                    c = 6;
                    break;
                case 6:
                    return z2;
                case 7:
                    z2 = false;
                    c = 6;
                    break;
                case '\b':
                    context = context;
                    zA1h = K1.A1i(context);
                    c = 3;
                    break;
            }
        }
    }
}
