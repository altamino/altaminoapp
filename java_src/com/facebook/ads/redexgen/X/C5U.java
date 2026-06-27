package com.facebook.ads.redexgen.X;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5U, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C5U {
    private static byte[] A02;
    private DataSetObserver A00;
    private final DataSetObservable A01 = new DataSetObservable();

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{96, 87, 67, 71, 91, 64, 87, 86, 18, 95, 87, 70, 90, 93, 86, 18, 86, 87, 65, 70, 64, 93, 75, 123, 70, 87, 95, 18, 69, 83, 65, 18, 92, 93, 70, 18, 93, 68, 87, 64, 64, 91, 86, 86, 87, 92, 78, 121, 109, 105, 117, 110, 121, 120, 60, 113, 121, 104, 116, 115, 120, 60, 117, 114, 111, 104, 125, 114, 104, 117, 125, 104, 121, 85, 104, 121, 113, 60, 107, 125, 111, 60, 114, 115, 104, 60, 115, 106, 121, 110, 110, 117, 120, 120, 121, 114};
    }

    public abstract int A08();

    public abstract boolean A0J(View view, Object obj);

    @Deprecated
    private final Object A00(View view, int i) {
        throw new UnsupportedOperationException(A01(46, 50, 124));
    }

    @Deprecated
    private final void A03(View view) {
    }

    @Deprecated
    private final void A04(View view) {
    }

    @Deprecated
    private final void A05(View view, int i, Object obj) {
        throw new UnsupportedOperationException(A01(0, 46, 82));
    }

    @Deprecated
    private final void A06(View view, int i, Object obj) {
    }

    public final float A07(int i) {
        return 1.0f;
    }

    public int A09(Object obj) {
        return -1;
    }

    public final Parcelable A0A() {
        return null;
    }

    public Object A0B(ViewGroup viewGroup, int i) {
        return A00(viewGroup, i);
    }

    public final void A0C() {
        synchronized (this) {
            if (this.A00 != null) {
                this.A00.onChanged();
            }
        }
        this.A01.notifyChanged();
    }

    public final void A0D(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.A00 = dataSetObserver;
        }
    }

    public final void A0E(Parcelable parcelable, ClassLoader classLoader) {
    }

    public final void A0F(ViewGroup viewGroup) {
        A03(viewGroup);
    }

    public final void A0G(ViewGroup viewGroup) {
        A04(viewGroup);
    }

    public void A0H(ViewGroup viewGroup, int i, Object obj) {
        A05(viewGroup, i, obj);
    }

    public final void A0I(ViewGroup viewGroup, int i, Object obj) {
        A06(viewGroup, i, obj);
    }
}
