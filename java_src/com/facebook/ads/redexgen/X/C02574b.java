package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4b, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02574b implements AnonymousClass22<Bundle> {
    private static byte[] A03;
    private C02594d A00;
    private final View A01;
    private final List<C02604e> A02;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 50);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{90, 75, 93, 90, 93, 25, 30, 11, 30, 3, 25, 30, 3, 9, 25};
    }

    public C02574b(View view, List<AbstractC02021y> list) {
        this.A01 = view;
        this.A02 = new ArrayList(list.size());
        Iterator<AbstractC02021y> it = list.iterator();
        while (it.hasNext()) {
            this.A02.add(new C02604e(it.next()));
        }
        this.A00 = new C02594d();
    }

    public C02574b(View view, List<AbstractC02021y> list, Bundle bundle) {
        this.A01 = view;
        this.A02 = new ArrayList(list.size());
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A00(0, 5, 60));
        for (int i = 0; i < list.size(); i++) {
            this.A02.add(new C02604e(list.get(i), (Bundle) parcelableArrayList.get(i)));
        }
        this.A00 = (C02594d) O1.A00(bundle.getByteArray(A00(5, 10, 120)));
    }

    public final C02594d A02() {
        return this.A00;
    }

    public final void A03() {
        this.A00.A03();
        Iterator<C02604e> it = this.A02.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    it.next().A05();
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A04() {
        this.A00.A02();
    }

    public final void A05(double d, double d2) {
        C02574b c02574b = this;
        double dA00 = 0.0d;
        Iterator<C02604e> it = null;
        char c = d2 >= 0.0d ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c02574b = c02574b;
                    c02574b.A00.A05(d, d2);
                    c = 3;
                    break;
                case 3:
                    c02574b = c02574b;
                    dA00 = C6K.A0E(c02574b.A01, 0).A00();
                    c02574b.A00.A04(d, dA00);
                    it = c02574b.A02.iterator();
                    c = 4;
                    break;
                case 4:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    it = it;
                    it.next().A06(d, dA00);
                    c = 4;
                    break;
                case 6:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass22
    public final Bundle getSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putByteArray(A00(5, 10, 120), O1.A01(this.A00));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.A02.size());
        Iterator<C02604e> it = this.A02.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    arrayList = arrayList;
                    it = it;
                    C02604e test = it.next();
                    arrayList.add(test.getSaveInstanceState());
                    c = 2;
                    break;
                case 4:
                    Bundle bundle2 = bundle;
                    bundle2.putParcelableArrayList(A00(0, 5, 60), arrayList);
                    return bundle2;
            }
        }
    }
}
