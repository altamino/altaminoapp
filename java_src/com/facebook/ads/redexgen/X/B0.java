package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.ThreadSafe;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@ThreadSafe
@SuppressLint({"StaticFieldLeak"})
/* loaded from: assets/assets/audience_network.dex */
public final class B0 {
    private static EnumC0522Em A06;
    private static byte[] A07;
    private static final AtomicReference<B0> A08;
    private B2 A00;
    private C0432Ba A01;
    private final Context A02;
    private final C0430Ay A03;
    private final AtomicReference<BH> A04 = new AtomicReference<>();
    private final AtomicReference<B5> A05 = new AtomicReference<>();

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 110);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A07 = new byte[]{121, 102, 122, 120, 117, 34, 36, 114, 121, 12, 10};
    }

    static {
        A01();
        A08 = new AtomicReference<>();
    }

    public B0(Context context, C0430Ay c0430Ay, EnumC0522Em enumC0522Em) {
        this.A02 = context;
        this.A03 = c0430Ay;
        if (this.A04.get() == null && FH.A0C(enumC0522Em)) {
            A02(enumC0522Em);
        }
    }

    private synchronized void A02(EnumC0522Em enumC0522Em) {
        if (this.A04.get() == null) {
            BC.A02(this.A03.A0S());
            this.A01 = new C0432Ba(this.A02, this.A03);
            B5 b5 = new B5(this.A03, this.A01);
            this.A05.set(b5);
            this.A00 = new B2();
            this.A00.A00(b5);
            if (this.A01.A06() && FH.A0C(enumC0522Em)) {
                b5.A05(enumC0522Em);
            }
            A06 = enumC0522Em;
            this.A00.A01(enumC0522Em);
            this.A04.set(BH.A00(this.A02, this.A03));
        }
    }

    private boolean A03(EnumC0522Em enumC0522Em) {
        B0 b0 = this;
        boolean z = false;
        char c = FH.A0C(enumC0522Em) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    b0 = b0;
                    enumC0522Em = enumC0522Em;
                    b0.A02(enumC0522Em);
                    c = 3;
                    break;
                case 3:
                    enumC0522Em = enumC0522Em;
                    if (!enumC0522Em.equals(A06)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = false;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    b0 = b0;
                    enumC0522Em = enumC0522Em;
                    A06 = enumC0522Em;
                    if (b0.A00 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    b0 = b0;
                    enumC0522Em = enumC0522Em;
                    b0.A00.A01(enumC0522Em);
                    c = '\b';
                    break;
                case '\b':
                    z = true;
                    c = 5;
                    break;
            }
        }
    }

    private boolean A04(String str, EnumC0526Eq enumC0526Eq) {
        B0 b0 = this;
        boolean z = false;
        char c = FH.A0C(A06) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    b0 = b0;
                    if (b0.A04.get() != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    b0 = b0;
                    if (b0.A01 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    b0 = b0;
                    str = str;
                    enumC0526Eq = enumC0526Eq;
                    b0.A01.A05(EnumC0524Eo.A02, A06, str, enumC0526Eq);
                    c = 7;
                    break;
                case 7:
                    z = true;
                    c = 4;
                    break;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public final void A05(MotionEvent motionEvent) {
        try {
            if (this.A04.get() != null) {
                this.A04.get().A05(motionEvent);
            }
        } catch (Throwable th) {
            BC.A03(th);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:20:0x0077 */
    @android.annotation.SuppressLint({"CatchGeneralException"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean A06(java.lang.String r9) {
        /*
            r8 = this;
            r4 = 0
            monitor-enter(r8)
            r7 = 0
            if (r9 == 0) goto Lbc
            boolean r0 = r9.isEmpty()     // Catch: java.lang.Throwable -> Lb8
            if (r0 == 0) goto Ld
            goto Lbc
        Ld:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            r3.<init>(r9)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            r2 = 5
            r1 = 2
            r0 = 46
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            org.json.JSONObject r3 = r3.getJSONObject(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r3 == 0) goto Lbc
            r2 = 9
            r1 = 2
            r0 = 16
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            boolean r0 = r3.has(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r0 == 0) goto L45
            r2 = 9
            r1 = 2
            r0 = 16
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            int r0 = r3.getInt(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            com.facebook.ads.redexgen.X.Em r0 = com.facebook.ads.redexgen.X.EnumC0522Em.A00(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            boolean r0 = r8.A03(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            r7 = r7 | r0
        L45:
            r2 = 7
            r1 = 2
            r0 = 127(0x7f, float:1.78E-43)
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            org.json.JSONArray r5 = r3.getJSONArray(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            r2 = 0
            r1 = 3
            r0 = 100
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            boolean r0 = r3.has(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r0 == 0) goto L70
            r2 = 0
            r1 = 3
            r0 = 100
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            int r0 = r3.getInt(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            com.facebook.ads.redexgen.X.Eq r4 = com.facebook.ads.redexgen.X.EnumC0526Eq.A00(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            goto L72
        L70:
            com.facebook.ads.redexgen.X.Eq r4 = com.facebook.ads.redexgen.X.EnumC0526Eq.A04     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
        L72:
            r3 = 0
        L73:
            int r0 = r5.length()     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r3 >= r0) goto Lbb
            org.json.JSONObject r6 = r5.getJSONObject(r3)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            r2 = 3
            r1 = 2
            r0 = 127(0x7f, float:1.78E-43)
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            boolean r0 = r6.has(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r0 != 0) goto L8c
            goto Lb0
        L8c:
            r2 = 3
            r1 = 2
            r0 = 127(0x7f, float:1.78E-43)
            java.lang.String r0 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            java.lang.String r2 = r6.getString(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r2 == 0) goto Lb0
            boolean r0 = r2.isEmpty()     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            if (r0 != 0) goto Lb0
            com.facebook.ads.redexgen.X.Ay r1 = r8.A03     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            com.facebook.ads.redexgen.X.BA r0 = com.facebook.ads.redexgen.X.BA.A04     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            java.lang.String r0 = r0.A02()     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            com.facebook.ads.redexgen.X.FH.A0B(r1, r0, r2)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            boolean r0 = r8.A04(r2, r4)     // Catch: java.lang.Throwable -> Lb3 java.lang.Throwable -> Lb8 org.json.JSONException -> Lbb
            r7 = r7 | r0
        Lb0:
            int r3 = r3 + 1
            goto L73
        Lb3:
            r0 = move-exception
            com.facebook.ads.redexgen.X.BC.A03(r0)     // Catch: java.lang.Throwable -> Lb8
            goto Lbb
        Lb8:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        Lbb:
            r4 = r7
        Lbc:
            monitor-exit(r8)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.B0.A06(java.lang.String):boolean");
    }
}
