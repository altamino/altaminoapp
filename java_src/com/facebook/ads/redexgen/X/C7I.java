package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7I, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C7I implements Runnable {
    public static Comparator<C7H> A04;
    private static byte[] A05;
    public static final ThreadLocal<C7I> A06;
    public long A00;
    public long A01;
    public ArrayList<C8H> A02 = new ArrayList<>();
    private ArrayList<C7H> A03 = new ArrayList<>();

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A05 = new byte[]{8, 12, -42, 6, 40, 27, 28, 27, 42, 25, 30, 0, 4, -50, -4, 19, 33, 34, 19, 18, -50, -2, 32, 19, 20, 19, 34, 17, 22};
    }

    static {
        A03();
        A06 = new ThreadLocal<>();
        A04 = new Comparator<C7H>() { // from class: com.facebook.ads.redexgen.X.7E
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.Comparator
            /* renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final int compare(C7H c7h, C7H c7h2) {
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = -1;
                int i6 = 1;
                char c = c7h.A03 == null ? (char) 2 : (char) 19;
                while (true) {
                    switch (c) {
                        case 2:
                            i2 = i6;
                            c = 3;
                            break;
                        case 3:
                            c7h2 = c7h2;
                            if (c7h2.A03 != null) {
                                c = 18;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            i3 = i6;
                            c = 5;
                            break;
                        case 5:
                            if (i2 == i3) {
                                c = '\t';
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 6:
                            c7h = c7h;
                            if (c7h.A03 != null) {
                                c = '\b';
                                break;
                            } else {
                                c = 7;
                                break;
                            }
                        case 7:
                            return i6;
                        case '\b':
                            i6 = i5;
                            c = 7;
                            break;
                        case '\t':
                            c7h = c7h;
                            c7h2 = c7h2;
                            if (c7h.A04 == c7h2.A04) {
                                c = '\r';
                                break;
                            } else {
                                c = '\n';
                                break;
                            }
                        case '\n':
                            c7h = c7h;
                            if (!c7h.A04) {
                                c = '\f';
                                break;
                            } else {
                                c = 11;
                                break;
                            }
                        case 11:
                            i6 = i5;
                            c = 7;
                            break;
                        case '\f':
                            i5 = i6;
                            c = 11;
                            break;
                        case '\r':
                            c7h = c7h;
                            c7h2 = c7h2;
                            i = c7h2.A02 - c7h.A02;
                            if (i == 0) {
                                c = 15;
                                break;
                            } else {
                                c = 14;
                                break;
                            }
                        case 14:
                            i6 = i;
                            c = 7;
                            break;
                        case 15:
                            c7h = c7h;
                            c7h2 = c7h2;
                            i4 = c7h.A00 - c7h2.A00;
                            if (i4 == 0) {
                                c = 17;
                                break;
                            } else {
                                c = 16;
                                break;
                            }
                        case 16:
                            i6 = i4;
                            c = 7;
                            break;
                        case 17:
                            i6 = 0;
                            c = 7;
                            break;
                        case 18:
                            i3 = 0;
                            c = 5;
                            break;
                        case 19:
                            i2 = 0;
                            c = 3;
                            break;
                    }
                }
            }
        };
    }

    private C8G A00(C8H c8h, int i, long j) {
        C8G c8gA0I = null;
        AnonymousClass85 anonymousClass85 = null;
        char c = A08(c8h, i) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA0I = null;
                    c = 3;
                case 3:
                    return c8gA0I;
                case 4:
                    c8h = c8h;
                    anonymousClass85 = c8h.A0r;
                    c = 5;
                case 5:
                    c8h = c8h;
                    c8h.A1E();
                    c8gA0I = anonymousClass85.A0I(i, false, j);
                    if (c8gA0I == null) {
                        break;
                    } else {
                        c = c8gA0I.A0a() ? '\n' : (char) 14;
                    }
                case '\n':
                    c8gA0I = c8gA0I;
                    c = !c8gA0I.A0b() ? '\f' : (char) 14;
                case '\f':
                    c8gA0I = c8gA0I;
                    anonymousClass85.A0X(c8gA0I.A0H);
                    break;
                case 14:
                    try {
                        c8gA0I = c8gA0I;
                        anonymousClass85 = anonymousClass85;
                        anonymousClass85.A0d(c8gA0I, false);
                        break;
                    } catch (Throwable th) {
                        c8h.A1j(false);
                        throw th;
                    }
            }
            c8h.A1j(false);
            c = 3;
        }
    }

    private void A02() {
        C7I c7i = this;
        int i = 0;
        int totalTaskCount = 0;
        int totalTaskIndex = 0;
        C8H c8h = null;
        C7H c7h = null;
        C8H c8h2 = null;
        C7G c7g = null;
        int iAbs = 0;
        int i2 = 0;
        boolean z = false;
        int size = c7i.A02.size();
        int i3 = 0;
        int i4 = 0;
        int j = 2;
        while (true) {
            switch (j) {
                case 2:
                    if (i4 >= size) {
                        j = 6;
                        break;
                    } else {
                        j = 3;
                        break;
                    }
                case 3:
                    c7i = c7i;
                    c8h = c7i.A02.get(i4);
                    if (c8h.getWindowVisibility() != 0) {
                        j = 5;
                        break;
                    } else {
                        j = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A02.A04(c8h, false);
                    i3 += c8h.A02.A00;
                    j = 5;
                    break;
                case 5:
                    i4++;
                    j = 2;
                    break;
                case 6:
                    c7i = c7i;
                    c7i.A03.ensureCapacity(i3);
                    i = 0;
                    totalTaskCount = 0;
                    j = 7;
                    break;
                case 7:
                    if (totalTaskCount >= size) {
                        j = 19;
                        break;
                    } else {
                        j = 8;
                        break;
                    }
                case 8:
                    c7i = c7i;
                    c8h2 = c7i.A02.get(totalTaskCount);
                    if (c8h2.getWindowVisibility() == 0) {
                        j = 10;
                        break;
                    } else {
                        j = 9;
                        break;
                    }
                case 9:
                    totalTaskCount++;
                    j = 7;
                    break;
                case 10:
                    c8h2 = c8h2;
                    c7g = c8h2.A02;
                    iAbs = Math.abs(c7g.A01) + Math.abs(c7g.A02);
                    totalTaskIndex = 0;
                    j = 11;
                    break;
                case 11:
                    c7g = c7g;
                    int j2 = c7g.A00;
                    if (totalTaskIndex >= j2 * 2) {
                        j = 9;
                        break;
                    } else {
                        j = 12;
                        break;
                    }
                case 12:
                    c7i = c7i;
                    if (i < c7i.A03.size()) {
                        j = 18;
                        break;
                    } else {
                        j = 13;
                        break;
                    }
                case 13:
                    c7i = c7i;
                    c7h = new C7H();
                    c7i.A03.add(c7h);
                    j = 14;
                    break;
                case 14:
                    c7g = c7g;
                    i2 = c7g.A03[totalTaskIndex + 1];
                    if (i2 > iAbs) {
                        j = 17;
                        break;
                    } else {
                        j = 15;
                        break;
                    }
                case 15:
                    z = true;
                    j = 16;
                    break;
                case 16:
                    c8h2 = c8h2;
                    c7g = c7g;
                    c7h = c7h;
                    c7h.A04 = z;
                    c7h.A02 = iAbs;
                    c7h.A00 = i2;
                    c7h.A03 = c8h2;
                    c7h.A01 = c7g.A03[totalTaskIndex];
                    i++;
                    totalTaskIndex += 2;
                    j = 11;
                    break;
                case 17:
                    z = false;
                    j = 16;
                    break;
                case 18:
                    c7i = c7i;
                    c7h = c7i.A03.get(i);
                    j = 14;
                    break;
                case 19:
                    Collections.sort(c7i.A03, A04);
                    return;
            }
        }
    }

    private void A04(long j) {
        C7I c7i = this;
        C7H c7h = null;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c7i = c7i;
                    if (i >= c7i.A03.size()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7i = c7i;
                    c7h = c7i.A03.get(i);
                    if (c7h.A03 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return;
                case 5:
                    c7i = c7i;
                    c7h = c7h;
                    c7i.A06(c7h, j);
                    c7h.A00();
                    i++;
                    c = 2;
                    break;
            }
        }
    }

    private final void A05(long j) {
        A02();
        A04(j);
    }

    private void A06(C7H c7h, long j) {
        C7I c7i = this;
        long j2 = 0;
        C8G c8gA00 = null;
        char c = c7h.A04 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    j2 = Long.MAX_VALUE;
                    c = 3;
                    break;
                case 3:
                    c7i = c7i;
                    c7h = c7h;
                    c8gA00 = c7i.A00(c7h.A03, c7h.A01, j2);
                    if (c8gA00 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8gA00 = c8gA00;
                    if (c8gA00.A09 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8gA00 = c8gA00;
                    if (!c8gA00.A0a()) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8gA00 = c8gA00;
                    if (!c8gA00.A0b()) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c7i = c7i;
                    c8gA00 = c8gA00;
                    c7i.A07(c8gA00.A09.get(), j);
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    j2 = j;
                    c = 3;
                    break;
            }
        }
    }

    private void A07(@Nullable C8H c8h, long j) {
        int i = 0;
        C7G c7g = null;
        char c = c8h == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    if (!c8h.A0C) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    if (c8h.A01.A06() == 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8h.A1H();
                    c = 6;
                    break;
                case 6:
                    c8h = c8h;
                    c7g = c8h.A02;
                    c7g.A04(c8h, true);
                    if (c7g.A00 == 0) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    C02804y.A01(A01(11, 18, 48));
                    c8h.A0s.A05(c8h.A04);
                    i = 0;
                    c = '\r';
                    break;
                case '\r':
                    try {
                        c7g = c7g;
                        if (i >= c7g.A00 * 2) {
                            c = 19;
                            break;
                        } else {
                            c = 15;
                            break;
                        }
                    } catch (Throwable th) {
                        C02804y.A00();
                        throw th;
                    }
                case 15:
                    c7g = c7g;
                    A00(c8h, c7g.A03[i], j);
                    i += 2;
                    c = '\r';
                    break;
                case 19:
                    C02804y.A00();
                    c = 2;
                    break;
            }
        }
    }

    private static boolean A08(C8H c8h, int childCount) {
        C8G c8gA05 = null;
        boolean z = false;
        int iA06 = c8h.A01.A06();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA06) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = C8H.A05(c8h.A01.A0A(i));
                    if (c8gA05.A03 != childCount) {
                        i2 = 7;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0b()) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 7;
                        break;
                    }
                case 5:
                    z = true;
                    i2 = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    i++;
                    i2 = 2;
                    break;
                case 8:
                    z = false;
                    i2 = 6;
                    break;
            }
        }
    }

    public final void A09(C8H c8h) {
        this.A02.add(c8h);
    }

    public final void A0A(C8H c8h) {
        this.A02.remove(c8h);
    }

    public final void A0B(C8H c8h, int i, int i2) {
        C7I c7i = this;
        char c = c8h.isAttachedToWindow() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7i = c7i;
                    if (c7i.A01 != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7i = c7i;
                    c8h = c8h;
                    c7i.A01 = c8h.getNanoTime();
                    c8h.post(c7i);
                    c = 4;
                    break;
                case 4:
                    c8h.A02.A03(i, i2);
                    return;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        C7I c7i = this;
        int size = 0;
        int i = 0;
        C8H c8h = null;
        long jMax = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    C02804y.A01(A01(0, 11, 56));
                    if (!c7i.A02.isEmpty()) {
                        c = 7;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 7:
                    c7i = c7i;
                    size = c7i.A02.size();
                    jMax = 0;
                    i = 0;
                    c = '\n';
                    break;
                case '\n':
                    if (i >= size) {
                        c = 20;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c7i = c7i;
                    c8h = c7i.A02.get(i);
                    if (c8h.getWindowVisibility() != 0) {
                        c = 19;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c8h = c8h;
                    jMax = Math.max(c8h.getDrawingTime(), jMax);
                    c = 19;
                    break;
                case 19:
                    i++;
                    c = '\n';
                    break;
                case 20:
                    if (jMax != 0) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c7i = c7i;
                    c7i.A01 = 0L;
                    C02804y.A00();
                    c = 28;
                    break;
                case 22:
                    try {
                        c7i.A05(TimeUnit.MILLISECONDS.toNanos(jMax) + c7i.A00);
                        c7i.A01 = 0L;
                        C02804y.A00();
                        c = 28;
                        break;
                    } catch (Throwable th) {
                        c7i.A01 = 0L;
                        C02804y.A00();
                        throw th;
                    }
                case 27:
                    c7i = c7i;
                    c7i.A01 = 0L;
                    C02804y.A00();
                    c = 28;
                    break;
                case 28:
                    return;
            }
        }
    }
}
