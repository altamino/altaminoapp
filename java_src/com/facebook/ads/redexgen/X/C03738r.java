package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.view.ViewGroup;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8r, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C03738r extends C03698n {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
        A00 = new byte[]{-92, -105, -87, -109, -92, -106, -105, -106, -120, -101, -106, -105, -95, 115, -106, 118, -109, -90, -109, 116, -89, -96, -106, -98, -105};
    }

    private C03738r(C8s c8s) {
        super(c8s);
    }

    @Override // com.facebook.ads.redexgen.X.C03698n, com.facebook.ads.redexgen.X.InterfaceC03688m
    public final void A2f(String rewardedVideoError) {
        C03738r c03738r = this;
        String strA02 = null;
        char c = c03738r.A00.get() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c03738r = c03738r;
                    rewardedVideoError = rewardedVideoError;
                    c03738r.A00.get().A0H(rewardedVideoError);
                    String strA022 = J8.A09.A02();
                    strA02 = J8.A0A.A02();
                    if (!rewardedVideoError.equals(strA022)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    rewardedVideoError = rewardedVideoError;
                    strA02 = strA02;
                    if (!rewardedVideoError.equals(strA02)) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c03738r = c03738r;
                    c03738r.A00.get().finish();
                    c = 2;
                    break;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.facebook.ads.redexgen.X.PK] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.facebook.ads.redexgen.X.PK] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.os.Bundle, com.facebook.ads.redexgen.X.RU] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.facebook.ads.redexgen.X.8l] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // com.facebook.ads.redexgen.X.C03698n, com.facebook.ads.redexgen.X.InterfaceC03688m
    public final void A2g(String str, C0660Jv c0660Jv) {
        C03738r c03738r = this;
        ?? A09 = 0;
        C8s c8s = null;
        ?? r4 = 0;
        super.A2g(str, c0660Jv);
        char c = c03738r.A00.get() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c03738r = c03738r;
                    str = str;
                    c8s = c03738r.A00.get();
                    if (!str.equals(J8.A05.A02())) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0660Jv = c0660Jv;
                    c8s = c8s;
                    r4 = 0;
                    r4 = 0;
                    Intent intent = new Intent();
                    intent.putExtra(A00(0, 25, 21), ((PX) c0660Jv).A00());
                    A09 = new C03708o(c8s, intent, AdEventManagerImpl.getInstance(c8s.A0M()), r4).A09();
                    if (c8s.A0A == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8s = c8s;
                    c8s.A0A.A0I();
                    c = 6;
                    break;
                case 6:
                    c8s = c8s;
                    A09 = (PK) A09;
                    c8s.A0A = r4;
                    OY.A0U((ViewGroup) A09);
                    c8s.A09 = A09;
                    A09.A45(c8s.A0L(), r4, c8s);
                    c = 2;
                    break;
            }
        }
    }
}
