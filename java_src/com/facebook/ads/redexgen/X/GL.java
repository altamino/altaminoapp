package com.facebook.ads.redexgen.X;

import android.os.Build;
import io.agora.rtc.Constants;
import java.util.Arrays;
import org.apache.commons.compress.compressors.bzip2.BZip2Constants;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GL implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 68);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-89, -70, -82, -79, -87, -92, -70, -72, -86, -73, -21, -2, -14, -11, -19, -24, -7, -5, -14, -9, -3, -48, -29, -41, -38, -46, -51, -32, -49, -46, -41, -35, -86, -67, -79, -76, -84, -89, -69, -83, -70, -79, -87, -76, -53, -34, -46, -43, -51, -56, -36, -51, -44, -56, -46, -41, -35, -74, -55, -67, -64, -72, -77, -63, -61, -72, -71, -64, -81, -62, -74, -71, -79, -84, -79, -74, -64, -67, -71, -82, -58, -28, -9, -21, -18, -26, -31, -28, -15, -15, -10, -18, -15, -29, -26, -25, -12, -88, -69, -81, -78, -86, -91, -82, -89, -72, -86, -67, -89, -72, -85, 27, 46, 34, 37, 29, 24, 28, 40, 29, 30, 39, 26, 38, 30, 20, 33, 33, 30, 33, -12, 7, -5, -2, -10, -15, 2, 4, 1, -10, 7, -11, 6, -8, 11, -1, 2, -6, -11, -1, -6, -10, 9, -3, 0, -8, -13, -9, 4, 9, -13, -11, -10, -3, 26, 45, 33, 36, 28, 23, 28, 29, 46, 33, 27, 29, -52, -33, -45, -42, -50, -55, -52, -36, -53, -40, -50, -41, -22, -34, -31, -39, -44, -35, -28, -24, -23, 38, 31, 28, 31, 32, 40, 31, -41, -22, -34, -31, -39, -44, -24, -38, -40, -22, -25, -34, -23, -18, -44, -27, -42, -23, -40, -35, 35, 54, 42, 45, 37, 32, 53, 58, 49, 38, -7, 12, 0, 3, -5, -10, -7, -8, 10, -4, -10, 6, 10, -18, 1, -11, -8, -16, -21, -18, -5, -19, -2, -16, -23, -4, -16, -13, -21, -26, -5, -24, -18, -6, -62, -43, -55, -52, -60, -65, -44, -55, -51, -59, -18, 1, -11, -8, -16, -21, -2, -15, -8, -15, -19, -1, -15, 31, 50, 38, 41, 33, 28, 42, 30, 43, 50, 35, 30, 32, 49, 50, 47, 34, 47};
    }

    public GL(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GL gl = this;
        gl.A00.A03(A00(176, 11, 38), Build.BRAND);
        gl.A00.A03(A00(247, 11, 72), Build.BOARD);
        gl.A00.A03(A00(81, 16, 62), Build.BOOTLOADER);
        gl.A00.A03(A00(291, 18, 121), Build.MANUFACTURER);
        gl.A00.A03(A00(57, 11, 16), Build.MODEL);
        gl.A00.A03(A00(187, 10, 49), Build.HOST);
        gl.A00.A03(A00(97, 14, 2), Build.HARDWARE);
        gl.A00.A03(A00(164, 12, 116), Build.DEVICE);
        gl.A00.A03(A00(10, 11, 69), Build.FINGERPRINT);
        gl.A00.A03(A00(68, 13, 9), Build.DISPLAY);
        gl.A00.A03(A00(0, 10, 1), Build.USER);
        gl.A00.A03(A00(130, 13, 78), Build.PRODUCT);
        gl.A00.A03(A00(BZip2Constants.MAX_ALPHA_SIZE, 10, 67), Build.TAGS);
        gl.A00.A03(A00(268, 10, 28), Long.valueOf(Build.TIME));
        gl.A00.A03(A00(224, 10, 125), Build.TYPE);
        gl.A00.A03(A00(143, 8, 82), Build.ID);
        gl.A00.A03(A00(111, 14, 117), Build.VERSION.CODENAME);
        gl.A00.A03(A00(278, 13, 72), Build.VERSION.RELEASE);
        gl.A00.A03(A00(44, 13, 37), Integer.valueOf(Build.VERSION.SDK_INT));
        char c = Build.VERSION.SDK_INT >= 21 ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    if (Build.SUPPORTED_ABIS == null) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    gl = gl;
                    gl.A00.A03(A00(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 13, 80), Build.SUPPORTED_ABIS[0]);
                    c = 4;
                    break;
                case 4:
                    if (Build.VERSION.SDK_INT < 23) {
                        c = '\n';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    gl = gl;
                    gl.A00.A03(A00(21, 11, 42), Build.getRadioVersion());
                    gl.A00.A03(A00(204, 20, 49), Build.VERSION.SECURITY_PATCH);
                    gl.A00.A03(A00(234, 13, 83), Build.VERSION.BASE_OS);
                    c = 6;
                    break;
                case 6:
                    if (Build.VERSION.SDK_INT >= 26) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    gl = gl;
                    gl.A00.A03(A00(32, 12, 4), Build.SERIAL);
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    gl = gl;
                    gl.A00.A02(A00(32, 12, 4), A00(197, 7, 109));
                    c = '\b';
                    break;
                case '\n':
                    gl = gl;
                    gl.A00.A02(A00(21, 11, 42), A00(197, 7, 109));
                    gl.A00.A02(A00(204, 20, 49), A00(197, 7, 109));
                    gl.A00.A02(A00(234, 13, 83), A00(197, 7, 109));
                    c = 6;
                    break;
                case 11:
                    gl = gl;
                    gl.A00.A02(A00(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 13, 80), A00(125, 5, 107));
                    c = 4;
                    break;
            }
        }
    }
}
