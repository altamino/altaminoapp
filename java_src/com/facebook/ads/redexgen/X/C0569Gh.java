package com.facebook.ads.redexgen.X;

import android.os.Build;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0569Gh implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0586Gy A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{22, 20, 3, 30, 1, 30, 3, 30, 18, 4, 40, 24, 25, 40, 4, 18, 20, 24, 25, 19, 22, 5, 14, 40, 19, 30, 4, 7, 27, 22, 14, 4, 54, 57, 51, 37, 56, 62, 51, 121, 36, 56, 49, 35, 32, 54, 37, 50, 121, 54, 52, 35, 62, 33, 62, 35, 62, 50, 36, 8, 56, 57, 8, 36, 50, 52, 56, 57, 51, 54, 37, 46, 8, 51, 62, 36, 39, 59, 54, 46, 36, 73, 89, 72, 95, 95, 84, 101, 74, 85, 72, 78, 72, 91, 83, 78, 99, 120, 125, 120, 121, 97, 120, 120, 119, 125, 107, 118, 112, 125, 55, 113, 120, 107, 125, 110, 120, 107, 124, 55, 106, 122, 107, 124, 124, 119, 55, 117, 120, 119, 125, 106, 122, 120, 105, 124, 35, 51, 34, 53, 53, 62, 15, 60, 49, 62, 52, 35, 51, 49, 32, 53, 3, 12, 6, 16, 13, 11, 6, 76, 10, 3, 16, 6, 21, 3, 16, 7, 76, 17, 1, 16, 7, 7, 12, 76, 18, 13, 16, 22, 16, 3, 11, 22};
    }

    public C0569Gh(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0569Gh c0569Gh = this;
        c0569Gh.A00.A03(A00(81, 15, 9), Boolean.valueOf(c0569Gh.A00.A02.hasSystemFeature(A00(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 32, 81))));
        c0569Gh.A00.A03(A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 16, 99), Boolean.valueOf(c0569Gh.A00.A02.hasSystemFeature(A00(103, 33, 42))));
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0569Gh = c0569Gh;
                    c0569Gh.A00.A02(A00(0, 32, 68), A00(96, 7, 37));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0569Gh = c0569Gh;
                    c0569Gh.A00.A03(A00(0, 32, 68), Boolean.valueOf(c0569Gh.A00.A02.hasSystemFeature(A00(32, 49, 100))));
                    c = 3;
                    break;
            }
        }
    }
}
