package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7N, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public abstract class C7N {
    private static byte[] A0I;
    public int A00;
    public AnonymousClass70 A01;

    @Nullable
    public C7W A02;
    public C8H A03;
    public boolean A08;
    private int A0A;
    private int A0B;
    private int A0C;
    private int A0D;
    private final InterfaceC03527w A0G = new InterfaceC03527w() { // from class: com.facebook.ads.redexgen.X.7x
        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final View A3J(int i) {
            return this.A00.A0w(i);
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3L(View view) {
            return this.A00.A0q(view) + ((C7L) view.getLayoutParams()).rightMargin;
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3M(View view) {
            return this.A00.A0n(view) - ((C7L) view.getLayoutParams()).leftMargin;
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3b() {
            return this.A00.A0k() - this.A00.A0i();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3c() {
            return this.A00.A0h();
        }
    };
    private final InterfaceC03527w A0H = new InterfaceC03527w() { // from class: com.facebook.ads.redexgen.X.7y
        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final View A3J(int i) {
            return this.A00.A0w(i);
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3L(View view) {
            return this.A00.A0m(view) + ((C7L) view.getLayoutParams()).bottomMargin;
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3M(View view) {
            return this.A00.A0r(view) - ((C7L) view.getLayoutParams()).topMargin;
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3b() {
            return this.A00.A0a() - this.A00.A0g();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03527w
        public final int A3c() {
            return this.A00.A0j();
        }
    };
    public C8P A04 = new C8P(this.A0G);
    public C8P A05 = new C8P(this.A0H);
    public boolean A09 = false;
    public boolean A07 = false;
    public boolean A06 = false;
    private boolean A0F = true;
    private boolean A0E = true;

    static {
        A08();
    }

    private static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A0I = new byte[]{-43, -21, -15, -100, -23, -15, -17, -16, -100, -21, -14, -31, -18, -18, -27, -32, -31, -100, -21, -22, -56, -35, -11, -21, -15, -16, -65, -28, -27, -24, -32, -18, -31, -22, -92, -50, -31, -33, -11, -33, -24, -31, -18, -100, -18, -31, -33, -11, -33, -24, -31, -18, -88, -100, -49, -16, -35, -16, -31, -100, -17, -16, -35, -16, -31, -91, -100, -76, -57, -59, -37, -59, -50, -57, -44, -72, -53, -57, -39, -106, -84, -78, 93, -86, -78, -80, -79, 93, -84, -77, -94, -81, -81, -90, -95, -94, 93, -80, -86, -84, -84, -79, -91, -112, -96, -81, -84, -87, -87, -111, -84, -115, -84, -80, -90, -79, -90, -84, -85, 93, -79, -84, 93, -80, -78, -83, -83, -84, -81, -79, 93, -80, -86, -84, -84, -79, -91, 93, -80, -96, -81, -84, -87, -87, -90, -85, -92, -68, -33, -33, -32, -33, -101, -47, -28, -32, -14, -101, -29, -36, -18, -101, -51, -32, -34, -12, -34, -25, -32, -19, -47, -28, -32, -14, -101, -36, -18, -101, -21, -36, -19, -32, -23, -17, -101, -35, -16, -17, -101, -15, -28, -32, -14, -101, -28, -18, -101, -23, -22, -17, -101, -36, -101, -19, -32, -36, -25, -101, -34, -29, -28, -25, -33, -87, -101, -48, -23, -31, -28, -25, -17, -32, -19, -32, -33, -101, -28, -23, -33, -32, -13, -75, 117, -109, -96, -96, -95, -90, 82, -97, -95, -88, -105, 82, -109, 82, -107, -102, -101, -98, -106, 82, -104, -92, -95, -97, 82, -96, -95, -96, 95, -105, -86, -101, -91, -90, -101, -96, -103, 82, -101, -96, -106, -105, -86, 108};
    }

    public abstract C7L A1x();

    public static int A00(int mode, int size, int i) {
        char c;
        int mode2 = View.MeasureSpec.getMode(mode);
        int mode3 = View.MeasureSpec.getSize(mode);
        switch (mode2) {
            case Integer.MIN_VALUE:
                c = 4;
                break;
            case 1073741824:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    mode3 = Math.max(size, i);
                    c = 3;
                    break;
                case 3:
                    return mode3;
                case 4:
                    mode3 = Math.min(mode3, Math.max(size, i));
                    c = 3;
                    break;
            }
        }
    }

    public static int A01(int i, int resultSize, int i2, int i3, boolean z) {
        int iMax = Math.max(0, i - i2);
        int i4 = 0;
        int i5 = 0;
        char c = z ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    if (i3 < 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    i4 = i3;
                    i5 = 1073741824;
                    c = 4;
                    break;
                case 4:
                    return View.MeasureSpec.makeMeasureSpec(i4, i5);
                case 5:
                    if (i3 != -1) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    switch (resultSize) {
                        case Integer.MIN_VALUE:
                            c = '\b';
                            break;
                        case 0:
                            c = 7;
                            break;
                        case 1073741824:
                            c = '\b';
                            break;
                        default:
                            c = 4;
                            break;
                    }
                case 7:
                    i4 = 0;
                    i5 = 0;
                    c = 4;
                    break;
                case '\b':
                    i4 = iMax;
                    i5 = resultSize;
                    c = 4;
                    break;
                case '\t':
                    if (i3 != -2) {
                        c = 4;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i4 = 0;
                    i5 = 0;
                    c = 4;
                    break;
                case 11:
                    if (i3 < 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    i4 = i3;
                    i5 = 1073741824;
                    c = 4;
                    break;
                case '\r':
                    if (i3 != -1) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    i4 = iMax;
                    i5 = resultSize;
                    c = 4;
                    break;
                case 15:
                    if (i3 != -2) {
                        c = 4;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    i4 = iMax;
                    if (resultSize == Integer.MIN_VALUE) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    if (resultSize != 1073741824) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    i5 = Integer.MIN_VALUE;
                    c = 4;
                    break;
                case 19:
                    i5 = 0;
                    c = 4;
                    break;
            }
        }
    }

    private final int A02(View view) {
        return ((C7L) view.getLayoutParams()).A03.bottom;
    }

    private final int A03(View view) {
        return ((C7L) view.getLayoutParams()).A03.left;
    }

    private final int A04(View view) {
        return ((C7L) view.getLayoutParams()).A03.right;
    }

    private final int A05(View view) {
        return ((C7L) view.getLayoutParams()).A03.top;
    }

    private final int A06(AnonymousClass85 anonymousClass85, C8D c8d) {
        return 0;
    }

    private final void A09(int i) {
        A0C(i, A0w(i));
    }

    private final void A0A(int i) {
        if (A0w(i) != null) {
            this.A01.A0D(i);
        }
    }

    private final void A0B(int i, int i2) {
        View viewA0w = A0w(i);
        if (viewA0w == null) {
            throw new IllegalArgumentException(A07(232, 44, 6) + i + this.A03.toString());
        }
        A09(i);
        A0E(viewA0w, i2);
    }

    private void A0C(int i, View view) {
        this.A01.A0C(i);
    }

    private final void A0D(View view) {
        this.A01.A0F(view);
    }

    private final void A0E(View view, int i) {
        A0F(view, i, (C7L) view.getLayoutParams());
    }

    private final void A0F(View view, int i, C7L c7l) {
        C7N c7n = this;
        C8G c8gA05 = C8H.A05(view);
        char c = c8gA05.A0c() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    c8gA05 = c8gA05;
                    c7n.A03.A0t.A09(c8gA05);
                    c = 3;
                    break;
                case 3:
                    c7n.A01.A0H(view, i, c7l, c8gA05.A0c());
                    return;
                case 4:
                    c7n = c7n;
                    c8gA05 = c8gA05;
                    c7n.A03.A0t.A0A(c8gA05);
                    c = 3;
                    break;
            }
        }
    }

    private void A0G(View view, int i, boolean z) {
        C7N c7n = this;
        C7L c7l = null;
        int iA07 = 0;
        boolean z2 = false;
        C8G c8gA05 = C8H.A05(view);
        char c = !z ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        c = 23;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    c8gA05 = c8gA05;
                    c7n.A03.A0t.A09(c8gA05);
                    c = 4;
                    break;
                case 4:
                    view = view;
                    c8gA05 = c8gA05;
                    c7l = (C7L) view.getLayoutParams();
                    if (!c8gA05.A0i()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0d()) {
                        c = '\r';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0d()) {
                        c = '\f';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8gA05 = c8gA05;
                    c8gA05.A0S();
                    c = '\b';
                    break;
                case '\b':
                    c7n = c7n;
                    view = view;
                    z2 = false;
                    c7n.A01.A0H(view, i, view.getLayoutParams(), false);
                    c = '\t';
                    break;
                case '\t':
                    c7l = c7l;
                    if (!c7l.A02) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8gA05 = c8gA05;
                    c7l = c7l;
                    c8gA05.A0H.invalidate();
                    c7l.A02 = z2;
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    c8gA05 = c8gA05;
                    c8gA05.A0O();
                    c = '\b';
                    break;
                case '\r':
                    c7n = c7n;
                    view = view;
                    if (view.getParent() != c7n.A03) {
                        c = 20;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c7n = c7n;
                    view = view;
                    iA07 = c7n.A01.A07(view);
                    if (i != -1) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c7n = c7n;
                    i = c7n.A01.A05();
                    c = 16;
                    break;
                case 16:
                    if (iA07 != -1) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    C7N c7n2 = c7n;
                    throw new IllegalStateException(A07(147, 85, 79) + c7n2.A03.indexOfChild(view) + c7n2.A03.A1B());
                case 18:
                    if (iA07 == i) {
                        c = '\t';
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c7n = c7n;
                    c7n.A03.A06.A0B(iA07, i);
                    c = '\t';
                    break;
                case 20:
                    c7n = c7n;
                    view = view;
                    c7l = c7l;
                    z2 = false;
                    c7n.A01.A0I(view, i, false);
                    c7l.A01 = true;
                    if (c7n.A02 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c7n = c7n;
                    if (!c7n.A02.A0F()) {
                        c = '\t';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    c7n = c7n;
                    view = view;
                    c7n.A02.A0C(view);
                    c = '\t';
                    break;
                case 23:
                    c7n = c7n;
                    c8gA05 = c8gA05;
                    c7n.A03.A0t.A0A(c8gA05);
                    c = 4;
                    break;
            }
        }
    }

    private final void A0H(View view, Rect rect) {
        C8H.A0i(view, rect);
    }

    private void A0J(AnonymousClass85 anonymousClass85, int i, View view) {
        C7N c7n = this;
        C8G c8gA05 = C8H.A05(view);
        char c = c8gA05.A0h() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0b()) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    if (!c7n.A03.A04.A0G()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    anonymousClass85 = anonymousClass85;
                    c8gA05 = c8gA05;
                    c7n.A0A(i);
                    anonymousClass85.A0b(c8gA05);
                    c = 2;
                    break;
                case 7:
                    c7n = c7n;
                    anonymousClass85 = anonymousClass85;
                    view = view;
                    c8gA05 = c8gA05;
                    c7n.A09(i);
                    anonymousClass85.A0W(view);
                    c7n.A03.A0t.A0C(c8gA05);
                    c = 2;
                    break;
            }
        }
    }

    private final void A0K(AnonymousClass85 anonymousClass85, C8D c8d, AccessibilityEvent accessibilityEvent) {
        C7N c7n = this;
        boolean z = true;
        char c = c7n.A03 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    accessibilityEvent = accessibilityEvent;
                    if (accessibilityEvent != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    c7n = c7n;
                    if (!c7n.A03.canScrollVertically(z ? 1 : 0)) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 5:
                    c7n = c7n;
                    if (!c7n.A03.canScrollVertically(-1)) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 6:
                    c7n = c7n;
                    if (!c7n.A03.canScrollHorizontally(-1)) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c7n = c7n;
                    if (!c7n.A03.canScrollHorizontally(z ? 1 : 0)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7n = c7n;
                    accessibilityEvent = accessibilityEvent;
                    accessibilityEvent.setScrollable(z);
                    if (c7n.A03.A04 == null) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c7n = c7n;
                    accessibilityEvent = accessibilityEvent;
                    accessibilityEvent.setItemCount(c7n.A03.A04.A03());
                    c = 3;
                    break;
                case '\n':
                    z = false;
                    c = '\b';
                    break;
            }
        }
    }

    private final void A0L(AnonymousClass85 anonymousClass85, C8D c8d, C6X c6x) {
        C7N c7n = this;
        char c = !c7n.A03.canScrollVertically(-1) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    if (!c7n.A03.canScrollHorizontally(-1)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6x = c6x;
                    c6x.A0N(8192);
                    c6x.A0R(true);
                    c = 4;
                    break;
                case 4:
                    c7n = c7n;
                    if (!c7n.A03.canScrollVertically(1)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    if (!c7n.A03.canScrollHorizontally(1)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6x = c6x;
                    c6x.A0N(4096);
                    c6x.A0R(true);
                    c = 7;
                    break;
                case 7:
                    C7N c7n2 = c7n;
                    AnonymousClass85 anonymousClass852 = anonymousClass85;
                    C8D c8d2 = c8d;
                    c6x.A0P(C6U.A00(c7n2.A0u(anonymousClass852, c8d2), c7n2.A0t(anonymousClass852, c8d2), c7n2.A0S(anonymousClass852, c8d2), c7n2.A06(anonymousClass852, c8d2)));
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0M(C7W c7w) {
        if (this.A02 == c7w) {
            this.A02 = null;
        }
    }

    @CallSuper
    private final void A0N(C8H c8h) {
    }

    @Deprecated
    private final void A0O(C8H c8h) {
    }

    private final void A0P(C8H c8h, int i, int i2) {
    }

    private final boolean A0Q() {
        C7N c7n = this;
        boolean z = false;
        char c = c7n.A02 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    if (!c7n.A02.A0F()) {
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

    private static boolean A0R(int specMode, int i, int i2) {
        boolean z = true;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        char c = i2 > 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (specMode == i2) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = false;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    switch (mode) {
                        case Integer.MIN_VALUE:
                            c = '\t';
                            break;
                        case 0:
                            c = 4;
                            break;
                        case 1073741824:
                            c = 7;
                            break;
                        default:
                            c = 6;
                            break;
                    }
                case 6:
                    z = false;
                    c = 4;
                    break;
                case 7:
                    if (size == specMode) {
                        c = 4;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    z = false;
                    c = 4;
                    break;
                case '\t':
                    if (size >= specMode) {
                        c = 4;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private final boolean A0S(AnonymousClass85 anonymousClass85, C8D c8d) {
        return false;
    }

    private final boolean A0T(AnonymousClass85 anonymousClass85, C8D c8d, int i, Bundle bundle) {
        C7N c7n = this;
        int iA0k = 0;
        int iA0a = 0;
        boolean z = false;
        char c = c7n.A03 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    iA0a = 0;
                    iA0k = 0;
                    switch (i) {
                        case 4096:
                            c = 7;
                            break;
                        case 8192:
                            c = 11;
                            break;
                        default:
                            c = 4;
                            break;
                    }
                case 4:
                    if (iA0a != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (iA0k == 0) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    c7n.A03.scrollBy(iA0k, iA0a);
                    z = true;
                    c = 2;
                    break;
                case 7:
                    c7n = c7n;
                    if (!c7n.A03.canScrollVertically(1)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c7n = c7n;
                    iA0a = (c7n.A0a() - c7n.A0j()) - c7n.A0g();
                    c = '\t';
                    break;
                case '\t':
                    c7n = c7n;
                    if (!c7n.A03.canScrollHorizontally(1)) {
                        c = 4;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7n = c7n;
                    iA0k = (c7n.A0k() - c7n.A0h()) - c7n.A0i();
                    c = 4;
                    break;
                case 11:
                    c7n = c7n;
                    if (!c7n.A03.canScrollVertically(-1)) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c7n = c7n;
                    iA0a = -((c7n.A0a() - c7n.A0j()) - c7n.A0g());
                    c = '\r';
                    break;
                case '\r':
                    c7n = c7n;
                    if (!c7n.A03.canScrollHorizontally(-1)) {
                        c = 4;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c7n = c7n;
                    iA0k = -((c7n.A0k() - c7n.A0h()) - c7n.A0i());
                    c = 4;
                    break;
            }
        }
    }

    private final boolean A0U(AnonymousClass85 anonymousClass85, C8D c8d, View view, int i, Bundle bundle) {
        return false;
    }

    private boolean A0V(C8H c8h, int parentBottom, int i) {
        C7N c7n = this;
        Rect rect = null;
        int i2 = 0;
        int iA0h = 0;
        int iA0j = 0;
        boolean z = false;
        View focusedChild = c8h.getFocusedChild();
        int parentRight = focusedChild == null ? 2 : 3;
        while (true) {
            switch (parentRight) {
                case 2:
                    return z;
                case 3:
                    c7n = c7n;
                    focusedChild = focusedChild;
                    iA0h = c7n.A0h();
                    iA0j = c7n.A0j();
                    int iA0k = c7n.A0k() - c7n.A0i();
                    int iA0a = c7n.A0a();
                    int parentRight2 = c7n.A0g();
                    i2 = iA0a - parentRight2;
                    rect = c7n.A03.A0p;
                    c7n.A0H(focusedChild, rect);
                    int parentRight3 = rect.left;
                    if (parentRight3 - parentBottom >= iA0k) {
                        parentRight = 2;
                        break;
                    } else {
                        parentRight = 4;
                        break;
                    }
                case 4:
                    rect = rect;
                    int parentRight4 = rect.right;
                    if (parentRight4 - parentBottom <= iA0h) {
                        parentRight = 2;
                        break;
                    } else {
                        parentRight = 5;
                        break;
                    }
                case 5:
                    rect = rect;
                    if (rect.top - i >= i2) {
                        parentRight = 2;
                        break;
                    } else {
                        parentRight = 6;
                        break;
                    }
                case 6:
                    rect = rect;
                    if (rect.bottom - i <= iA0j) {
                        parentRight = 2;
                        break;
                    } else {
                        parentRight = 7;
                        break;
                    }
                case 7:
                    z = true;
                    parentRight = 2;
                    break;
            }
        }
    }

    @Deprecated
    private final boolean A0W(C8H c8h, View view, View view2) {
        boolean z = false;
        char c = !A0Q() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A1n()) {
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

    private int[] A0X(C8H c8h, View view, Rect rect, boolean z) {
        int offScreenRight = 0;
        int offScreenTop = 0;
        int[] iArr = new int[2];
        int iA0h = A0h();
        int iA0j = A0j();
        int iA0k = A0k();
        int parentTop = A0i();
        int i = iA0k - parentTop;
        int iA0a = A0a();
        int parentRight = A0g();
        int i2 = iA0a - parentRight;
        int left = view.getLeft();
        int parentBottom = rect.left;
        int i3 = left + parentBottom;
        int parentBottom2 = view.getScrollX();
        int i4 = i3 - parentBottom2;
        int top = view.getTop();
        int parentBottom3 = rect.top;
        int i5 = top + parentBottom3;
        int parentBottom4 = view.getScrollY();
        int i6 = i5 - parentBottom4;
        int childTop = rect.width();
        int i7 = i4 + childTop;
        int childTop2 = rect.height();
        int i8 = i6 + childTop2;
        int childTop3 = i4 - iA0h;
        int iMin = Math.min(0, childTop3);
        int offScreenLeft = i6 - iA0j;
        int iMin2 = Math.min(0, offScreenLeft);
        int offScreenLeft2 = i7 - i;
        int iMax = Math.max(0, offScreenLeft2);
        int iMax2 = Math.max(0, i8 - i2);
        int childLeft = A0d();
        int offScreenBottom = childLeft == 1 ? 2 : 9;
        while (true) {
            switch (offScreenBottom) {
                case 2:
                    if (iMax == 0) {
                        offScreenBottom = 8;
                        break;
                    } else {
                        offScreenBottom = 3;
                        break;
                    }
                case 3:
                    offScreenRight = iMax;
                    offScreenBottom = 4;
                    break;
                case 4:
                    if (iMin2 == 0) {
                        offScreenBottom = 7;
                        break;
                    } else {
                        offScreenBottom = 5;
                        break;
                    }
                case 5:
                    offScreenTop = iMin2;
                    offScreenBottom = 6;
                    break;
                case 6:
                    int[] iArr2 = iArr;
                    iArr2[0] = offScreenRight;
                    iArr2[1] = offScreenTop;
                    return iArr2;
                case 7:
                    int offScreenBottom2 = i6 - iA0j;
                    offScreenTop = Math.min(offScreenBottom2, iMax2);
                    offScreenBottom = 6;
                    break;
                case 8:
                    offScreenRight = Math.max(iMin, i7 - i);
                    offScreenBottom = 4;
                    break;
                case 9:
                    if (iMin == 0) {
                        offScreenBottom = 11;
                        break;
                    } else {
                        offScreenBottom = 10;
                        break;
                    }
                case 10:
                    offScreenRight = iMin;
                    offScreenBottom = 4;
                    break;
                case 11:
                    int offScreenBottom3 = i4 - iA0h;
                    offScreenRight = Math.min(offScreenBottom3, iMax);
                    offScreenBottom = 4;
                    break;
            }
        }
    }

    public final int A0Y() {
        return -1;
    }

    public final int A0Z() {
        C7N c7n = this;
        int iA05 = 0;
        char c = c7n.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    iA05 = c7n.A01.A05();
                    c = 3;
                    break;
                case 3:
                    return iA05;
                case 4:
                    iA05 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0a() {
        return this.A0A;
    }

    public final int A0b() {
        return this.A0B;
    }

    public final int A0c() {
        C7N c7n = this;
        AbstractC02102g adapter = null;
        int iA03 = 0;
        char c = c7n.A03 != null ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    adapter = c7n.A03.getAdapter();
                    c = 3;
                    break;
                case 3:
                    if (adapter == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    iA03 = adapter.A03();
                    c = 5;
                    break;
                case 5:
                    return iA03;
                case 6:
                    iA03 = 0;
                    c = 5;
                    break;
                case 7:
                    adapter = null;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0d() {
        return C02985s.A01(this.A03);
    }

    public final int A0e() {
        return C02985s.A02(this.A03);
    }

    public final int A0f() {
        return C02985s.A03(this.A03);
    }

    public final int A0g() {
        C7N c7n = this;
        int paddingBottom = 0;
        char c = c7n.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    paddingBottom = c7n.A03.getPaddingBottom();
                    c = 3;
                    break;
                case 3:
                    return paddingBottom;
                case 4:
                    paddingBottom = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0h() {
        C7N c7n = this;
        int paddingLeft = 0;
        char c = c7n.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    paddingLeft = c7n.A03.getPaddingLeft();
                    c = 3;
                    break;
                case 3:
                    return paddingLeft;
                case 4:
                    paddingLeft = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0i() {
        C7N c7n = this;
        int paddingRight = 0;
        char c = c7n.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    paddingRight = c7n.A03.getPaddingRight();
                    c = 3;
                    break;
                case 3:
                    return paddingRight;
                case 4:
                    paddingRight = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0j() {
        C7N c7n = this;
        int paddingTop = 0;
        char c = c7n.A03 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    paddingTop = c7n.A03.getPaddingTop();
                    c = 3;
                    break;
                case 3:
                    return paddingTop;
                case 4:
                    paddingTop = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final int A0k() {
        return this.A0C;
    }

    public final int A0l() {
        return this.A0D;
    }

    public final int A0m(View view) {
        return view.getBottom() + A02(view);
    }

    public final int A0n(View view) {
        return view.getLeft() - A03(view);
    }

    public final int A0o(View view) {
        Rect rect = ((C7L) view.getLayoutParams()).A03;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public final int A0p(View view) {
        Rect rect = ((C7L) view.getLayoutParams()).A03;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public final int A0q(View view) {
        return view.getRight() + A04(view);
    }

    public final int A0r(View view) {
        return view.getTop() - A05(view);
    }

    public final int A0s(View view) {
        return ((C7L) view.getLayoutParams()).A00();
    }

    public int A0t(AnonymousClass85 anonymousClass85, C8D c8d) {
        C7N c7n = this;
        int iA03 = 1;
        char c = c7n.A03 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    if (c7n.A03.A04 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return iA03;
                case 4:
                    c7n = c7n;
                    if (!c7n.A29()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    iA03 = c7n.A03.A04.A03();
                    c = 3;
                    break;
            }
        }
    }

    public int A0u(AnonymousClass85 anonymousClass85, C8D c8d) {
        C7N c7n = this;
        int iA03 = 1;
        char c = c7n.A03 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    if (c7n.A03.A04 != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return iA03;
                case 4:
                    c7n = c7n;
                    if (!c7n.A2A()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    iA03 = c7n.A03.A04.A03();
                    c = 3;
                    break;
            }
        }
    }

    public final View A0v() {
        C7N c7n = this;
        View focusedChild = null;
        char c = c7n.A03 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    focusedChild = null;
                    c = 3;
                    break;
                case 3:
                    return focusedChild;
                case 4:
                    c7n = c7n;
                    focusedChild = c7n.A03.getFocusedChild();
                    if (focusedChild == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7n = c7n;
                    focusedChild = focusedChild;
                    if (!c7n.A01.A0K(focusedChild)) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    focusedChild = null;
                    c = 3;
                    break;
            }
        }
    }

    public final View A0w(int i) {
        C7N c7n = this;
        View viewA09 = null;
        char c = c7n.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    viewA09 = c7n.A01.A09(i);
                    c = 3;
                    break;
                case 3:
                    return viewA09;
                case 4:
                    viewA09 = null;
                    c = 3;
                    break;
            }
        }
    }

    public final View A0x(View view, int i) {
        return null;
    }

    public C7L A0y(Context context, AttributeSet attributeSet) {
        return new C7L(context, attributeSet);
    }

    public C7L A0z(ViewGroup.LayoutParams layoutParams) {
        C7L c7l = null;
        char c = layoutParams instanceof C7L ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    layoutParams = layoutParams;
                    c7l = new C7L((C7L) layoutParams);
                    c = 3;
                    break;
                case 3:
                    return c7l;
                case 4:
                    layoutParams = layoutParams;
                    if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    layoutParams = layoutParams;
                    c7l = new C7L((ViewGroup.MarginLayoutParams) layoutParams);
                    c = 3;
                    break;
                case 6:
                    layoutParams = layoutParams;
                    c7l = new C7L(layoutParams);
                    c = 3;
                    break;
            }
        }
    }

    public final void A10() {
        if (this.A02 != null) {
            this.A02.A09();
        }
    }

    public final void A11() {
        if (this.A03 != null) {
            this.A03.requestLayout();
        }
    }

    public final void A12(int i) {
        if (this.A03 != null) {
            this.A03.A1M(i);
        }
    }

    public final void A13(int i) {
        if (this.A03 != null) {
            this.A03.A1N(i);
        }
    }

    public final void A14(int i) {
    }

    public final void A15(int i, int i2) {
        C7N c7n = this;
        int i3 = 0;
        c7n.A0C = View.MeasureSpec.getSize(i);
        c7n.A0D = View.MeasureSpec.getMode(i);
        char c = c7n.A0D == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (!C8H.A1A) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    i3 = 0;
                    c7n.A0C = 0;
                    c = 4;
                    break;
                case 4:
                    c7n = c7n;
                    c7n.A0A = View.MeasureSpec.getSize(i2);
                    c7n.A0B = View.MeasureSpec.getMode(i2);
                    if (c7n.A0B != 0) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (!C8H.A1A) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    c7n.A0A = i3;
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    public final void A16(int i, int count) {
        C7N c7n = this;
        Rect rect = null;
        int minX = 0;
        int minY = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int iA0Z = c7n.A0Z();
        int maxY = iA0Z == 0 ? 2 : 4;
        while (true) {
            switch (maxY) {
                case 2:
                    c7n = c7n;
                    c7n.A03.A1T(i, count);
                    maxY = 3;
                    break;
                case 3:
                    return;
                case 4:
                    minY = Integer.MAX_VALUE;
                    i3 = Integer.MAX_VALUE;
                    i2 = Integer.MIN_VALUE;
                    i4 = Integer.MIN_VALUE;
                    minX = 0;
                    maxY = 5;
                    break;
                case 5:
                    if (minX >= iA0Z) {
                        maxY = 15;
                        break;
                    } else {
                        maxY = 6;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    View viewA0w = c7n.A0w(minX);
                    rect = c7n.A03.A0p;
                    c7n.A0H(viewA0w, rect);
                    if (rect.left >= minY) {
                        maxY = 8;
                        break;
                    } else {
                        maxY = 7;
                        break;
                    }
                case 7:
                    rect = rect;
                    minY = rect.left;
                    maxY = 8;
                    break;
                case 8:
                    rect = rect;
                    if (rect.right <= i2) {
                        maxY = 10;
                        break;
                    } else {
                        maxY = 9;
                        break;
                    }
                case 9:
                    rect = rect;
                    i2 = rect.right;
                    maxY = 10;
                    break;
                case 10:
                    rect = rect;
                    if (rect.top >= i3) {
                        maxY = 12;
                        break;
                    } else {
                        maxY = 11;
                        break;
                    }
                case 11:
                    rect = rect;
                    i3 = rect.top;
                    maxY = 12;
                    break;
                case 12:
                    rect = rect;
                    int maxY2 = rect.bottom;
                    if (maxY2 <= i4) {
                        maxY = 14;
                        break;
                    } else {
                        maxY = 13;
                        break;
                    }
                case 13:
                    rect = rect;
                    i4 = rect.bottom;
                    maxY = 14;
                    break;
                case 14:
                    minX++;
                    maxY = 5;
                    break;
                case 15:
                    c7n = c7n;
                    c7n.A03.A0p.set(minY, i3, i2, i4);
                    c7n.A19(c7n.A03.A0p, i, count);
                    maxY = 3;
                    break;
            }
        }
    }

    public final void A17(int i, int i2) {
        this.A03.setMeasuredDimension(i, i2);
    }

    public final void A18(int i, AnonymousClass85 anonymousClass85) {
        View viewA0w = A0w(i);
        A0A(i);
        anonymousClass85.A0X(viewA0w);
    }

    public void A19(Rect rect, int usedWidth, int width) {
        A17(A00(usedWidth, rect.width() + A0h() + A0i(), A0f()), A00(width, rect.height() + A0j() + A0g(), A0e()));
    }

    public final void A1A(View view) {
        A1C(view, -1);
    }

    public final void A1B(View view) {
        A1D(view, -1);
    }

    public final void A1C(View view, int i) {
        A0G(view, i, true);
    }

    public final void A1D(View view, int i) {
        A0G(view, i, false);
    }

    public final void A1E(View view, int i, int i2) {
        C7L c7l = (C7L) view.getLayoutParams();
        Rect rectA17 = this.A03.A17(view);
        int i3 = i + rectA17.left + rectA17.right;
        int widthSpec = i2 + rectA17.top + rectA17.bottom;
        int iA01 = A01(A0k(), A0l(), A0h() + A0i() + c7l.leftMargin + c7l.rightMargin + i3, c7l.width, A29());
        int iA012 = A01(A0a(), A0b(), A0j() + A0g() + c7l.topMargin + c7l.bottomMargin + widthSpec, c7l.height, A2A());
        if (A1f(view, iA01, iA012, c7l)) {
            view.measure(iA01, iA012);
        }
    }

    public final void A1F(View view, int i, int i2, int i3, int i4) {
        C7L c7l = (C7L) view.getLayoutParams();
        Rect rect = c7l.A03;
        view.layout(rect.left + i + c7l.leftMargin, rect.top + i2 + c7l.topMargin, (i3 - rect.right) - c7l.rightMargin, (i4 - rect.bottom) - c7l.bottomMargin);
    }

    public final void A1G(View view, C6X c6x) {
        C7N c7n = this;
        C8G c8gA05 = C8H.A05(view);
        char c = c8gA05 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    c8gA05 = c8gA05;
                    if (!c7n.A01.A0K(c8gA05.A0H)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c7n = c7n;
                    view = view;
                    c6x = c6x;
                    c7n.A1P(c7n.A03.A0r, c7n.A03.A0s, view, c6x);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public final void A1H(View view, AnonymousClass85 anonymousClass85) {
        A0D(view);
        anonymousClass85.A0X(view);
    }

    public final void A1I(View view, boolean z, Rect rect) {
        C7N c7n = this;
        Matrix matrix = null;
        char c = z ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    rect = rect;
                    Rect rect2 = ((C7L) view.getLayoutParams()).A03;
                    rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
                    c = 3;
                    break;
                case 3:
                    c7n = c7n;
                    if (c7n.A03 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    matrix = view.getMatrix();
                    if (matrix == null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    matrix = matrix;
                    if (!matrix.isIdentity()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    rect = rect;
                    matrix = matrix;
                    RectF rectF = c7n.A03.A0q;
                    rectF.set(rect);
                    matrix.mapRect(rectF);
                    rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
                    c = 7;
                    break;
                case 7:
                    View view2 = view;
                    rect.offset(view2.getLeft(), view2.getTop());
                    return;
                case '\b':
                    view = view;
                    rect = rect;
                    rect.set(0, 0, view.getWidth(), view.getHeight());
                    c = 3;
                    break;
            }
        }
    }

    public final void A1J(C6X c6x) {
        A0L(this.A03.A0r, this.A03.A0s, c6x);
    }

    public final void A1K(AbstractC02102g abstractC02102g, AbstractC02102g abstractC02102g2) {
    }

    public final void A1L(AnonymousClass85 anonymousClass85) {
        C7N c7n = this;
        C8G vh = null;
        View viewA0F = null;
        int iA0E = anonymousClass85.A0E();
        int i = iA0E - 1;
        int scrapCount = 2;
        while (true) {
            switch (scrapCount) {
                case 2:
                    if (i < 0) {
                        scrapCount = 10;
                        break;
                    } else {
                        scrapCount = 3;
                        break;
                    }
                case 3:
                    anonymousClass85 = anonymousClass85;
                    viewA0F = anonymousClass85.A0F(i);
                    vh = C8H.A05(viewA0F);
                    if (!vh.A0h()) {
                        scrapCount = 5;
                        break;
                    } else {
                        scrapCount = 4;
                        break;
                    }
                case 4:
                    i--;
                    scrapCount = 2;
                    break;
                case 5:
                    vh = vh;
                    vh.A0Z(false);
                    if (!vh.A0e()) {
                        scrapCount = 7;
                        break;
                    } else {
                        scrapCount = 6;
                        break;
                    }
                case 6:
                    c7n = c7n;
                    viewA0F = viewA0F;
                    c7n.A03.removeDetachedView(viewA0F, false);
                    scrapCount = 7;
                    break;
                case 7:
                    c7n = c7n;
                    if (c7n.A03.A05 == null) {
                        scrapCount = 9;
                        break;
                    } else {
                        scrapCount = 8;
                        break;
                    }
                case 8:
                    c7n = c7n;
                    vh = vh;
                    c7n.A03.A05.A0E(vh);
                    scrapCount = 9;
                    break;
                case 9:
                    anonymousClass85 = anonymousClass85;
                    viewA0F = viewA0F;
                    vh = vh;
                    vh.A0Z(true);
                    anonymousClass85.A0V(viewA0F);
                    scrapCount = 4;
                    break;
                case 10:
                    anonymousClass85 = anonymousClass85;
                    anonymousClass85.A0L();
                    if (iA0E <= 0) {
                        scrapCount = 12;
                        break;
                    } else {
                        scrapCount = 11;
                        break;
                    }
                case 11:
                    c7n = c7n;
                    c7n.A03.invalidate();
                    scrapCount = 12;
                    break;
                case 12:
                    return;
            }
        }
    }

    public final void A1M(AnonymousClass85 anonymousClass85) {
        C7N c7n = this;
        int iA0Z = c7n.A0Z() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (iA0Z < 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    anonymousClass85 = anonymousClass85;
                    View v = c7n.A0w(iA0Z);
                    c7n.A0J(anonymousClass85, iA0Z, v);
                    iA0Z--;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A1N(AnonymousClass85 anonymousClass85) {
        C7N c7n = this;
        int iA0Z = c7n.A0Z() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (iA0Z < 0) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    if (!C8H.A05(c7n.A0w(iA0Z)).A0h()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c7n = c7n;
                    anonymousClass85 = anonymousClass85;
                    c7n.A18(iA0Z, anonymousClass85);
                    c = 5;
                    break;
                case 5:
                    iA0Z--;
                    c = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    public void A1O(AnonymousClass85 anonymousClass85, C8D c8d, int i, int i2) {
        this.A03.A1T(i, i2);
    }

    public void A1P(AnonymousClass85 anonymousClass85, C8D c8d, View view, C6X c6x) {
        C7N c7n = this;
        int iA0s = 0;
        int iA0s2 = 0;
        char c = c7n.A2A() ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    view = view;
                    iA0s = c7n.A0s(view);
                    c = 3;
                    break;
                case 3:
                    c7n = c7n;
                    if (!c7n.A29()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7n = c7n;
                    view = view;
                    iA0s2 = c7n.A0s(view);
                    c = 5;
                    break;
                case 5:
                    C6V itemInfo = C6V.A00(iA0s, 1, iA0s2, 1, false, false);
                    c6x.A0Q(itemInfo);
                    return;
                case 6:
                    iA0s2 = 0;
                    c = 5;
                    break;
                case 7:
                    iA0s = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void A1Q(C7W c7w) {
        C7N c7n = this;
        char c = c7n.A02 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    c7w = c7w;
                    if (c7w == c7n.A02) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    if (!c7n.A02.A0F()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c7n = c7n;
                    c7n.A02.A09();
                    c = 5;
                    break;
                case 5:
                    C7N c7n2 = c7n;
                    c7n2.A02 = c7w;
                    c7n2.A02.A0D(c7n2.A03, c7n2);
                    return;
            }
        }
    }

    public void A1R(C8H c8h) {
    }

    public final void A1S(C8H c8h) {
        this.A07 = true;
        A0N(c8h);
    }

    public final void A1T(C8H c8h) {
        A15(View.MeasureSpec.makeMeasureSpec(c8h.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(c8h.getHeight(), 1073741824));
    }

    public final void A1U(C8H c8h) {
        C7N c7n = this;
        char c = c8h == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    c7n.A03 = null;
                    c7n.A01 = null;
                    c7n.A0C = 0;
                    c7n.A0A = 0;
                    c = 3;
                    break;
                case 3:
                    C7N c7n2 = c7n;
                    c7n2.A0D = 1073741824;
                    c7n2.A0B = 1073741824;
                    return;
                case 4:
                    c7n = c7n;
                    c8h = c8h;
                    c7n.A03 = c8h;
                    c7n.A01 = c8h.A01;
                    c7n.A0C = c8h.getWidth();
                    c7n.A0A = c8h.getHeight();
                    c = 3;
                    break;
            }
        }
    }

    public void A1V(C8H c8h, int i, int i2) {
    }

    public void A1W(C8H c8h, int i, int i2) {
    }

    public void A1X(C8H c8h, int i, int i2, int i3) {
    }

    public void A1Y(C8H c8h, int i, int i2, Object obj) {
        A0P(c8h, i, i2);
    }

    public final void A1Z(C8H c8h, AnonymousClass85 anonymousClass85) {
        this.A07 = false;
        A25(c8h, anonymousClass85);
    }

    public final void A1a(boolean z) {
        this.A06 = z;
    }

    public final boolean A1b() {
        C7N c7n = this;
        boolean z = false;
        ViewGroup.LayoutParams layoutParams = null;
        int iA0Z = c7n.A0Z();
        int i = 0;
        int childCount = 2;
        while (true) {
            switch (childCount) {
                case 2:
                    if (i >= iA0Z) {
                        childCount = 8;
                        break;
                    } else {
                        childCount = 3;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    layoutParams = c7n.A0w(i).getLayoutParams();
                    int childCount2 = layoutParams.width;
                    if (childCount2 >= 0) {
                        childCount = 7;
                        break;
                    } else {
                        childCount = 4;
                        break;
                    }
                case 4:
                    layoutParams = layoutParams;
                    int childCount3 = layoutParams.height;
                    if (childCount3 >= 0) {
                        childCount = 7;
                        break;
                    } else {
                        childCount = 5;
                        break;
                    }
                case 5:
                    z = true;
                    childCount = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    i++;
                    childCount = 2;
                    break;
                case 8:
                    z = false;
                    childCount = 6;
                    break;
            }
        }
    }

    public final boolean A1c() {
        C7N c7n = this;
        boolean z = false;
        char c = c7n.A03 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    if (!c7n.A03.A0B) {
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

    public final boolean A1d() {
        return this.A0E;
    }

    public final boolean A1e(int i, Bundle bundle) {
        return A0T(this.A03.A0r, this.A03.A0s, i, bundle);
    }

    public final boolean A1f(View view, int i, int i2, C7L c7l) {
        C7N c7n = this;
        boolean z = false;
        char c = !view.isLayoutRequested() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    if (!c7n.A0F) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    view = view;
                    c7l = c7l;
                    if (!A0R(view.getWidth(), i, c7l.width)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    c7l = c7l;
                    if (!A0R(view.getHeight(), i2, c7l.height)) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    public final boolean A1g(View view, int i, Bundle bundle) {
        return A0U(this.A03.A0r, this.A03.A0s, view, i, bundle);
    }

    public boolean A1h(C7L c7l) {
        boolean z = false;
        char c = c7l != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
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

    public final boolean A1i(C8H c8h, View view, Rect rect, boolean z) {
        return A1j(c8h, view, rect, z, false);
    }

    public final boolean A1j(C8H c8h, View view, Rect rect, boolean z, boolean z2) {
        C7N c7n = this;
        boolean z3 = false;
        int[] iArrA0X = c7n.A0X(c8h, view, rect, z);
        int i = iArrA0X[0];
        int i2 = iArrA0X[1];
        char c = z2 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c7n = c7n;
                    c8h = c8h;
                    if (!c7n.A0V(c8h, i, i2)) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (i != 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (i2 == 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    if (!z) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8h.scrollBy(i, i2);
                    c = 7;
                    break;
                case 7:
                    z3 = true;
                    c = '\b';
                    break;
                case '\b':
                    return z3;
                case '\t':
                    c8h = c8h;
                    c8h.A1X(i, i2);
                    c = 7;
                    break;
            }
        }
    }

    public final boolean A1k(C8H c8h, C8D c8d, View view, View view2) {
        return A0W(c8h, view, view2);
    }

    public final boolean A1l(C8H c8h, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    public int A1m(int i, AnonymousClass85 anonymousClass85, C8D c8d) {
        return 0;
    }

    public int A1n(int i, AnonymousClass85 anonymousClass85, C8D c8d) {
        return 0;
    }

    public int A1o(C8D c8d) {
        return 0;
    }

    public int A1p(C8D c8d) {
        return 0;
    }

    public int A1q(C8D c8d) {
        return 0;
    }

    public int A1r(C8D c8d) {
        return 0;
    }

    public int A1s(C8D c8d) {
        return 0;
    }

    public int A1t(C8D c8d) {
        return 0;
    }

    public Parcelable A1u() {
        return null;
    }

    public View A1v(int childCount) {
        C7N c7n = this;
        C8G c8gA05 = null;
        View viewA0w = null;
        int iA0Z = c7n.A0Z();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA0Z) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c7n = c7n;
                    viewA0w = c7n.A0w(i);
                    c8gA05 = C8H.A05(viewA0w);
                    if (c8gA05 != null) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    i++;
                    i2 = 2;
                    break;
                case 5:
                    viewA0w = null;
                    i2 = 10;
                    break;
                case 6:
                    c8gA05 = c8gA05;
                    if (c8gA05.A0I() != childCount) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 7;
                        break;
                    }
                case 7:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 8:
                    c7n = c7n;
                    if (!c7n.A03.A0s.A07()) {
                        i2 = 9;
                        break;
                    } else {
                        i2 = 10;
                        break;
                    }
                case 9:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        i2 = 10;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 10:
                    return viewA0w;
            }
        }
    }

    @Nullable
    public View A1w(View view, int i, AnonymousClass85 anonymousClass85, C8D c8d) {
        return null;
    }

    public void A1y(int i) {
    }

    public void A1z(int i, int i2, C8D c8d, C7F c7f) {
    }

    public void A20(int i, C7F c7f) {
    }

    public void A21(Parcelable parcelable) {
    }

    public void A22(AccessibilityEvent accessibilityEvent) {
        A0K(this.A03.A0r, this.A03.A0s, accessibilityEvent);
    }

    public void A23(AnonymousClass85 anonymousClass85, C8D c8d) {
        Log.e(A07(67, 12, 54), A07(0, 67, 80));
    }

    public void A24(C8D c8d) {
    }

    @CallSuper
    public void A25(C8H c8h, AnonymousClass85 anonymousClass85) {
        A0O(c8h);
    }

    public void A26(C8H c8h, C8D c8d, int i) {
        Log.e(A07(67, 12, 54), A07(79, 68, 17));
    }

    public void A27(String str) {
        if (this.A03 != null) {
            this.A03.A1i(str);
        }
    }

    public boolean A28() {
        return false;
    }

    public boolean A29() {
        return false;
    }

    public boolean A2A() {
        return false;
    }

    public boolean A2B() {
        return false;
    }
}
