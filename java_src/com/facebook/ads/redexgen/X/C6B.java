package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewParent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C6B {
    public void A02(ViewParent viewParent, View view) {
        if (viewParent instanceof C5R) {
            ((C5R) viewParent).onStopNestedScroll(view);
        }
    }

    public void A03(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        if (viewParent instanceof C5R) {
            ((C5R) viewParent).onNestedScroll(view, i, i2, i3, i4);
        }
    }

    public void A04(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        if (viewParent instanceof C5R) {
            ((C5R) viewParent).onNestedPreScroll(view, i, i2, iArr);
        }
    }

    public void A05(ViewParent viewParent, View view, View view2, int i) {
        if (viewParent instanceof C5R) {
            ((C5R) viewParent).onNestedScrollAccepted(view, view2, i);
        }
    }

    public boolean A06(ViewParent viewParent, View view, float f, float f2) {
        boolean zOnNestedPreFling = false;
        char c = viewParent instanceof C5R ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent = viewParent;
                    view = view;
                    zOnNestedPreFling = ((C5R) viewParent).onNestedPreFling(view, f, f2);
                    c = 3;
                    break;
                case 3:
                    return zOnNestedPreFling;
                case 4:
                    zOnNestedPreFling = false;
                    c = 3;
                    break;
            }
        }
    }

    public boolean A07(ViewParent viewParent, View view, float f, float f2, boolean z) {
        boolean zOnNestedFling = false;
        char c = viewParent instanceof C5R ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent = viewParent;
                    view = view;
                    zOnNestedFling = ((C5R) viewParent).onNestedFling(view, f, f2, z);
                    c = 3;
                    break;
                case 3:
                    return zOnNestedFling;
                case 4:
                    zOnNestedFling = false;
                    c = 3;
                    break;
            }
        }
    }

    public boolean A08(ViewParent viewParent, View view, View view2, int i) {
        boolean zOnStartNestedScroll = false;
        char c = viewParent instanceof C5R ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewParent = viewParent;
                    view = view;
                    view2 = view2;
                    zOnStartNestedScroll = ((C5R) viewParent).onStartNestedScroll(view, view2, i);
                    c = 3;
                    break;
                case 3:
                    return zOnStartNestedScroll;
                case 4:
                    zOnStartNestedScroll = false;
                    c = 3;
                    break;
            }
        }
    }
}
