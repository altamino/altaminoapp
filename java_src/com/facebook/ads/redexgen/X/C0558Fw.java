package com.facebook.ads.redexgen.X;

import android.os.Build;
import io.agora.rtc.Constants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0558Fw implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0561Fz A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{15, -4, 13, 2, 0, 15, -6, 14, -1, 6, -6, 17, 0, 13, 14, 4, 10, 9, -12, 3, 3, -14, -7, -1, -12, -6, 6, -120, -105, -105, -122, -102, -106, -100, -103, -118, -116, -122, -117, -112, -103, -70, -74, -69, -84, -64, -79, -72, -84, -61, -78, -65, -64, -74, -68, -69, -53, -64, -51, -50, -60, -50, -49, -64, -55, -49, -17, -18, -4, -3, 14, 1, -5, -3, -9, 8, 10, 7, 12, -3, -5, 12, -3, -4, -9, -4, -7, 12, -7, -9, -4, 1, 10, -61, -46, -46, -63, -42, -61, -43, -51, -63, -61, -56, -56, -53, -48, -53, -42, -37, -37, -22, -22, -39, -22, -20, -23, -35, -33, -19, -19, -39, -24, -37, -25, -33, -99, -84, -84, -101, -80, -92, -95, -87, -95, -78, -63, -63, -80, -75, -74, -77, -58, -72, -72, -78, -77, -67, -74, 13, 6, 3, 6, 7, 15, 6, -67, -52, -52, -69, -64, -67, -48, -67, -69, -64, -59, -50, -98, -83, -83, -100, -96, -98, -79, -94, -92, -84, -81, -74};
    }

    public C0558Fw(C0561Fz c0561Fz) {
        this.A00 = c0561Fz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0558Fw c0558Fw = this;
        boolean z = false;
        C0561Fz c0561Fz = null;
        String strA00 = null;
        boolean z2 = true;
        C0561Fz c0561Fz2 = c0558Fw.A00;
        String strA002 = A00(135, 14, 47);
        char c = (c0558Fw.A00.A01.flags & 2) != 0 ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    z = z2;
                    c = 3;
                    break;
                case 3:
                    c0558Fw = c0558Fw;
                    c0561Fz2 = c0561Fz2;
                    strA002 = strA002;
                    c0561Fz2.A03(strA002, Boolean.valueOf(z));
                    c0558Fw.A00.A03(A00(18, 9, 113), Integer.valueOf(c0558Fw.A00.A01.flags));
                    c0561Fz = c0558Fw.A00;
                    strA00 = A00(56, 10, 57);
                    if ((c0558Fw.A00.A01.flags & 8) == 0) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0558Fw = c0558Fw;
                    c0561Fz = c0561Fz;
                    strA00 = strA00;
                    c0561Fz.A03(strA00, Boolean.valueOf(z2));
                    c0558Fw.A00.A03(A00(0, 18, 121), Integer.valueOf(c0558Fw.A00.A01.targetSdkVersion));
                    c0558Fw.A00.A03(A00(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 12, 58), c0558Fw.A00.A01.dataDir);
                    c0558Fw.A00.A03(A00(110, 16, 88), c0558Fw.A00.A01.processName);
                    c0558Fw.A00.A03(A00(27, 14, 5), c0558Fw.A00.A01.sourceDir);
                    c0558Fw.A00.A03(A00(93, 17, 64), c0558Fw.A00.A01.taskAffinity);
                    c0558Fw.A00.A03(A00(126, 9, 26), Integer.valueOf(c0558Fw.A00.A01.theme));
                    if (Build.VERSION.SDK_INT < 23) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0558Fw = c0558Fw;
                    c0558Fw.A00.A03(A00(68, 25, 118), c0558Fw.A00.A01.deviceProtectedDataDir);
                    c0558Fw.A00.A03(A00(41, 15, 43), Integer.valueOf(c0558Fw.A00.A01.minSdkVersion));
                    c = 6;
                    break;
                case 6:
                    if (Build.VERSION.SDK_INT < 25) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0558Fw = c0558Fw;
                    c0558Fw.A00.A03(A00(168, 12, 27), Integer.valueOf(c0558Fw.A00.A01.category));
                    c = '\b';
                    break;
                case '\b':
                    c0558Fw.A00.A03(A00(66, 2, 89), Long.valueOf(System.currentTimeMillis()));
                    return;
                case '\t':
                    c0558Fw = c0558Fw;
                    c0558Fw.A00.A02(A00(168, 12, 27), A00(149, 7, 118));
                    c = '\b';
                    break;
                case '\n':
                    c0558Fw = c0558Fw;
                    c0558Fw.A00.A02(A00(68, 25, 118), A00(149, 7, 118));
                    c0558Fw.A00.A02(A00(41, 15, 43), A00(149, 7, 118));
                    c = 6;
                    break;
                case 11:
                    z2 = false;
                    c = 4;
                    break;
                case '\f':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
