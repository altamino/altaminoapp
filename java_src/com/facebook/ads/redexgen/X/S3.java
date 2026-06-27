package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class S3 {
    private static byte[] A08;
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final String A07;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 62);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A08 = new byte[]{4, 7, 9, 12, 55, 27, 28, 9, 26, 28, 55, 5, 27, 96, 105, 102, 108, 100, 109, 122, 87, 124, 97, 101, 109, 87, 101, 123, 119, 97, 119, 119, 109, 107, 106, 91, 98, 109, 106, 109, 119, 108, 91, 105, 119, 94, 73, 95, 92, 67, 66, 95, 73, 115, 73, 66, 72, 115, 65, 95, 83, 80, 94, 91, 96, 89, 86, 81, 86, 76, 87, 96, 82, 76, 124, 123, 124, 97, 124, 116, 121, 74, 96, 103, 121, 33, 42, 40, 26, 38, 42, 43, 49, 32, 43, 49, 26, 41, 42, 36, 33, 32, 33, 26, 40, 54, 127, 111, 126, 99, 96, 96, 83, 126, 105, 109, 104, 117, 83, 97, 127};
    }

    private S3(String str, long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.A07 = str;
        this.A01 = j;
        this.A03 = j2;
        this.A04 = j3;
        this.A00 = j4;
        this.A05 = j5;
        this.A02 = j6;
        this.A06 = j7;
    }

    public final Map<String, String> A02() {
        HashMap map = new HashMap(7);
        map.put(A00(74, 11, 43), this.A07);
        map.put(A00(13, 15, 54), String.valueOf(this.A01));
        map.put(A00(0, 13, 86), String.valueOf(this.A03));
        map.put(A00(45, 15, 18), String.valueOf(this.A04));
        map.put(A00(85, 21, 123), String.valueOf(this.A00));
        map.put(A00(106, 15, 50), String.valueOf(this.A05));
        map.put(A00(60, 14, 1), String.valueOf(this.A02));
        map.put(A00(28, 17, 58), String.valueOf(this.A06));
        return map;
    }
}
