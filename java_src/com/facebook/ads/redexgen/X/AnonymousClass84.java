package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.84, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class AnonymousClass84 {
    public SparseArray<AnonymousClass83> A00 = new SparseArray<>();
    private int A01 = 0;

    private final long A00(long j, long j2) {
        if (j == 0) {
            return j2;
        }
        return (j2 / 4) + ((j / 4) * 3);
    }

    private AnonymousClass83 A01(int i) {
        AnonymousClass83 anonymousClass83 = this.A00.get(i);
        if (anonymousClass83 == null) {
            AnonymousClass83 anonymousClass832 = new AnonymousClass83();
            this.A00.put(i, anonymousClass832);
            return anonymousClass832;
        }
        return anonymousClass83;
    }

    private final void A02() {
        AnonymousClass84 anonymousClass84 = this;
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    anonymousClass84 = anonymousClass84;
                    int i3 = anonymousClass84.A00.size();
                    if (i >= i3) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    anonymousClass84 = anonymousClass84;
                    anonymousClass84.A00.valueAt(i).A03.clear();
                    i++;
                    i2 = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final C8G A03(int i) {
        C8G c8gRemove = null;
        AnonymousClass83 anonymousClass83 = this.A00.get(i);
        char c = anonymousClass83 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass83 = anonymousClass83;
                    if (!anonymousClass83.A03.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    anonymousClass83 = anonymousClass83;
                    c8gRemove = anonymousClass83.A03.remove(r1.size() - 1);
                    c = 4;
                    break;
                case 4:
                    return c8gRemove;
                case 5:
                    c8gRemove = null;
                    c = 4;
                    break;
            }
        }
    }

    public final void A04() {
        this.A01--;
    }

    public final void A05(int i, long j) {
        AnonymousClass83 anonymousClass83A01 = A01(i);
        anonymousClass83A01.A01 = A00(anonymousClass83A01.A01, j);
    }

    public final void A06(int i, long j) {
        AnonymousClass83 anonymousClass83A01 = A01(i);
        anonymousClass83A01.A02 = A00(anonymousClass83A01.A02, j);
    }

    public final void A07(AbstractC02102g abstractC02102g) {
        this.A01++;
    }

    public final void A08(AbstractC02102g abstractC02102g, AbstractC02102g abstractC02102g2, boolean z) {
        AnonymousClass84 anonymousClass84 = this;
        char c = abstractC02102g != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    anonymousClass84 = anonymousClass84;
                    anonymousClass84.A04();
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    anonymousClass84 = anonymousClass84;
                    if (anonymousClass84.A01 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass84 = anonymousClass84;
                    anonymousClass84.A02();
                    c = 6;
                    break;
                case 6:
                    abstractC02102g2 = abstractC02102g2;
                    if (abstractC02102g2 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass84 = anonymousClass84;
                    abstractC02102g2 = abstractC02102g2;
                    anonymousClass84.A07(abstractC02102g2);
                    c = '\b';
                    break;
                case '\b':
                    return;
            }
        }
    }

    public final void A09(C8G c8g) {
        int iA0H = c8g.A0H();
        ArrayList<C8G> arrayList = A01(iA0H).A03;
        if (this.A00.get(iA0H).A00 <= arrayList.size()) {
            return;
        }
        c8g.A0Q();
        arrayList.add(c8g);
    }

    public final boolean A0A(int i, long j, long j2) {
        boolean z = false;
        long j3 = A01(i).A01;
        char c = j3 != 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (j + j3 >= j2) {
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

    public final boolean A0B(int i, long j, long j2) {
        boolean z = false;
        long j3 = A01(i).A02;
        char c = j3 != 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (j + j3 >= j2) {
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
}
