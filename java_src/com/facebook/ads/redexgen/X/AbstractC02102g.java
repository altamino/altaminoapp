package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import com.facebook.ads.redexgen.X.C8G;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2g, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public abstract class AbstractC02102g<VH extends C8G> {
    private static byte[] A02;
    private final C03447n A01 = new C03447n();
    private boolean A00 = false;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{16, 20, 98, 13, 44, 0, 43, 44, 38, 20, 43, 39, 53, 76, 72, 62, 93, 108, 123, 127, 106, 123, 72, 119, 123, 105};
    }

    public abstract int A03();

    public abstract VH A0I(ViewGroup viewGroup, int i);

    public abstract void A0J(VH vh, int i);

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    private final void A02(VH holder, int i, List<Object> payloads) {
        A0J(holder, i);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final int A04(int i) {
        return 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final long A05(int i) {
        return -1L;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final VH A06(ViewGroup viewGroup, int i) {
        C02804y.A01(A00(13, 13, 89));
        VH vh = (VH) A0I(viewGroup, i);
        vh.A00 = i;
        C02804y.A00();
        return vh;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A07() {
        this.A01.A00();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A08(AbstractC03457o abstractC03457o) {
        this.A01.registerObserver(abstractC03457o);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A09(AbstractC03457o abstractC03457o) {
        this.A01.unregisterObserver(abstractC03457o);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A0A(VH holder) {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A0B(VH holder) {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A0C(VH holder) {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A0D(VH vh, int i) {
        AbstractC02102g<VH> abstractC02102g = this;
        ViewGroup.LayoutParams layoutParams = null;
        vh.A03 = i;
        char c = abstractC02102g.A0G() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    abstractC02102g = abstractC02102g;
                    vh = vh;
                    vh.A05 = abstractC02102g.A05(i);
                    c = 3;
                    break;
                case 3:
                    abstractC02102g = abstractC02102g;
                    vh = vh;
                    vh.A0U(1, 519);
                    C02804y.A01(A00(0, 13, 5));
                    abstractC02102g.A02(vh, i, vh.A0L());
                    vh.A0N();
                    layoutParams = vh.A0H.getLayoutParams();
                    if (!(layoutParams instanceof C7L)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    layoutParams = layoutParams;
                    ((C7L) layoutParams).A01 = true;
                    c = 5;
                    break;
                case 5:
                    C02804y.A00();
                    return;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A0E(C8H c8h) {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final void A0F(C8H c8h) {
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final boolean A0G() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.2g != com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$Adapter<VH extends com.facebook.ads.redexgen.X.8G> */
    public final boolean A0H(VH vh) {
        return false;
    }
}
