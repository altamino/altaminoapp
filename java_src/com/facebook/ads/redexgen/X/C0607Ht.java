package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ht, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0607Ht {
    private static InterfaceC01730t A0G;
    private static byte[] A0H;
    private static final String A0I;
    private static final Map<String, C01770z> A0J;
    private long A00;
    private KX A01;
    private final Context A02;
    private final C0611Hx A04;
    private final I0 A05;
    private final I1 A06;
    private final I8 A07;
    private final boolean A0B;
    private final boolean A0C;
    private final boolean A0D;
    private final boolean A0E;
    private final boolean A0F;
    private final Map<String, Bitmap> A0A = Collections.synchronizedMap(new HashMap());
    private final Handler A03 = new Handler(Looper.getMainLooper());
    private final List<Callable<Boolean>> A08 = new ArrayList();
    private final List<Callable<Boolean>> A09 = new ArrayList();

    private static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 39);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0G() {
        A0H = new byte[]{96, 125, 96, 102, 112, 113, 96, 105, 100, 111, 104, 56, 110, 111, 57, 51, 48, 62, 59, 0, 43, 54, 50, 58, 0, 50, 44, 78, 78, 26, 77, 66, 75, 25, 30, 9, 9, 89, 95, 15, 13, 92, 14, 43, 22, 13, 11, 30, 26, 7, 1, 0, 78, 25, 6, 7, 2, 11, 78, 11, 22, 11, 13, 27, 26, 7, 0, 9, 78, 13, 15, 13, 6, 11, 78, 10, 1, 25, 0, 2, 1, 15, 10, 29, 64, 125, 127, 125, 118, 123, 88, 127, 119, 114, 107, 108, 123, 86, 113, 113, 117, 108, 78, 76, 71, 70, 65, 72, 15, 76, 64, 66, 95, 67, 74, 91, 74, 103, 101, 103, 108, 97, 71, 107, 105, 116, 104, 97, 112, 109, 107, 106, 76, 107, 107, 111, 79, 109, 111, 100, 101, 98, 107, 44, 127, 120, 109, 126, 120, 105, 104, 34, 34, 34, 27, 57, 59, 48, 49, 54, 63, 120, 62, 57, 49, 52, 61, 60, 12, 15, 1, 4, 77, 86, 81, 73};
    }

    static {
        A0G();
        A0I = C0607Ht.class.getSimpleName();
        A0J = Collections.synchronizedMap(new HashMap());
    }

    public C0607Ht(Context context) {
        this.A02 = context.getApplicationContext();
        this.A06 = I1.A06(context);
        this.A07 = I8.A00(context);
        this.A04 = C0611Hx.A01(context);
        this.A05 = I0.A01(context);
        this.A0E = K1.A1x(context);
        this.A0F = K1.A1y(context);
        this.A0C = K1.A1q(context);
        this.A0D = K1.A1r(context);
        this.A0B = K1.A1Y(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.facebook.ads.redexgen.X.10] */
    public static InterfaceC01730t A03(Context context) {
        if (A0G == null) {
            A0G = C01740u.A00(context, new Object() { // from class: com.facebook.ads.redexgen.X.10
                private int A00;
                private int A01;
                private boolean A02;
                private boolean A03;
                private boolean A04;

                public final AnonymousClass10 A00(int i) {
                    this.A00 = i;
                    return this;
                }

                public final AnonymousClass10 A01(int i) {
                    this.A01 = i;
                    return this;
                }

                public final AnonymousClass10 A02(boolean z) {
                    this.A02 = z;
                    return this;
                }

                public final AnonymousClass10 A03(boolean z) {
                    this.A03 = z;
                    return this;
                }

                public final AnonymousClass10 A04(boolean z) {
                    this.A04 = z;
                    return this;
                }

                public final AnonymousClass11 A05() {
                    return new AnonymousClass11(this.A00, this.A02, this.A01, this.A03, this.A04);
                }
            }.A00(K1.A0T(context)).A02(BuildConfigApi.isDebug()).A01(-1).A03(K1.A0o(context)).A04(K1.A22(context)).A05(), A06());
        }
        return A0G;
    }

    private static C01770z A05(String str) {
        C01770z c01770z = null;
        C01770z c01770z2 = A0J.get(str);
        char c = IA.A09() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c01770z2 = c01770z2;
                    if (c01770z2 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c01770z2 = c01770z2;
                    c01770z = new C01770z(c01770z2);
                    c = 4;
                    break;
                case 4:
                    return c01770z;
                case 5:
                    str = str;
                    c01770z = new C01770z(str);
                    c = 4;
                    break;
            }
        }
    }

    private static C1O A06() {
        return new C0599Hl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0019. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.concurrent.atomic.AtomicBoolean A0E(java.util.ArrayList<java.util.concurrent.Callable<java.lang.Boolean>> r12) {
        /*
            r0 = 0
            r0 = 0
            r9 = 0
            r8 = 0
            r0 = 0
            r7 = 0
            r0 = 0
            r2 = 0
            r6 = 0
            r5 = 1
            r0 = 0
            java.util.ArrayList r4 = new java.util.ArrayList
            int r0 = r12.size()
            r4.<init>(r0)
            java.util.Iterator r3 = r12.iterator()
            r0 = 2
        L19:
            switch(r0) {
                case 2: goto L8c;
                case 3: goto L75;
                case 4: goto L6e;
                case 5: goto L98;
                case 6: goto L1c;
                case 7: goto L1c;
                case 8: goto L1c;
                case 9: goto L59;
                case 10: goto L1c;
                case 11: goto L1c;
                case 12: goto L1c;
                case 13: goto L45;
                case 14: goto L1c;
                case 15: goto L1c;
                case 16: goto L1c;
                case 17: goto L3b;
                case 18: goto L37;
                case 19: goto L3f;
                case 20: goto L1c;
                case 21: goto L1c;
                case 22: goto L1d;
                case 23: goto Lb6;
                default: goto L1c;
            }
        L1c:
            goto L19
        L1d:
            java.util.concurrent.atomic.AtomicBoolean r9 = (java.util.concurrent.atomic.AtomicBoolean) r9
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            r12 = 0
            java.lang.String r11 = com.facebook.ads.redexgen.X.C0607Ht.A0I
            r10 = 43
            r1 = 42
            r0 = 73
            java.lang.String r0 = A0B(r10, r1, r0)
            android.util.Log.e(r11, r0, r6)
            r9.set(r12)
            r0 = 23
            goto L19
        L37:
            r2 = 0
            r0 = 19
            goto L19
        L3b:
            r2 = r5
            r0 = 19
            goto L19
        L3f:
            java.util.concurrent.atomic.AtomicBoolean r9 = (java.util.concurrent.atomic.AtomicBoolean) r9     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            r9.set(r2)     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            goto L9e
        L45:
            java.util.concurrent.Future r7 = (java.util.concurrent.Future) r7     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            java.lang.Object r0 = r7.get()     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            boolean r0 = r0.booleanValue()     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            if (r0 == 0) goto L56
            r0 = 17
            goto L19
        L56:
            r0 = 18
            goto L19
        L59:
            java.util.Iterator r8 = (java.util.Iterator) r8     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            java.lang.Object r0 = r8.next()     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            r7 = r0
            java.util.concurrent.Future r7 = (java.util.concurrent.Future) r7     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            boolean r0 = r9.get()     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            if (r0 == 0) goto L6b
            r0 = 13
            goto L19
        L6b:
            r0 = 18
            goto L19
        L6e:
            java.util.concurrent.atomic.AtomicBoolean r9 = new java.util.concurrent.atomic.AtomicBoolean
            r9.<init>(r5)
            r0 = 5
            goto L19
        L75:
            java.util.ArrayList r4 = (java.util.ArrayList) r4
            java.util.Iterator r3 = (java.util.Iterator) r3
            java.lang.Object r1 = r3.next()
            java.util.concurrent.Callable r1 = (java.util.concurrent.Callable) r1
            java.util.concurrent.ExecutorService r0 = com.facebook.ads.redexgen.X.O4.A02()
            java.util.concurrent.Future r0 = r0.submit(r1)
            r4.add(r0)
            r0 = 2
            goto L19
        L8c:
            java.util.Iterator r3 = (java.util.Iterator) r3
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L96
            r0 = 3
            goto L19
        L96:
            r0 = 4
            goto L19
        L98:
            java.util.ArrayList r4 = (java.util.ArrayList) r4     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            java.util.Iterator r8 = r4.iterator()     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
        L9e:
            boolean r0 = r8.hasNext()     // Catch: java.util.concurrent.ExecutionException -> Lac java.lang.InterruptedException -> Lb1
            if (r0 == 0) goto La8
            r0 = 9
            goto L19
        La8:
            r0 = 23
            goto L19
        Lac:
            r6 = move-exception
            r0 = 22
            goto L19
        Lb1:
            r6 = move-exception
            r0 = 22
            goto L19
        Lb6:
            java.util.concurrent.atomic.AtomicBoolean r9 = (java.util.concurrent.atomic.AtomicBoolean) r9
            java.util.concurrent.atomic.AtomicBoolean r9 = (java.util.concurrent.atomic.AtomicBoolean) r9
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0607Ht.A0E(java.util.ArrayList):java.util.concurrent.atomic.AtomicBoolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(KW kw) {
        if (this.A01 == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A0B(15, 12, 120), OO.A04(this.A00));
        this.A01.A02(kw, map);
    }

    @Nullable
    public final Bitmap A0M(String str) {
        return this.A0A.get(str);
    }

    @Nullable
    public final Bitmap A0N(String str, int i, int i2) {
        C0607Ht c0607Ht = this;
        Bitmap bitmapA00 = null;
        char c = c0607Ht.A0D ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    str = str;
                    C01770z c01770zA05 = A05(str);
                    c01770zA05.A03 = A0B(TsExtractor.TS_STREAM_TYPE_AC4, 4, 25);
                    c01770zA05.A01 = i2;
                    c01770zA05.A00 = i;
                    bitmapA00 = A03(c0607Ht.A02).A6u(c01770zA05, true).A00();
                    c = 3;
                    break;
                case 3:
                    return bitmapA00;
                case 4:
                    c0607Ht = c0607Ht;
                    str = str;
                    bitmapA00 = c0607Ht.A06.A0D(str, i, i2, A0B(168, 4, 71));
                    c = 3;
                    break;
            }
        }
    }

    public final String A0O(String str) {
        C0607Ht c0607Ht = this;
        String strA6w = null;
        char c = c0607Ht.A0D ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    str = str;
                    C01770z c01770zA05 = A05(str);
                    c01770zA05.A03 = A0B(TsExtractor.TS_STREAM_TYPE_AC4, 4, 25);
                    strA6w = A03(c0607Ht.A02).A6w(c01770zA05);
                    if (strA6w == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return strA6w;
                case 4:
                    str = str;
                    strA6w = str;
                    c = 3;
                    break;
                case 5:
                    c0607Ht = c0607Ht;
                    str = str;
                    strA6w = c0607Ht.A06.A0E(str);
                    c = 3;
                    break;
            }
        }
    }

    public final String A0P(String str) {
        C0607Ht c0607Ht = this;
        String strA07 = null;
        char c = c0607Ht.A0C ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    str = str;
                    C01770z c01770zA05 = A05(str);
                    c01770zA05.A03 = A0B(TsExtractor.TS_STREAM_TYPE_AC4, 4, 25);
                    strA07 = A03(c0607Ht.A02).A6w(c01770zA05);
                    if (strA07 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return strA07;
                case 4:
                    str = str;
                    strA07 = str;
                    c = 3;
                    break;
                case 5:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0F) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0607Ht = c0607Ht;
                    str = str;
                    strA07 = c0607Ht.A05.A07(str);
                    if (strA07 != null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    str = str;
                    strA07 = str;
                    c = 3;
                    break;
                case '\b':
                    c0607Ht = c0607Ht;
                    str = str;
                    strA07 = c0607Ht.A04.A05(str);
                    if (strA07 != null) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    str = str;
                    strA07 = str;
                    c = 3;
                    break;
            }
        }
    }

    public final String A0Q(String str) {
        C0607Ht c0607Ht = this;
        String strA6w = null;
        char c = c0607Ht.A0C ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    str = str;
                    C01770z c01770zA05 = A05(str);
                    c01770zA05.A03 = A0B(TsExtractor.TS_STREAM_TYPE_AC4, 4, 25);
                    strA6w = A03(c0607Ht.A02).A6w(c01770zA05);
                    if (strA6w == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return strA6w;
                case 4:
                    str = str;
                    strA6w = str;
                    c = 3;
                    break;
                case 5:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0F) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0607Ht = c0607Ht;
                    str = str;
                    strA6w = c0607Ht.A05.A07(str);
                    if (strA6w != null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    str = str;
                    strA6w = str;
                    c = 3;
                    break;
                case '\b':
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0E) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c0607Ht = c0607Ht;
                    str = str;
                    strA6w = c0607Ht.A04.A05(str);
                    if (strA6w != null) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    str = str;
                    strA6w = str;
                    c = 3;
                    break;
                case 11:
                    c0607Ht = c0607Ht;
                    str = str;
                    strA6w = c0607Ht.A07.A05(str);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final String A0R(String str) {
        return this.A07.A05(str);
    }

    public final void A0S() {
        C0695Lf.A05(A0B(117, 19, 35), A0B(101, 16, 8), A0B(27, 8, 92));
    }

    public final void A0T() {
        C0695Lf.A05(A0B(85, 16, 57), A0B(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 14, 127), A0B(7, 8, 122));
    }

    public final void A0U() {
        this.A0A.clear();
    }

    public final void A0V(@Nullable AnonymousClass20 anonymousClass20, C0600Hm c0600Hm) {
        C0695Lf.A05(A0B(0, 7, 34), A0B(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 18, 43), A0B(35, 8, 29));
        this.A00 = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList(this.A08);
        ArrayList arrayList2 = new ArrayList(this.A09);
        if (this.A0B) {
            arrayList.addAll(arrayList2);
            arrayList2.clear();
        }
        O4.A03().execute(new C0598Hk(this, arrayList, anonymousClass20, c0600Hm, arrayList2));
        this.A08.clear();
        this.A09.clear();
    }

    public final void A0W(C0603Hp c0603Hp) {
        C0607Ht c0607Ht = this;
        CallableC0604Hq callableC0604Hq = new CallableC0604Hq(c0607Ht, c0603Hp);
        char c = !c0603Hp.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    callableC0604Hq = callableC0604Hq;
                    c0607Ht.A08.add(callableC0604Hq);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0607Ht = c0607Ht;
                    callableC0604Hq = callableC0604Hq;
                    c0607Ht.A09.add(callableC0604Hq);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0X(C0603Hp c0603Hp) {
        c0603Hp.A02 = true;
        A0W(c0603Hp);
    }

    public final void A0Y(C0605Hr c0605Hr) {
        this.A08.add(new CallableC0602Ho(this, c0605Hr));
    }

    public final void A0Z(C0605Hr c0605Hr) {
        C0607Ht c0607Ht = this;
        char c = !c0607Ht.A0E ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0F) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0C) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0607Ht = c0607Ht;
                    c0605Hr = c0605Hr;
                    c0607Ht.A09.add(new CallableC0602Ho(c0607Ht, c0605Hr));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0607Ht = c0607Ht;
                    c0605Hr = c0605Hr;
                    c0607Ht.A09.add(new CallableC0606Hs(c0607Ht, c0605Hr, null));
                    c = 5;
                    break;
            }
        }
    }

    public final void A0a(C0605Hr c0605Hr) {
        C0607Ht c0607Ht = this;
        char c = !c0607Ht.A0E ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0F) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0C) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0607Ht = c0607Ht;
                    c0605Hr = c0605Hr;
                    c0607Ht.A08.add(new CallableC0602Ho(c0607Ht, c0605Hr));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0607Ht = c0607Ht;
                    c0605Hr = c0605Hr;
                    c0607Ht.A08.add(new CallableC0606Hs(c0607Ht, c0605Hr, null));
                    c = 5;
                    break;
            }
        }
    }

    public final void A0b(C0605Hr c0605Hr) {
        this.A08.add(new CallableC0606Hs(this, c0605Hr, null));
    }

    public final void A0c(KX kx) {
        this.A01 = kx;
    }

    public final boolean A0d(String str) {
        C0607Ht c0607Ht = this;
        boolean z = true;
        char c = c0607Ht.A0C ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c0607Ht = c0607Ht;
                    str = str;
                    C01770z c01770zA05 = A05(str);
                    c01770zA05.A03 = A0B(TsExtractor.TS_STREAM_TYPE_AC4, 4, 25);
                    if (A03(c0607Ht.A02).A6w(c01770zA05) == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
                case 5:
                    c0607Ht = c0607Ht;
                    if (!c0607Ht.A0F) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0607Ht = c0607Ht;
                    str = str;
                    if (c0607Ht.A05.A07(str) != null) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = false;
                    c = 3;
                    break;
                case '\b':
                    c0607Ht = c0607Ht;
                    str = str;
                    if (c0607Ht.A04.A05(str) != null) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
