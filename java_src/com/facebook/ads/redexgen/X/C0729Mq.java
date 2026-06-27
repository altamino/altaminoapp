package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.lang.Thread;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0729Mq {
    private static byte[] A09;
    private final Mg A00;
    private final InterfaceC0721Mi A01;
    private volatile Thread A07;
    private volatile boolean A08;
    private final Object A03 = new Object();
    private final Object A02 = new Object();
    private volatile int A06 = -1;
    private final AtomicInteger A04 = new AtomicInteger();
    private final AtomicReference<Throwable> A05 = new AtomicReference<>();

    static {
        A06();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A09 = new byte[]{65, 21, 8, 12, 4, 18, 113, 71, 79, 82, 79, 72, 65, 6, 85, 73, 83, 84, 69, 67, 6, 66, 71, 82, 71, 6, 79, 85, 6, 79, 72, 82, 67, 84, 84, 83, 86, 82, 67, 66, 7, 83, 113, 108, 123, 122, 64, 98, 96, 107, 102, 21, 41, 51, 52, 37, 35, 102, 52, 35, 39, 34, 35, 52, 102, 32, 41, 52, 102, 95, 125, 96, 119, 118, 76, 110, 108, 103, 106, 47, 106, 125, 125, 96, 125, 65, 122, 103, 102, 118, 125, 101, 124, 50, 98, 96, 125, 106, 107, 50, 116, 125, 96, 50, 52, 3, 3, 30, 3, 81, 3, 20, 16, 21, 24, 31, 22, 81, 2, 30, 4, 3, 18, 20, 81, 26, 45, 45, 48, 45, 127, 60, 51, 48, 44, 54, 49, 56, 127, 44, 48, 42, 45, 60, 58, 127};
    }

    public C0729Mq(InterfaceC0721Mi interfaceC0721Mi, Mg mg) {
        this.A01 = (InterfaceC0721Mi) N3.A00(interfaceC0721Mi);
        this.A00 = (Mg) N3.A00(mg);
    }

    private void A01() throws C0724Ml {
        C0729Mq c0729Mq = this;
        String str = null;
        Throwable th = null;
        int i = c0729Mq.A04.get();
        char c = i >= 1 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c0729Mq = c0729Mq;
                    c0729Mq.A04.set(0);
                    str = A00(104, 21, 73) + i + A00(0, 6, 89);
                    th = c0729Mq.A05.get();
                    if (!(th instanceof C0727Mo)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new C0727Mo(str);
                case 4:
                    th = th;
                    if (!(th instanceof C0725Mm)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    throw new C0725Mm(str);
                case 6:
                    throw new C0724Ml(str);
                case 7:
                    return;
            }
        }
    }

    private void A02() {
        try {
            this.A01.close();
        } catch (C0724Ml | IllegalArgumentException e) {
            A0B(new C0724Ml(A00(125, 21, 103) + this.A01, e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        int length = -1;
        int offset = 0;
        try {
            int offset2 = this.A00.available();
            this.A01.A6Q(offset2);
            length = this.A01.length();
            byte[] bArr = new byte[8192];
            while (true) {
                int i = this.A01.read(bArr);
                if (i != -1) {
                    synchronized (this.A02) {
                        if (!A0C()) {
                            this.A00.A2b(bArr, i);
                        } else {
                            A02();
                            A08(offset, length);
                            return;
                        }
                    }
                    offset2 = offset + i;
                    A08(offset2, length);
                } else {
                    A04();
                    return;
                }
            }
        } catch (Throwable th) {
            this.A05.set(th);
            this.A04.incrementAndGet();
            A0B(th);
        } finally {
            A02();
            A08(offset, length);
        }
    }

    private void A04() throws C0724Ml {
        synchronized (this.A02) {
            if (!A0C() && this.A00.available() == this.A01.length()) {
                this.A00.A2n();
            }
        }
    }

    private void A05() throws C0724Ml {
        synchronized (this.A03) {
            try {
                this.A03.wait(1000L);
            } catch (InterruptedException e) {
                throw new C0724Ml(A00(6, 35, 30), e);
            }
        }
    }

    private synchronized void A07() {
        boolean z = (this.A07 == null || this.A07.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.A08 && !this.A00.A3u() && !z) {
            this.A07 = new Thread(new N5(this), A00(51, 18, 126) + this.A01);
            this.A07.start();
        }
    }

    private void A08(long j, long j2) {
        A09(j, j2);
        synchronized (this.A03) {
            this.A03.notifyAll();
        }
    }

    private final void A09(long j, long j2) {
        C0729Mq c0729Mq = this;
        boolean sourceLengthKnown = false;
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        char c = j2 == 0 ? (char) 2 : (char) 15;
        while (true) {
            switch (c) {
                case 2:
                    sourceLengthKnown = z2;
                    c = 3;
                    break;
                case 3:
                    if (!sourceLengthKnown) {
                        c = 14;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i = 100;
                    c = 5;
                    break;
                case 5:
                    c0729Mq = c0729Mq;
                    if (i == c0729Mq.A06) {
                        c = '\r';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = z2;
                    c = 7;
                    break;
                case 7:
                    if (j2 < 0) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!z2) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c0729Mq = c0729Mq;
                    c0729Mq.A0F(i);
                    c = 11;
                    break;
                case 11:
                    c0729Mq.A06 = i;
                    return;
                case '\f':
                    z2 = false;
                    c = '\b';
                    break;
                case '\r':
                    z = false;
                    c = 7;
                    break;
                case 14:
                    i = (int) ((100 * j) / j2);
                    c = 5;
                    break;
                case 15:
                    sourceLengthKnown = false;
                    c = 3;
                    break;
            }
        }
    }

    private final void A0B(Throwable th) {
        if (th instanceof N2) {
            return;
        }
        Log.e(A00(41, 10, 59), A00(69, 16, 55), th);
    }

    private boolean A0C() {
        C0729Mq c0729Mq = this;
        boolean z = false;
        char c = !Thread.currentThread().isInterrupted() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0729Mq = c0729Mq;
                    if (!c0729Mq.A08) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final int A0D(byte[] bArr, long j, int i) throws C0724Ml {
        C0729Mq c0729Mq = this;
        int iA6i = 0;
        N6.A08(bArr, j, i);
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0729Mq = c0729Mq;
                    if (!c0729Mq.A00.A3u()) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 3:
                    c0729Mq = c0729Mq;
                    if (c0729Mq.A00.available() >= i + j) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0729Mq = c0729Mq;
                    if (!c0729Mq.A08) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0729Mq = c0729Mq;
                    c0729Mq.A07();
                    c0729Mq.A05();
                    c0729Mq.A01();
                    c = 2;
                    break;
                case 6:
                    c0729Mq = c0729Mq;
                    bArr = bArr;
                    iA6i = c0729Mq.A00.A6i(bArr, j, i);
                    if (!c0729Mq.A00.A3u()) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0729Mq = c0729Mq;
                    if (c0729Mq.A06 == 100) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0729Mq = c0729Mq;
                    c0729Mq.A06 = 100;
                    c0729Mq.A0F(100);
                    c = '\t';
                    break;
                case '\t':
                    return iA6i;
            }
        }
    }

    public final void A0E() {
        synchronized (this.A02) {
            String str = A00(85, 19, 42) + this.A01;
            try {
                this.A08 = true;
                if (this.A07 != null) {
                    this.A07.interrupt();
                }
                this.A00.close();
            } catch (C0724Ml e) {
                A0B(e);
            }
        }
    }

    public void A0F(int i) {
    }
}
