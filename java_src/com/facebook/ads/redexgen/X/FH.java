package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import android.os.SystemClock;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FH {

    @Nullable
    private static String A00;
    private static byte[] A01;

    private static String A06(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 88);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0A() {
        A01 = new byte[]{75, 97, 90, 87, 70, 3, 98, 81, 81, 66, 90, 3, 74, 80, 3, 77, 86, 79, 79, 112, 101, 103, 45, 72, 78, 52, 50};
    }

    static {
        A0A();
        A00 = null;
    }

    private FH() {
    }

    public static float A00(float f) {
        return new BigDecimal(f).setScale(3, RoundingMode.HALF_UP).floatValue();
    }

    private static long A01() {
        return SystemClock.elapsedRealtime();
    }

    public static long A02(long j) {
        return j - (j % 1048576);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x000a, code lost:
    
        r0 = com.facebook.ads.redexgen.X.EnumC0522Em.A05;
     */
    @android.annotation.SuppressLint({"CatchGeneralException", "POSSIBLE_VARIABLE_NAME_TYPO"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.EnumC0522Em A03(@javax.annotation.Nullable java.lang.String r4) {
        /*
            if (r4 == 0) goto L8
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto Lb
        L8:
            com.facebook.ads.redexgen.X.Em r0 = com.facebook.ads.redexgen.X.EnumC0522Em.A05
        La:
            return r0
        Lb:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L43
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L43
            r2 = 23
            r1 = 2
            r0 = 114(0x72, float:1.6E-43)
            java.lang.String r0 = A06(r2, r1, r0)     // Catch: java.lang.Throwable -> L43
            org.json.JSONObject r3 = r3.getJSONObject(r0)     // Catch: java.lang.Throwable -> L43
            if (r3 != 0) goto L22
            com.facebook.ads.redexgen.X.Em r0 = com.facebook.ads.redexgen.X.EnumC0522Em.A05     // Catch: java.lang.Throwable -> L43
            goto La
        L22:
            r2 = 25
            r1 = 2
            r0 = 30
            java.lang.String r0 = A06(r2, r1, r0)     // Catch: java.lang.Throwable -> L43
            boolean r0 = r3.has(r0)     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L43
            r2 = 25
            r1 = 2
            r0 = 30
            java.lang.String r0 = A06(r2, r1, r0)     // Catch: java.lang.Throwable -> L43
            int r0 = r3.getInt(r0)     // Catch: java.lang.Throwable -> L43
            com.facebook.ads.redexgen.X.Em r0 = com.facebook.ads.redexgen.X.EnumC0522Em.A00(r0)     // Catch: java.lang.Throwable -> L43
            goto La
        L43:
            com.facebook.ads.redexgen.X.Em r0 = com.facebook.ads.redexgen.X.EnumC0522Em.A05
            goto La
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.FH.A03(java.lang.String):com.facebook.ads.redexgen.X.Em");
    }

    public static C0531Ev A04(String str, Throwable th) {
        C0531Ev c0531Ev = null;
        char c = th instanceof NullPointerException ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    c0531Ev = new C0531Ev(A01(), new F8(str), new F7(F6.A05));
                    c = 3;
                    break;
                case 3:
                    return c0531Ev;
                case 4:
                    th = th;
                    if (!(th instanceof SecurityException)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    str = str;
                    c0531Ev = new C0531Ev(A01(), new F8(str), new F7(F6.A04));
                    c = 3;
                    break;
                case 6:
                    th = th;
                    if (!(th instanceof UnsupportedOperationException)) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    th = th;
                    if (!(th instanceof NoSuchAlgorithmException)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    str = str;
                    c0531Ev = new C0531Ev(A01(), new F8(str), new F7(F6.A03));
                    c = 3;
                    break;
                case '\t':
                    str = str;
                    th = th;
                    c0531Ev = new C0531Ev(A01(), new F8(str), new F7(th));
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"BadMethodUse-java.util.UUID.randomUUID"})
    public static String A05() {
        StrictMode.ThreadPolicy savedPolicy = null;
        char c = A00 == null ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    savedPolicy = StrictMode.allowThreadDiskReads();
                    c = 3;
                    break;
                case 3:
                    try {
                        A00 = UUID.randomUUID().toString();
                        StrictMode.setThreadPolicy(savedPolicy);
                        c = '\b';
                        break;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(savedPolicy);
                        throw th;
                    }
                case '\b':
                    return A00;
            }
        }
    }

    @Nullable
    @SuppressLint({"EmptyCatchBlock"})
    private static String A07(String str) {
        String timestamp = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has(A06(0, 1, 103))) {
                return null;
            }
            timestamp = Integer.toString(jSONObject.getInt(A06(0, 1, 103)));
            return timestamp;
        } catch (JSONException unused) {
            return timestamp;
        }
    }

    public static String A08(byte[] bArr, FG fg) throws NoSuchAlgorithmException {
        byte[] bArrDigest = null;
        int i = 0;
        StringBuffer stringBuffer = null;
        char c = bArr == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new NullPointerException(A06(1, 18, 123));
                case 3:
                    bArr = bArr;
                    fg = fg;
                    stringBuffer = new StringBuffer();
                    bArrDigest = MessageDigest.getInstance(fg.A02()).digest(bArr);
                    i = 0;
                    c = 4;
                    break;
                case 4:
                    bArrDigest = bArrDigest;
                    if (i >= bArrDigest.length) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    stringBuffer = stringBuffer;
                    bArrDigest = bArrDigest;
                    stringBuffer.append(String.format(A06(19, 4, 13), Integer.valueOf(bArrDigest[i] & 255)));
                    i++;
                    c = 4;
                    break;
                case 6:
                    return stringBuffer.toString();
            }
        }
    }

    private static Map<String, String> A09(C0430Ay c0430Ay) {
        HashMap map = new HashMap();
        map.put(BB.A03.A02(), A05());
        map.put(BB.A09.A02(), Long.toString(TimeUnit.SECONDS.toMillis(c0430Ay.A0N())));
        map.put(BB.A05.A02(), Long.toString(C0523En.A00()));
        map.put(BB.A06.A02(), Integer.toString(c0430Ay.A0M()));
        map.put(BB.A08.A02(), Integer.toString(c0430Ay.A0P()));
        map.put(BB.A04.A02(), Integer.toString(c0430Ay.A0L()));
        map.put(BB.A07.A02(), A07(c0430Ay.A0W()));
        return map;
    }

    public static void A0B(C0430Ay c0430Ay, String str, @Nullable String str2) {
        InterfaceC0423Aq interfaceC0423AqA0Q = c0430Ay.A0Q();
        if (interfaceC0423AqA0Q == null) {
            return;
        }
        interfaceC0423AqA0Q.A4M(B9.A04.A02(), str, A09(c0430Ay), str2, null, null, null);
    }

    public static boolean A0C(EnumC0522Em enumC0522Em) {
        boolean z = false;
        int iA03 = enumC0522Em.A03();
        char c = iA03 != EnumC0522Em.A06.A03() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (iA03 == EnumC0522Em.A07.A03()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (iA03 != EnumC0522Em.A04.A03()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public static boolean A0D(@Nullable String str, @Nullable String str2) {
        boolean zEquals = false;
        char c = str == null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    str2 = str2;
                    if (str2 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    zEquals = true;
                    c = 4;
                    break;
                case 4:
                    return zEquals;
                case 5:
                    str = str;
                    if (str == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    str2 = str2;
                    if (str2 != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    zEquals = false;
                    c = 4;
                    break;
                case '\b':
                    str = str;
                    str2 = str2;
                    zEquals = str.equals(str2);
                    c = 4;
                    break;
            }
        }
    }
}
