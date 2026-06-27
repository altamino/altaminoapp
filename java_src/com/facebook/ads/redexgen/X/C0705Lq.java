package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Lq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0705Lq extends Lp {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{-29, -30, -73, -29, -31, -28, -32, -39, -24, -39, -111, -58, -107, -107, -62, -62, -110, -81, -63, -50, -46, -63, -50, 124, -63, -50, -50, -53, -50, 124, -53, -65, -65, -47, -50, -50, -63, -64, -5, 13, 26, 30, 13, 26, -56, 26, 13, 24, 20, 17, 13, 12, -56, 27, 29, 11, 11, 13, 27, 27, 14, 29, 20, 20, 33, -41, 5, -39, 6, 9, -40, -39, 8, -89, -90, 125, -86, -86, -89, -86};
    }

    public C0705Lq(C0710Lw c0710Lw, long j) {
        this.A01 = c0710Lw;
        this.A00 = j;
    }

    private final void A02(C0715Mb c0715Mb) {
        String strA01 = null;
        String strA04 = null;
        AdErrorType adErrorTypeAdErrorTypeFromCode = null;
        C0710Lw c0710Lw = null;
        C0699Lj.A06(this.A01.A00);
        this.A01.A02 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        c0715Mb = c0715Mb;
                        C0716Mc response = c0715Mb.A00();
                        if (response == null) {
                            break;
                        } else {
                            strA01 = response.A01();
                            C0713Lz c0713LzA06 = this.A01.A06.A06(this.A01.A05, strA01, this.A00, this.A01.A03);
                            if (c0713LzA06.A01() != EnumC0712Ly.A03) {
                                break;
                            } else {
                                M1 m1 = (M1) c0713LzA06;
                                strA04 = m1.A04();
                                adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(m1.A03(), AdErrorType.ERROR_MESSAGE);
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
                    c0710Lw.A0J(LQ.A02(adErrorTypeAdErrorTypeFromCode, strA01));
                    return;
                case 25:
                    strA04 = strA04;
                    strA01 = strA04;
                    c = 23;
                    continue;
            }
        }
        this.A01.A0J(LQ.A02(AdErrorType.NETWORK_ERROR, c0715Mb.getMessage()));
    }

    @Override // com.facebook.ads.redexgen.X.Lp
    public final void A03(C0716Mc c0716Mc) {
        C0695Lf.A05(A00(0, 10, 66), A00(38, 27, 118), A00(65, 8, 113));
        if (c0716Mc != null) {
            String strA01 = c0716Mc.A01();
            C0699Lj.A06(this.A01.A00);
            this.A01.A02 = null;
            this.A01.A0T(strA01, this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Lp
    public final void A04(Exception exc) {
        C0705Lq c0705Lq = this;
        C0695Lf.A05(A00(73, 7, 6), A00(17, 21, 42), A00(10, 7, 46));
        char c = C0715Mb.class.equals(exc.getClass()) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0705Lq = c0705Lq;
                    exc = exc;
                    c0705Lq.A02((C0715Mb) exc);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0705Lq = c0705Lq;
                    exc = exc;
                    c0705Lq.A01.A0J(LQ.A02(AdErrorType.NETWORK_ERROR, exc.getMessage()));
                    c = 3;
                    break;
            }
        }
    }
}
