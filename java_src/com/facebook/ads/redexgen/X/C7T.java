package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7T, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C7T {
    public int A00;
    public int A01;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public boolean A09;
    public boolean A0B = true;
    public int A02 = 0;
    public boolean A0A = false;
    public List<C8G> A08 = null;

    private View A00() {
        C7T c7t = this;
        View view = null;
        C7L c7l = null;
        int size = c7t.A08.size();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= size) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7t = c7t;
                    view = c7t.A08.get(i).A0H;
                    c7l = (C7L) view.getLayoutParams();
                    if (!c7l.A02()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i++;
                    c = 2;
                    break;
                case 5:
                    c7t = c7t;
                    c7l = c7l;
                    if (c7t.A01 != c7l.A00()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7t = c7t;
                    view = view;
                    c7t.A02(view);
                    c = '\b';
                    break;
                case 7:
                    view = null;
                    c = '\b';
                    break;
                case '\b':
                    return view;
            }
        }
    }

    private final View A01(View view) {
        C7T c7t = this;
        C7L c7l = null;
        int iA00 = 0;
        View view2 = null;
        int size = c7t.A08.size();
        View view3 = null;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        int distance = 2;
        while (true) {
            switch (distance) {
                case 2:
                    if (i2 >= size) {
                        distance = 9;
                        break;
                    } else {
                        distance = 3;
                        break;
                    }
                case 3:
                    c7t = c7t;
                    view = view;
                    view2 = c7t.A08.get(i2).A0H;
                    c7l = (C7L) view2.getLayoutParams();
                    if (view2 == view) {
                        distance = 5;
                        break;
                    } else {
                        distance = 4;
                        break;
                    }
                case 4:
                    c7l = c7l;
                    if (!c7l.A02()) {
                        distance = 6;
                        break;
                    } else {
                        distance = 5;
                        break;
                    }
                case 5:
                    i2++;
                    distance = 2;
                    break;
                case 6:
                    c7t = c7t;
                    c7l = c7l;
                    iA00 = (c7l.A00() - c7t.A01) * c7t.A03;
                    if (iA00 < 0) {
                        distance = 5;
                        break;
                    } else {
                        distance = 7;
                        break;
                    }
                case 7:
                    if (iA00 >= i) {
                        distance = 5;
                        break;
                    } else {
                        distance = 8;
                        break;
                    }
                case 8:
                    view2 = view2;
                    view3 = view2;
                    i = iA00;
                    if (iA00 != 0) {
                        distance = 5;
                        break;
                    } else {
                        distance = 9;
                        break;
                    }
                case 9:
                    return view3;
            }
        }
    }

    private final void A02(View view) {
        C7T c7t = this;
        View viewA01 = c7t.A01(view);
        char c = viewA01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7t = c7t;
                    c7t.A01 = -1;
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7t = c7t;
                    viewA01 = viewA01;
                    c7t.A01 = ((C7L) viewA01.getLayoutParams()).A00();
                    c = 3;
                    break;
            }
        }
    }

    public final View A03(AnonymousClass85 anonymousClass85) {
        C7T c7t = this;
        View viewA00 = null;
        char c = c7t.A08 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7t = c7t;
                    viewA00 = c7t.A00();
                    c = 3;
                    break;
                case 3:
                    return viewA00;
                case 4:
                    c7t = c7t;
                    anonymousClass85 = anonymousClass85;
                    viewA00 = anonymousClass85.A0G(c7t.A01);
                    c7t.A01 += c7t.A03;
                    c = 3;
                    break;
            }
        }
    }

    public final void A04() {
        A02(null);
    }

    public final boolean A05(C8D c8d) {
        C7T c7t = this;
        boolean z = false;
        char c = c7t.A01 >= 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7t = c7t;
                    c8d = c8d;
                    if (c7t.A01 >= c8d.A03()) {
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
