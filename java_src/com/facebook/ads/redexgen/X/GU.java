package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.util.Arrays;
import javax.inject.Singleton;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@Singleton
/* loaded from: assets/assets/audience_network.dex */
public final class GU {
    private static byte[] A07;
    private static final String A08;
    private final C0537Fb A02;
    private final C0539Fd A03;
    private final C0544Fi A04;
    private final HU A05;
    private final HZ A06;
    private JSONObject A01 = new JSONObject();
    private JSONObject A00 = new JSONObject();

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A07 = new byte[]{38, 61, 39, 49, 58, 77, 76, 74, 91, 80, 89, 93, 64, 70, 71, 118, 66, 76, 80, 0, 115, 58, 34, 85, 66, 79, 86, 70, 80, 94, 91, 78, 91, 85, 95, 82, 89, 83, 71, 88, 94, 89, 67, 104, 71, 86, 67, 95, 87, 91, 92, 88, 91, 87, 83, 92, 86, 64, 93, 91, 86, 4, 2, 67, 86, 86, 75, 86, 87, 70, 71, 22, 1, 1, 28, 1, 0, 12, 5, 18, 29};
    }

    static {
        A02();
        A08 = GU.class.getSimpleName();
    }

    public GU(C0544Fi c0544Fi, HZ hz, HU hu, C0539Fd c0539Fd, C0537Fb c0537Fb) {
        this.A04 = c0544Fi;
        this.A06 = hz;
        this.A05 = hu;
        this.A03 = c0539Fd;
        this.A02 = c0537Fb;
    }

    @SuppressLint({"CatchGeneralException"})
    private final String A00() {
        JSONObject dataObject = new JSONObject();
        try {
            JSONObject nativeSignalObject = new JSONObject();
            C0595Hh c0595Hh = new C0595Hh(this.A06.A01());
            nativeSignalObject.put(A01(35, 13, 15), this.A06.A00());
            nativeSignalObject.put(A01(5, 14, 17), this.A06.A01());
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = this.A01;
            String strA01 = A01(0, 5, 106);
            JSONObject responseKeyObject = this.A03.A04();
            jSONObject2.put(strA01, responseKeyObject);
            this.A01.put(A01(63, 8, 26), this.A02.A03());
            String strA012 = A01(23, 6, 27);
            JSONObject responseKeyObject2 = this.A01;
            jSONObject.put(strA012, responseKeyObject2);
            String strA013 = A01(71, 6, 75);
            JSONObject responseKeyObject3 = this.A00;
            jSONObject.put(strA013, responseKeyObject3);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(A01(33, 2, 14), A01(48, 6, 87));
            jSONObject3.put(A01(29, 4, 2), jSONObject);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put(A01(54, 7, 10), jSONObject3);
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(A01(78, 3, 78), jSONObject4);
            nativeSignalObject.put(A01(29, 4, 2), c0595Hh.A05(jSONObject5.toString().replace(A01(19, 2, 100), A01(77, 1, 27))));
            dataObject.put(A01(21, 2, 117), nativeSignalObject);
        } catch (Throwable th) {
            C0593Hf.A02(th);
        }
        return dataObject.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0036 A[SYNTHETIC] */
    @android.annotation.SuppressLint({"CatchGeneralException"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A03(java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            r11 = this;
            r0 = 0
            r0 = 0
            r0 = 0
            r2 = 0
            r0 = 0
            r0 = 0
            com.facebook.ads.redexgen.X.HU r0 = r11.A05
            if (r0 == 0) goto L12
            com.facebook.ads.redexgen.X.HU r0 = r11.A05
            java.util.List r0 = r0.A02()
            if (r0 != 0) goto L13
        L12:
            return
        L13:
            com.facebook.ads.redexgen.X.HU r0 = r11.A05
            java.util.List r1 = r0.A02()
            r0 = 5
        L1a:
            switch(r0) {
                case 5: goto L2a;
                case 9: goto L1e;
                case 12: goto L3c;
                default: goto L1d;
            }
        L1d:
            goto L1a
        L1e:
            java.util.Iterator r2 = (java.util.Iterator) r2     // Catch: java.lang.Throwable -> L70
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Throwable -> L70
            com.facebook.ads.redexgen.X.Fq r0 = (com.facebook.ads.redexgen.X.InterfaceC0552Fq) r0     // Catch: java.lang.Throwable -> L70
            r0.A32()     // Catch: java.lang.Throwable -> L70
            goto L30
        L2a:
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L70
            java.util.Iterator r2 = r1.iterator()     // Catch: java.lang.Throwable -> L70
        L30:
            boolean r0 = r2.hasNext()     // Catch: java.lang.Throwable -> L70
            if (r0 == 0) goto L39
            r0 = 9
            goto L1a
        L39:
            r0 = 12
            goto L1a
        L3c:
            org.json.JSONObject r0 = com.facebook.ads.redexgen.X.AbstractC0556Fu.A01     // Catch: java.lang.Throwable -> L70
            r11.A01 = r0     // Catch: java.lang.Throwable -> L70
            org.json.JSONObject r0 = com.facebook.ads.redexgen.X.AbstractC0556Fu.A00     // Catch: java.lang.Throwable -> L70
            r11.A00 = r0     // Catch: java.lang.Throwable -> L70
            java.lang.String r9 = r11.A00()     // Catch: java.lang.Throwable -> L70
            com.facebook.ads.redexgen.X.Fi r0 = r11.A04     // Catch: java.lang.Throwable -> L70
            com.facebook.ads.redexgen.X.FQ r0 = r0.A0T()     // Catch: java.lang.Throwable -> L70
            if (r0 == 0) goto L12
            com.facebook.ads.redexgen.X.Fi r0 = r11.A04     // Catch: java.lang.Throwable -> L70
            com.facebook.ads.redexgen.X.FQ r3 = r0.A0T()     // Catch: java.lang.Throwable -> L70
            java.lang.String r7 = com.facebook.ads.redexgen.X.C0592He.A00()     // Catch: java.lang.Throwable -> L70
            com.facebook.ads.redexgen.X.Hd r0 = com.facebook.ads.redexgen.X.EnumC0591Hd.A03     // Catch: java.lang.Throwable -> L70
            java.lang.String r8 = r0.toString()     // Catch: java.lang.Throwable -> L70
            r2 = 61
            r1 = 2
            r0 = 71
            java.lang.String r10 = A01(r2, r1, r0)     // Catch: java.lang.Throwable -> L70
            r6 = r14
            r5 = r13
            r4 = r12
            r3.A4V(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L70
            goto L12
        L70:
            r0 = move-exception
            com.facebook.ads.redexgen.X.C0593Hf.A02(r0)
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.GU.A03(java.lang.String, java.lang.String, java.lang.String):void");
    }
}
