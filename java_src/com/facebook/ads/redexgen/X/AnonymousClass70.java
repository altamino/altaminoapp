package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.70, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass70 {
    private static byte[] A03;
    public final InterfaceC03306z A01;
    public final C03296y A00 = new C03296y();
    public final List<View> A02 = new ArrayList();

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{34, 36, 47, 63, 56, 49, 118, 34, 57, 118, 35, 56, 62, 63, 50, 51, 118, 55, 118, 32, 63, 51, 33, 118, 34, 62, 55, 34, 118, 33, 55, 37, 118, 56, 57, 34, 118, 62, 63, 50, 50, 51, 56, 22, 26, 82, 83, 94, 94, 95, 84, 26, 86, 83, 73, 78, 0, 100, 123, 119, 101, 50, 123, 97, 50, 124, 125, 102, 50, 115, 50, 113, 122, 123, 126, 118, 62, 50, 113, 115, 124, 124, 125, 102, 50, 122, 123, 118, 119, 50};
    }

    public AnonymousClass70(InterfaceC03306z interfaceC03306z) {
        this.A01 = interfaceC03306z;
    }

    private int A00(int limit) {
        AnonymousClass70 anonymousClass70 = this;
        int removedBefore = 0;
        int iA3K = 0;
        int iA03 = 0;
        int offset = limit < 0 ? 2 : 4;
        while (true) {
            switch (offset) {
                case 2:
                    removedBefore = -1;
                    offset = 3;
                    break;
                case 3:
                    return removedBefore;
                case 4:
                    anonymousClass70 = anonymousClass70;
                    iA3K = anonymousClass70.A01.A3K();
                    removedBefore = limit;
                    offset = 5;
                    break;
                case 5:
                    if (removedBefore >= iA3K) {
                        offset = 10;
                        break;
                    } else {
                        offset = 6;
                        break;
                    }
                case 6:
                    anonymousClass70 = anonymousClass70;
                    iA03 = limit - (removedBefore - anonymousClass70.A00.A03(removedBefore));
                    if (iA03 != 0) {
                        offset = 9;
                        break;
                    } else {
                        offset = 7;
                        break;
                    }
                case 7:
                    anonymousClass70 = anonymousClass70;
                    if (!anonymousClass70.A00.A08(removedBefore)) {
                        offset = 3;
                        break;
                    } else {
                        offset = 8;
                        break;
                    }
                case 8:
                    removedBefore++;
                    offset = 7;
                    break;
                case 9:
                    removedBefore += iA03;
                    offset = 5;
                    break;
                case 10:
                    removedBefore = -1;
                    offset = 3;
                    break;
            }
        }
    }

    private void A03(View view) {
        this.A02.add(view);
        this.A01.A5F(view);
    }

    private boolean A04(View view) {
        AnonymousClass70 anonymousClass70 = this;
        boolean z = false;
        char c = anonymousClass70.A02.remove(view) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass70 = anonymousClass70;
                    view = view;
                    anonymousClass70.A01.A5h(view);
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final int A05() {
        return this.A01.A3K() - this.A02.size();
    }

    public final int A06() {
        return this.A01.A3K();
    }

    public final int A07(View view) {
        AnonymousClass70 anonymousClass70 = this;
        int iA03 = -1;
        int iA3s = anonymousClass70.A01.A3s(view);
        char c = iA3s == -1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA03;
                case 3:
                    anonymousClass70 = anonymousClass70;
                    if (!anonymousClass70.A00.A08(iA3s)) {
                        c = 4;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 4:
                    anonymousClass70 = anonymousClass70;
                    iA03 = iA3s - anonymousClass70.A00.A03(iA3s);
                    c = 2;
                    break;
            }
        }
    }

    public final View A08(int i) {
        AnonymousClass70 anonymousClass70 = this;
        C8G c8gA3N = null;
        View view = null;
        int size = anonymousClass70.A02.size();
        int i2 = 0;
        int i3 = 2;
        while (true) {
            switch (i3) {
                case 2:
                    if (i2 >= size) {
                        i3 = 8;
                        break;
                    } else {
                        i3 = 3;
                        break;
                    }
                case 3:
                    anonymousClass70 = anonymousClass70;
                    view = anonymousClass70.A02.get(i2);
                    c8gA3N = anonymousClass70.A01.A3N(view);
                    if (c8gA3N.A0I() != i) {
                        i3 = 7;
                        break;
                    } else {
                        i3 = 4;
                        break;
                    }
                case 4:
                    c8gA3N = c8gA3N;
                    if (!c8gA3N.A0b()) {
                        i3 = 5;
                        break;
                    } else {
                        i3 = 7;
                        break;
                    }
                case 5:
                    c8gA3N = c8gA3N;
                    if (!c8gA3N.A0c()) {
                        i3 = 6;
                        break;
                    } else {
                        i3 = 7;
                        break;
                    }
                case 6:
                    return view;
                case 7:
                    i2++;
                    i3 = 2;
                    break;
                case 8:
                    view = null;
                    i3 = 6;
                    break;
            }
        }
    }

    public final View A09(int i) {
        return this.A01.A3J(A00(i));
    }

    public final View A0A(int i) {
        return this.A01.A3J(i);
    }

    public final void A0B() {
        AnonymousClass70 anonymousClass70 = this;
        anonymousClass70.A00.A04();
        int size = anonymousClass70.A02.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    anonymousClass70 = anonymousClass70;
                    anonymousClass70.A01.A5h(anonymousClass70.A02.get(size));
                    anonymousClass70.A02.remove(size);
                    size--;
                    c = 2;
                    break;
                case 4:
                    anonymousClass70.A01.A6q();
                    return;
            }
        }
    }

    public final void A0C(int i) {
        int iA00 = A00(i);
        this.A00.A09(iA00);
        this.A01.A2x(iA00);
    }

    public final void A0D(int i) {
        AnonymousClass70 anonymousClass70 = this;
        int iA00 = anonymousClass70.A00(i);
        View viewA3J = anonymousClass70.A01.A3J(iA00);
        char c = viewA3J == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    anonymousClass70 = anonymousClass70;
                    if (!anonymousClass70.A00.A09(iA00)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass70 = anonymousClass70;
                    viewA3J = viewA3J;
                    anonymousClass70.A04(viewA3J);
                    c = 5;
                    break;
                case 5:
                    anonymousClass70 = anonymousClass70;
                    anonymousClass70.A01.A6r(iA00);
                    c = 2;
                    break;
            }
        }
    }

    public final void A0E(View view) {
        int iA3s = this.A01.A3s(view);
        if (iA3s < 0) {
            throw new IllegalArgumentException(A01(57, 33, 9) + view);
        }
        this.A00.A06(iA3s);
        A03(view);
    }

    public final void A0F(View view) {
        AnonymousClass70 anonymousClass70 = this;
        int iA3s = anonymousClass70.A01.A3s(view);
        char c = iA3s < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    anonymousClass70 = anonymousClass70;
                    if (!anonymousClass70.A00.A09(iA3s)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass70 = anonymousClass70;
                    view = view;
                    anonymousClass70.A04(view);
                    c = 5;
                    break;
                case 5:
                    anonymousClass70 = anonymousClass70;
                    anonymousClass70.A01.A6r(iA3s);
                    c = 2;
                    break;
            }
        }
    }

    public final void A0G(View view) {
        AnonymousClass70 anonymousClass70 = this;
        int iA3s = anonymousClass70.A01.A3s(view);
        char c = iA3s < 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A01(57, 33, 9) + view);
                case 3:
                    anonymousClass70 = anonymousClass70;
                    if (!anonymousClass70.A00.A08(iA3s)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    throw new RuntimeException(A01(0, 43, 77) + view);
                case 5:
                    AnonymousClass70 anonymousClass702 = anonymousClass70;
                    anonymousClass702.A00.A05(iA3s);
                    anonymousClass702.A04(view);
                    return;
            }
        }
    }

    public final void A0H(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        AnonymousClass70 anonymousClass70 = this;
        int iA3K = 0;
        char c = i < 0 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass70 = anonymousClass70;
                    iA3K = anonymousClass70.A01.A3K();
                    c = 3;
                    break;
                case 3:
                    anonymousClass70 = anonymousClass70;
                    anonymousClass70.A00.A07(iA3K, z);
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass70 = anonymousClass70;
                    view = view;
                    anonymousClass70.A03(view);
                    c = 5;
                    break;
                case 5:
                    anonymousClass70.A01.A2e(view, iA3K, layoutParams);
                    return;
                case 6:
                    anonymousClass70 = anonymousClass70;
                    iA3K = anonymousClass70.A00(i);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0I(View view, int i, boolean z) {
        AnonymousClass70 anonymousClass70 = this;
        int iA3K = 0;
        char c = i < 0 ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass70 = anonymousClass70;
                    iA3K = anonymousClass70.A01.A3K();
                    c = 3;
                    break;
                case 3:
                    anonymousClass70 = anonymousClass70;
                    anonymousClass70.A00.A07(iA3K, z);
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass70 = anonymousClass70;
                    view = view;
                    anonymousClass70.A03(view);
                    c = 5;
                    break;
                case 5:
                    anonymousClass70.A01.addView(view, iA3K);
                    return;
                case 6:
                    anonymousClass70 = anonymousClass70;
                    iA3K = anonymousClass70.A00(i);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0J(View view, boolean z) {
        A0I(view, -1, z);
    }

    public final boolean A0K(View view) {
        return this.A02.contains(view);
    }

    public final boolean A0L(View view) {
        AnonymousClass70 anonymousClass70 = this;
        boolean z = true;
        int iA3s = anonymousClass70.A01.A3s(view);
        char c = iA3s == -1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass70 = anonymousClass70;
                    view = view;
                    anonymousClass70.A04(view);
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    anonymousClass70 = anonymousClass70;
                    if (!anonymousClass70.A00.A08(iA3s)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass70 = anonymousClass70;
                    view = view;
                    anonymousClass70.A00.A09(iA3s);
                    anonymousClass70.A04(view);
                    anonymousClass70.A01.A6r(iA3s);
                    c = 3;
                    break;
                case 6:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final String toString() {
        return this.A00.toString() + A01(43, 14, 33) + this.A02.size();
    }
}
