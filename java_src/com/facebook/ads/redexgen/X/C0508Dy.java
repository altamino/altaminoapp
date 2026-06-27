package com.facebook.ads.redexgen.X;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Dy, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0508Dy implements InterfaceC0442Bk {
    private static byte[] A01;
    public final /* synthetic */ C0509Dz A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-106, 1, 0, -14, -39, -28};
    }

    public C0508Dy(C0509Dz c0509Dz) {
        this.A00 = c0509Dz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0442Bk
    public final AbstractC0528Es A31() throws NoSuchAlgorithmException, UnsupportedEncodingException {
        C0508Dy c0508Dy = this;
        int i = 0;
        AbstractC0528Es abstractC0528EsA07 = null;
        StringBuilder sb = null;
        char c = c0508Dy.A00.A04 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    sb = new StringBuilder();
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    c0508Dy = c0508Dy;
                    if (i >= c0508Dy.A00.A04.length) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0508Dy = c0508Dy;
                    sb = sb;
                    sb.append(c0508Dy.A00.A04[i].name);
                    if (i == c0508Dy.A00.A04.length - 1) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    sb = sb;
                    sb.append(A00(0, 1, 86));
                    c = 6;
                    break;
                case 6:
                    i++;
                    c = 3;
                    break;
                case 7:
                    c0508Dy = c0508Dy;
                    abstractC0528EsA07 = c0508Dy.A00.A07(F6.A05);
                    c = '\t';
                    break;
                case '\b':
                    c0508Dy = c0508Dy;
                    sb = sb;
                    abstractC0528EsA07 = c0508Dy.A00.A08(FH.A08(sb.toString().getBytes(A00(1, 5, 118)), FG.A05));
                    c = '\t';
                    break;
                case '\t':
                    return abstractC0528EsA07;
            }
        }
    }
}
