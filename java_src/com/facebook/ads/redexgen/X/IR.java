package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.narvii.util.ws.WsMessage;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum IR {
    A08(9000, A00(29, 30, 115)),
    A06(AuthApiStatusCodes.AUTH_API_ACCESS_FORBIDDEN, A00(0, 29, 98)),
    A05(AuthApiStatusCodes.AUTH_API_CLIENT_ERROR, A00(WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 35, 76)),
    A07(AuthApiStatusCodes.AUTH_API_SERVER_ERROR, A00(PsExtractor.PRIVATE_STREAM_1, 33, 41)),
    A04(AuthApiStatusCodes.AUTH_TOKEN_ERROR, A00(74, 35, 77));

    private static byte[] A02;
    private final int A00;
    private final String A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{90, 125, 117, 112, 121, 120, 60, 104, 115, 60, 110, 121, 125, 120, 60, 122, 110, 115, 113, 60, 120, 125, 104, 125, 126, 125, 111, 121, 50, 76, 99, 45, 120, 99, 102, 99, 98, 122, 99, 45, 104, 127, 127, 98, 127, 45, 101, 108, 126, 45, 98, 110, 110, 120, 127, 127, 104, 105, 35, 112, 117, 96, 117, 118, 117, 103, 113, 107, 125, 122, 103, 113, 102, 96, 117, 82, 90, 95, 86, 87, 19, 71, 92, 19, 87, 86, 95, 86, 71, 86, 19, 65, 92, 68, 19, 85, 65, 92, 94, 19, 87, 82, 71, 82, 81, 82, 64, 86, 29, 22, 19, 6, 19, 16, 19, 1, 23, 13, 1, 23, 30, 23, 17, 6, 109, 104, 125, 104, 107, 104, 122, 108, 118, 109, 108, 101, 108, 125, 108, 116, 83, 91, 94, 87, 86, 18, 70, 93, 18, 91, 92, 65, 87, 64, 70, 18, 64, 93, 69, 18, 91, 92, 70, 93, 18, 86, 83, 70, 83, 80, 83, 65, 87, 28, 82, 87, 66, 87, 84, 87, 69, 83, 73, 67, 70, 82, 87, 66, 83, 17, 54, 62, 59, 50, 51, 119, 35, 56, 119, 34, 39, 51, 54, 35, 50, 119, 37, 56, 32, 119, 62, 57, 119, 51, 54, 35, 54, 53, 54, 36, 50, 121, 5, 30, 27, 30, 31, 7, 30};
    }

    static {
        A01();
    }

    IR(int i, String str) {
        this.A00 = i;
        this.A01 = str;
    }

    public final int A02() {
        return this.A00;
    }

    public final String A03() {
        return this.A01;
    }
}
