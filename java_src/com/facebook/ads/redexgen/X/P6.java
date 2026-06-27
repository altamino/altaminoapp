package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class P6 extends AnonymousClass27 {
    private static byte[] A05;
    public final /* synthetic */ int A00;
    public final /* synthetic */ Context A01;
    public final /* synthetic */ JY A02;
    public final /* synthetic */ PA A03;
    public final /* synthetic */ String A04;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A05 = new byte[]{-30, -9, -30, -22, -19, -30, -29, -19, -26, -32, -27, -22, -12, -20, -32, -12, -15, -30, -28, -26, -71, -38, -41, -22, -36, -107, -40, -25, -42, -24, -35, -107, -41, -38, -40, -42, -22, -24, -38, -107, -24, -70, -29, -21, -34, -25, -28, -29, -30, -38, -29, -23, -71, -42, -23, -42, -59, -25, -28, -21, -34, -39, -38, -25, -107, -29, -28, -23, -107, -34, -29, -33, -38, -40, -23, -38, -39, -110, -108, -127, -109, -104, -113, -124, 126, -126, -114, -125, -124, -64, -61, -61, -56, -45, -56, -50, -51, -64, -53, -66, -56, -51, -59, -50, -27, -5, 0, -3, -78, -5, 5, -78, 0, 7, -2, -2, -77, -108, -110, -108, -103, -106, 15, 17, -2, 16, 21, 12, 1};
    }

    public P6(Context context, String str, int i, PA pa, JY jy) {
        this.A01 = context;
        this.A04 = str;
        this.A00 = i;
        this.A03 = pa;
        this.A02 = jy;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        String strA03;
        Map<String, String> mapA01;
        String strA00;
        try {
            if (!P7.A0J(this.A01, this.A04, this.A00, this.A03)) {
                Throwable cause = this.A03.getCause();
                if (cause != null) {
                    strA03 = OE.A03(this.A01, cause);
                } else if (K1.A1I(this.A01)) {
                    strA03 = OE.A03(this.A01, this.A03);
                } else {
                    strA03 = A00(104, 0, 113) + this.A03.getMessage();
                }
                if (K1.A21(this.A01)) {
                    mapA01 = C0647Jh.A01(this.A01);
                } else if (this.A02 != null) {
                    mapA01 = this.A02.A3U();
                } else if (!P7.A02) {
                    mapA01 = C0647Jh.A01(this.A01);
                } else {
                    P7.A0G(new RuntimeException(A00(20, 57, 88), this.A03));
                    mapA01 = new HashMap<>();
                }
                String strA002 = A00(122, 7, 127);
                String stackTrace = this.A04;
                mapA01.put(strA002, stackTrace);
                String strA003 = A00(77, 12, 2);
                String stackTrace2 = String.valueOf(this.A00);
                mapA01.put(strA003, stackTrace2);
                JSONObject jSONObjectA02 = this.A03.A02();
                if (jSONObjectA02 != null) {
                    String strA004 = A00(89, 15, 66);
                    String stackTrace3 = jSONObjectA02.toString();
                    mapA01.put(strA004, stackTrace3);
                }
                String strA005 = A00(117, 5, 20);
                String stackTrace4 = this.A04;
                if (strA005.equals(stackTrace4) && (strA00 = JE.A00()) != null) {
                    String lastDiskSpace = A00(0, 20, 100);
                    mapA01.put(lastDiskSpace, strA00);
                }
                InterfaceC0640Ja debugEventSink = (InterfaceC0640Ja) P7.A08.get();
                if (debugEventSink != null) {
                    debugEventSink.A7I(strA03, mapA01, this.A01);
                    return;
                }
                String message = A00(104, 13, 117);
                Throwable deLogExceptionCause = new RuntimeException(message);
                P7.A0G(deLogExceptionCause);
            }
        } catch (Throwable th) {
            P7.A0G(th);
        }
    }
}
