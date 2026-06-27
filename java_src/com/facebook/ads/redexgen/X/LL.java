package com.facebook.ads.redexgen.X;

import com.facebook.ads.VideoAutoplayBehavior;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum LL {
    A02,
    A04,
    A03;

    private static byte[] A00;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{107, 106, 105, 110, 122, 99, 123, 57, 56, 76, 69, 69};
    }

    static {
        A02();
    }

    public static VideoAutoplayBehavior A00(LL ll) {
        VideoAutoplayBehavior videoAutoplayBehavior = null;
        char c = ll == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    videoAutoplayBehavior = VideoAutoplayBehavior.DEFAULT;
                    c = 3;
                    break;
                case 3:
                    return videoAutoplayBehavior;
                case 4:
                    ll = ll;
                    switch (ll) {
                        case A02:
                            c = '\b';
                            break;
                        case A04:
                            c = 7;
                            break;
                        case A03:
                            c = 6;
                            break;
                        default:
                            c = 5;
                            break;
                    }
                case 5:
                    videoAutoplayBehavior = VideoAutoplayBehavior.DEFAULT;
                    c = 3;
                    break;
                case 6:
                    videoAutoplayBehavior = VideoAutoplayBehavior.OFF;
                    c = 3;
                    break;
                case 7:
                    videoAutoplayBehavior = VideoAutoplayBehavior.ON;
                    c = 3;
                    break;
                case '\b':
                    videoAutoplayBehavior = VideoAutoplayBehavior.DEFAULT;
                    c = 3;
                    break;
            }
        }
    }
}
