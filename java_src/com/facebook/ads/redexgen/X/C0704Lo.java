package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lo, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0704Lo implements InterfaceC0703Ln {
    private static byte[] A02;
    public final /* synthetic */ long A00;
    public final /* synthetic */ C0710Lw A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 41);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{122, 41, 118, 124, 44, 121, 42, 41, 88, 89, 116, 88, 90, 71, 91, 82, 67, 82, 104, 94, 73, 77, 94, 73, 27, 94, 73, 73, 84, 73, 27, 84, 88, 88, 78, 73, 73, 94, 95, 121, 79, 88, 92, 79, 88, 10, 88, 79, 90, 70, 67, 79, 78, 10, 89, 95, 73, 73, 79, 89, 89, 76, 95, 70, 70, 83, 117, 115, 112, 118, 118, 32, 32, 118, 22, 23, 60, 11, 11, 22, 11};
    }

    public C0704Lo(C0710Lw c0710Lw, long j) {
        this.A01 = c0710Lw;
        this.A00 = j;
    }

    private final void A02(C02564a c02564a) {
        C0710Lw c0710Lw = null;
        AdErrorType errorType = null;
        String strA3H = null;
        String strA04 = null;
        C0699Lj.A06(this.A01.A00);
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        c02564a = c02564a;
                        C5e c5eA00 = c02564a.A00();
                        if (c5eA00 == null) {
                            break;
                        } else {
                            strA3H = c5eA00.A3H();
                            C0713Lz c0713LzA06 = this.A01.A06.A06(this.A01.A05, strA3H, this.A00, this.A01.A03);
                            if (c0713LzA06.A01() != EnumC0712Ly.A03) {
                                break;
                            } else {
                                M1 m1 = (M1) c0713LzA06;
                                strA04 = m1.A04();
                                errorType = AdErrorType.adErrorTypeFromCode(m1.A03(), AdErrorType.ERROR_MESSAGE);
                                c0710Lw = this.A01;
                                if (strA04 == null) {
                                    c = 23;
                                } else {
                                    c = 25;
                                    continue;
                                }
                            }
                        }
                    } catch (JSONException unused) {
                        break;
                    }
                case 23:
                    c0710Lw.A0J(LQ.A02(errorType, strA3H));
                    return;
                case 25:
                    strA04 = strA04;
                    strA3H = strA04;
                    c = 23;
                    continue;
            }
        }
        this.A01.A0J(LQ.A02(AdErrorType.NETWORK_ERROR, c02564a.getMessage()));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0703Ln
    public final void A55(C5e c5e) {
        C0695Lf.A05(A00(8, 10, 30), A00(39, 27, 3), A00(0, 8, 102));
        if (c5e != null) {
            String strA3H = c5e.A3H();
            C0699Lj.A06(this.A01.A00);
            this.A01.A0T(strA3H, this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0703Ln
    public final void A5H(Exception exc) {
        C0704Lo c0704Lo = this;
        C0695Lf.A05(A00(74, 7, 80), A00(18, 21, 18), A00(66, 8, 106));
        char c = C02564a.class.equals(exc.getClass()) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0704Lo = c0704Lo;
                    exc = exc;
                    c0704Lo.A02((C02564a) exc);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0704Lo = c0704Lo;
                    exc = exc;
                    c0704Lo.A01.A0J(LQ.A02(AdErrorType.NETWORK_ERROR, exc.getMessage()));
                    c = 3;
                    break;
            }
        }
    }
}
