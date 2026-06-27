package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GH implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GO A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-61, -55, -54, -37, -54, -47, -44, -43, -54, -41, -60, -46, -44, -55, -54, -60, -54, -45, -58, -57, -47, -54, -55, -3, 2, 7, 8, -11, 0, 0, -13, 2, 3, 2, -13, 1, -11, 6, -1, -7, 8, -13, -11, 4, 4, 7, -104, -103, -86, -103, -96, -93, -92, -95, -103, -94, -88, -109, -89, -103, -88, -88, -99, -94, -101, -89, -109, -103, -94, -107, -106, -96, -103, -104, 7, 5, -12, -15, -1, -13, 5, 5, -15, 5, 6, 1, 4, -13, -7, -9, -15, -9, 0, -13, -12, -2, -9, -10, -110, -117, -120, -117, -116, -108, -117, -104, -101, -103, -106, -100, -91, -104, -103, -93, -100, -101, -76, -71, -66, -65, -84, -73, -73, -86, -71, -70, -71, -86, -72, -84, -67, -74, -80, -65, -86, -84, -69, -69, -66, -86, -80, -71, -84, -83, -73, -80, -81};
    }

    public GH(GO go) {
        this.A00 = go;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GH gh = this;
        String strA00 = null;
        GO go = null;
        GO go2 = null;
        boolean z = false;
        String strA002 = null;
        GO go3 = null;
        boolean z2 = false;
        String strA003 = null;
        boolean z3 = true;
        Object[] objArr = 0;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gh = gh;
                    gh.A00.A02(A00(1, 22, 74), A00(98, 7, 2));
                    gh.A00.A02(A00(74, 24, 119), A00(98, 7, 2));
                    gh.A00.A02(A00(116, 31, 48), A00(98, 7, 2));
                    gh.A00.A02(A00(105, 11, 28), A00(98, 7, 2));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gh = gh;
                    objArr = 0;
                    objArr = 0;
                    go2 = gh.A00;
                    strA00 = A00(1, 22, 74);
                    if (Settings.Global.getInt(gh.A00.A00.getContentResolver(), A00(46, 28, 25), 0) != z3) {
                        c = '\f';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = z3;
                    c = 6;
                    break;
                case 6:
                    gh = gh;
                    go2 = go2;
                    strA00 = strA00;
                    go2.A03(strA00, Boolean.valueOf(z));
                    go = gh.A00;
                    strA002 = A00(74, 24, 119);
                    if (Settings.Global.getInt(gh.A00.A00.getContentResolver(), A00(74, 24, 119), objArr == true ? 1 : 0) != z3) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z2 = z3;
                    c = '\b';
                    break;
                case '\b':
                    gh = gh;
                    go = go;
                    strA002 = strA002;
                    go.A03(strA002, Boolean.valueOf(z2));
                    go3 = gh.A00;
                    strA003 = A00(116, 31, 48);
                    if (Settings.Global.getInt(gh.A00.A00.getContentResolver(), A00(23, 23, 121), objArr == true ? 1 : 0) != z3) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    gh = gh;
                    go3 = go3;
                    strA003 = strA003;
                    go3.A03(strA003, Boolean.valueOf(z3));
                    gh.A00.A03(A00(105, 11, 28), Boolean.valueOf(String.valueOf(Settings.Global.getString(gh.A00.A00.getContentResolver(), A00(105, 11, 28))).equals(A00(0, 1, 119))));
                    c = 3;
                    break;
                case '\n':
                    z3 = objArr == true ? 1 : 0;
                    c = '\t';
                    break;
                case 11:
                    z2 = objArr == true ? 1 : 0;
                    c = '\b';
                    break;
                case '\f':
                    z = objArr == true ? 1 : 0;
                    c = 6;
                    break;
            }
        }
    }
}
