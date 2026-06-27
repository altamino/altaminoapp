package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.C;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0761Nw {
    private static byte[] A02;
    private long A00;
    private long A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{97, 70, 94, 73, 68, 65, 76, 8, 70, 93, 69, 74, 77, 90, 8, 71, 78, 8, 70, 73, 70, 71, 91, 77, 75, 71, 70, 76, 91, 8, 78, 71, 90, 8, 92, 64, 77, 8, 92, 65, 69, 77, 90, 18, 8, 13, 76};
    }

    public C0761Nw(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, A00(0, 47, 99), Long.valueOf(j)));
        }
        this.A00 = System.nanoTime() + j;
        this.A01 = j;
    }

    public final synchronized void A02() {
        this.A00 = System.nanoTime();
        notifyAll();
    }

    public final synchronized void A03() {
        this.A00 = System.nanoTime() + this.A01;
    }

    public final synchronized void A04() throws InterruptedException {
        while (!A05()) {
            long jMin = Math.min(this.A00 - System.nanoTime(), 1L);
            wait(jMin / C.NANOS_PER_SECOND, (int) (jMin % C.NANOS_PER_SECOND));
        }
    }

    public final synchronized boolean A05() {
        return System.nanoTime() >= this.A00;
    }
}
