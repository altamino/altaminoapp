package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$DecorView;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$SavedState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6A, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C6A extends ViewGroup {
    private static byte[] A0u;
    public static final int[] A0v;
    private static final Interpolator A0w;
    private static final AnonymousClass69 A0x;
    private static final Comparator<C03045z> A0y;
    public int A00;
    public C5U A01;
    private float A02;
    private float A03;
    private float A04;
    private float A05;
    private float A06;
    private float A07;
    private int A08;
    private int A09;
    private int A0A;
    private int A0B;
    private int A0C;
    private int A0D;
    private int A0E;
    private int A0F;
    private int A0G;
    private int A0H;
    private int A0I;
    private int A0J;
    private int A0K;
    private int A0L;
    private int A0M;
    private int A0N;
    private int A0O;
    private int A0P;
    private int A0Q;
    private int A0R;
    private Drawable A0S;
    private Parcelable A0T;
    private VelocityTracker A0U;
    private EdgeEffect A0V;
    private EdgeEffect A0W;
    private Scroller A0X;
    private AnonymousClass63 A0Y;
    private AnonymousClass63 A0Z;
    private AnonymousClass64 A0a;
    private AnonymousClass65 A0b;
    private ClassLoader A0c;
    private ArrayList<View> A0d;
    private List<AnonymousClass62> A0e;
    private List<AnonymousClass63> A0f;
    private boolean A0g;
    private boolean A0h;
    private boolean A0i;
    private boolean A0j;
    private boolean A0k;
    private boolean A0l;
    private boolean A0m;
    private boolean A0n;
    private boolean A0o;
    private boolean A0p;
    private final Rect A0q;
    private final C03045z A0r;
    private final Runnable A0s;
    private final ArrayList<C03045z> A0t;

    private static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0u, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 89);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0C() {
        A0u = new byte[]{-110, -62, -28, -31, -44, -34, -41, -33, -45, -26, -37, -43, -110, -45, -42, -45, -30, -26, -41, -28, -84, -110, -29, -10, -14, 4, -35, -18, -12, -14, -1, 22, 52, 65, 65, 66, 71, -13, 52, 55, 55, -13, 67, 52, 58, 56, 69, -13, 55, 56, 54, 66, 69, -13, 73, 60, 56, 74, -13, 55, 72, 69, 60, 65, 58, -13, 63, 52, 76, 66, 72, 71, -33, -14, -2, 2, -14, 0, 1, -14, -15, -83, -4, -13, -13, 0, -16, -1, -14, -14, -5, -83, -3, -18, -12, -14, -83, -7, -10, -6, -10, 1, -83, -51, -63, 7, 16, 22, 15, 5, -37, -63, -54, -6, 11, 17, 15, 28, -54, 13, 22, 11, 29, 29, -28, -54, -69, -49, -52, -121, -56, -41, -41, -45, -48, -54, -56, -37, -48, -42, -43, -114, -38, -121, -73, -56, -50, -52, -39, -88, -53, -56, -41, -37, -52, -39, -121, -54, -49, -56, -43, -50, -52, -53, -121, -37, -49, -52, -121, -56, -53, -56, -41, -37, -52, -39, -114, -38, -121, -54, -42, -43, -37, -52, -43, -37, -38, -121, -34, -48, -37, -49, -42, -36, -37, -121, -54, -56, -45, -45, -48, -43, -50, -121, -73, -56, -50, -52, -39, -88, -53, -56, -41, -37, -52, -39, -118, -43, -42, -37, -48, -51, -32, -85, -56, -37, -56, -70, -52, -37, -86, -49, -56, -43, -50, -52, -53, -120, -121, -84, -33, -41, -52, -54, -37, -52, -53, -121, -56, -53, -56, -41, -37, -52, -39, -121, -48, -37, -52, -44, -121, -54, -42, -36, -43, -37, -95, -121, -111, -82, -81, -111, -70, -22, -5, 1, -1, 12, -70, 3, -2, -44, -70, -14, 70, 65, 65, -14, 69, 63, 51, 62, 62, 13, -14, 54, 55, 56, 51, 71, 62, 70, 59, 64, 57, -14, 70, 65, -14, -3, 14, 14, 11, 19, -17, -1, 14, 11, 8, 8, -68, 16, 14, 5, 1, 0, -68, 16, 11, -68, 2, 5, 10, 0, -68, 2, 11, -1, 17, 15, -68, -2, -3, 15, 1, 0, -68, 11, 10, -68, 10, 11, 10, -55, -1, 4, 5, 8, 0, -68, -1, 17, 14, 14, 1, 10, 16, -68, 2, 11, -1, 17, 15, 1, 0, -68, 18, 5, 1, 19, -68, 21, 20, -10, 7, 13, 11, -7, 9, 24, 21, 18, 18, 11, 10, -58, 10, 15, 10, -58, 20, 21, 26, -58, 9, 7, 18, 18, -58, 25, 27, 22, 11, 24, 9, 18, 7, 25, 25, -58, 15, 19, 22, 18, 11, 19, 11, 20, 26, 7, 26, 15, 21, 20};
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.facebook.ads.redexgen.X.69] */
    static {
        A0C();
        A0v = new int[]{R.attr.layout_gravity};
        A0y = new Comparator<C03045z>() { // from class: com.facebook.ads.redexgen.X.5u
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.Comparator
            /* renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final int compare(C03045z c03045z, C03045z c03045z2) {
                return c03045z.A02 - c03045z2.A02;
            }
        };
        A0w = new Interpolator() { // from class: com.facebook.ads.redexgen.X.5v
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
        A0x = new Comparator<View>() { // from class: com.facebook.ads.redexgen.X.69
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.Comparator
            /* renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final int compare(View view, View view2) {
                int i = 0;
                AnonymousClass60 anonymousClass60 = (AnonymousClass60) view.getLayoutParams();
                AnonymousClass60 anonymousClass602 = (AnonymousClass60) view2.getLayoutParams();
                char c = anonymousClass60.A05 != anonymousClass602.A05 ? (char) 2 : (char) 6;
                while (true) {
                    switch (c) {
                        case 2:
                            anonymousClass60 = anonymousClass60;
                            if (!anonymousClass60.A05) {
                                c = 5;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            i = 1;
                            c = 4;
                            break;
                        case 4:
                            return i;
                        case 5:
                            i = -1;
                            c = 4;
                            break;
                        case 6:
                            anonymousClass60 = anonymousClass60;
                            anonymousClass602 = anonymousClass602;
                            i = anonymousClass60.A02 - anonymousClass602.A02;
                            c = 4;
                            break;
                    }
                }
            }
        };
    }

    public C6A(Context context) {
        super(context);
        this.A0t = new ArrayList<>();
        this.A0r = new C03045z();
        this.A0q = new Rect();
        this.A0O = -1;
        this.A0T = null;
        this.A0c = null;
        this.A02 = -3.4028235E38f;
        this.A07 = Float.MAX_VALUE;
        this.A0L = 1;
        this.A08 = -1;
        this.A0i = true;
        this.A0n = false;
        this.A0s = new Runnable() { // from class: com.facebook.ads.redexgen.X.5w
            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                this.A00.setScrollState(0);
                this.A00.A0f();
            }
        };
        this.A0P = 0;
        A0D();
    }

    private final float A00(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private int A01(int i, float f, int i2, int i3) {
        C6A c6a = this;
        int iMax = 0;
        float f2 = 0.0f;
        char c = Math.abs(i3) > c6a.A0H ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (Math.abs(i2) <= c6a.A0K) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    if (i2 <= 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    iMax = i;
                    c = 5;
                    break;
                case 5:
                    c6a = c6a;
                    if (c6a.A0t.size() <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    iMax = Math.max(c6a.A0t.get(0).A02, Math.min(iMax, c6a.A0t.get(c6a.A0t.size() - 1).A02));
                    c = 7;
                    break;
                case 7:
                    return iMax;
                case '\b':
                    iMax = i + 1;
                    c = 5;
                    break;
                case '\t':
                    c6a = c6a;
                    if (i < c6a.A00) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    f2 = 0.4f;
                    c = 11;
                    break;
                case 11:
                    iMax = i + ((int) (f + f2));
                    c = 5;
                    break;
                case '\f':
                    f2 = 0.6f;
                    c = 11;
                    break;
            }
        }
    }

    private Rect A02(Rect rect, View view) {
        ViewGroup group = this;
        ViewParent parent = null;
        char c = rect == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    rect = new Rect();
                    c = 3;
                    break;
                case 3:
                    view = view;
                    if (view != null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    rect = rect;
                    rect.set(0, 0, 0, 0);
                    c = 5;
                    break;
                case 5:
                    return rect;
                case 6:
                    rect = rect;
                    view = view;
                    rect.left = view.getLeft();
                    rect.right = view.getRight();
                    rect.top = view.getTop();
                    rect.bottom = view.getBottom();
                    parent = view.getParent();
                    c = 7;
                    break;
                case 7:
                    parent = parent;
                    if (!(parent instanceof ViewGroup)) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    group = (C6A) group;
                    parent = parent;
                    if (parent == group) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    rect = rect;
                    ViewGroup viewGroup = (ViewGroup) parent;
                    rect.left += viewGroup.getLeft();
                    rect.right += viewGroup.getRight();
                    rect.top += viewGroup.getTop();
                    rect.bottom += viewGroup.getBottom();
                    parent = viewGroup.getParent();
                    c = 7;
                    break;
            }
        }
    }

    private C03045z A03() {
        C6A c6a = this;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        C03045z c03045z = null;
        float rightBound = 0.0f;
        float scrollOffset = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        C03045z c03045z2 = null;
        float f5 = 0.0f;
        int clientWidth = c6a.getClientWidth();
        float offset = clientWidth > 0 ? 2.8E-45f : 2.4E-44f;
        while (true) {
            switch (offset) {
                case 2.8E-45f:
                    c6a = c6a;
                    float scrollOffset2 = c6a.getScrollX();
                    float offset2 = clientWidth;
                    scrollOffset = scrollOffset2 / offset2;
                    offset = 4.2E-45f;
                    break;
                case 4.2E-45f:
                    if (clientWidth <= 0) {
                        offset = 7.0E-45f;
                        break;
                    } else {
                        offset = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    c6a = c6a;
                    float offset3 = clientWidth;
                    f5 = c6a.A0M / offset3;
                    offset = 7.0E-45f;
                    break;
                case 7.0E-45f:
                    i2 = -1;
                    f = 0.0f;
                    rightBound = 0.0f;
                    z = true;
                    c03045z2 = null;
                    i = 0;
                    offset = 8.4E-45f;
                    break;
                case 8.4E-45f:
                    c6a = c6a;
                    if (i >= c6a.A0t.size()) {
                        offset = 2.1E-44f;
                        break;
                    } else {
                        offset = 9.8E-45f;
                        break;
                    }
                case 9.8E-45f:
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i);
                    if (!z) {
                        offset = 1.1E-44f;
                        break;
                    } else {
                        offset = 1.4E-44f;
                        break;
                    }
                case 1.1E-44f:
                    c03045z = c03045z;
                    if (c03045z.A02 == i2 + 1) {
                        offset = 1.4E-44f;
                        break;
                    } else {
                        offset = 1.3E-44f;
                        break;
                    }
                case 1.3E-44f:
                    c6a = c6a;
                    c03045z = c6a.A0r;
                    float offset4 = f + rightBound;
                    c03045z.A00 = offset4 + f5;
                    c03045z.A02 = i2 + 1;
                    float offset5 = c6a.A01.A07(c03045z.A02);
                    c03045z.A01 = offset5;
                    i--;
                    offset = 1.4E-44f;
                    break;
                case 1.4E-44f:
                    c03045z = c03045z;
                    f3 = c03045z.A00;
                    f4 = f3;
                    f2 = c03045z.A01 + f3 + f5;
                    if (!z) {
                        offset = 1.5E-44f;
                        break;
                    } else {
                        offset = 1.7E-44f;
                        break;
                    }
                case 1.5E-44f:
                    if (scrollOffset < f4) {
                        offset = 2.1E-44f;
                        break;
                    } else {
                        offset = 1.7E-44f;
                        break;
                    }
                case 1.7E-44f:
                    if (scrollOffset < f2) {
                        offset = 2.0E-44f;
                        break;
                    } else {
                        offset = 1.8E-44f;
                        break;
                    }
                case 1.8E-44f:
                    c6a = c6a;
                    if (i != c6a.A0t.size() - 1) {
                        offset = 2.24E-44f;
                        break;
                    } else {
                        offset = 2.0E-44f;
                        break;
                    }
                case 2.0E-44f:
                    c03045z = c03045z;
                    c03045z2 = c03045z;
                    offset = 2.1E-44f;
                    break;
                case 2.1E-44f:
                    return c03045z2;
                case 2.24E-44f:
                    c03045z = c03045z;
                    z = false;
                    i2 = c03045z.A02;
                    f = f3;
                    rightBound = c03045z.A01;
                    c03045z2 = c03045z;
                    i++;
                    offset = 8.4E-45f;
                    break;
                case 2.4E-44f:
                    f5 = 0.0f;
                    scrollOffset = 0.0f;
                    offset = 4.2E-45f;
                    break;
            }
        }
    }

    private final C03045z A04(int i) {
        C6A c6a = this;
        C03045z c03045z = null;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (i2 >= c6a.A0t.size()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i2);
                    if (c03045z.A02 != i) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return c03045z;
                case 5:
                    i2++;
                    c = 2;
                    break;
                case 6:
                    c03045z = null;
                    c = 4;
                    break;
            }
        }
    }

    private final C03045z A05(int i, int i2) {
        C6A c6a = this;
        C03045z c03045z = new C03045z();
        c03045z.A02 = i;
        c03045z.A03 = c6a.A01.A0B(c6a, i);
        c03045z.A01 = c6a.A01.A07(i);
        char c = i2 >= 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (i2 < c6a.A0t.size()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    c03045z = c03045z;
                    c6a.A0t.add(c03045z);
                    c = 4;
                    break;
                case 4:
                    return c03045z;
                case 5:
                    c6a = c6a;
                    c03045z = c03045z;
                    c6a.A0t.add(i2, c03045z);
                    c = 4;
                    break;
            }
        }
    }

    private final C03045z A06(View view) {
        C6A c6a = this;
        Object parent = null;
        C03045z c03045zA07 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    view = view;
                    parent = view.getParent();
                    if (parent == c6a) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    parent = (ViewParent) parent;
                    if (parent == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    parent = (ViewParent) parent;
                    if (!(parent instanceof View)) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    c03045zA07 = null;
                    c = 6;
                    break;
                case 6:
                    return c03045zA07;
                case 7:
                    parent = (ViewParent) parent;
                    view = (View) parent;
                    c = 2;
                    break;
                case '\b':
                    c6a = c6a;
                    view = view;
                    c03045zA07 = c6a.A07(view);
                    c = 6;
                    break;
            }
        }
    }

    private final C03045z A07(View view) {
        C6A c6a = this;
        C03045z c03045z = null;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (i >= c6a.A0t.size()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    view = view;
                    c03045z = c6a.A0t.get(i);
                    if (!c6a.A01.A0J(view, c03045z.A03)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return c03045z;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    c03045z = null;
                    c = 4;
                    break;
            }
        }
    }

    private void A09() {
        this.A0k = false;
        this.A0m = false;
        if (this.A0U != null) {
            this.A0U.recycle();
            this.A0U = null;
        }
    }

    private void A0A() {
        C6A c6a = this;
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    c6a = c6a;
                    int i3 = c6a.getChildCount();
                    if (i >= i3) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    if (!((AnonymousClass60) c6a.getChildAt(i).getLayoutParams()).A05) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    c6a.removeViewAt(i);
                    i--;
                    i2 = 5;
                    break;
                case 5:
                    i++;
                    i2 = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    private void A0B() {
        C6A c6a = this;
        int childCount = 0;
        int i = 0;
        char c = c6a.A0F != 0 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (c6a.A0d != null) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    c6a.A0d = new ArrayList<>();
                    c = 4;
                    break;
                case 4:
                    c6a = c6a;
                    i = c6a.getChildCount();
                    childCount = 0;
                    c = 5;
                    break;
                case 5:
                    if (childCount >= i) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    c6a.A0d.add(c6a.getChildAt(childCount));
                    childCount++;
                    c = 5;
                    break;
                case 7:
                    c6a = c6a;
                    c6a.A0d.clear();
                    c = 4;
                    break;
                case '\b':
                    c6a = c6a;
                    Collections.sort(c6a.A0d, A0x);
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }

    private final void A0D() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.A0X = new Scroller(context, A0w);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.A0R = viewConfiguration.getScaledPagingTouchSlop();
        float density = 400.0f * f;
        this.A0K = (int) density;
        this.A0J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.A0V = new EdgeEffect(context);
        this.A0W = new EdgeEffect(context);
        float density2 = 25.0f * f;
        this.A0H = (int) density2;
        float density3 = 2.0f * f;
        this.A0C = (int) density3;
        float density4 = 16.0f * f;
        this.A0E = (int) density4;
        C02985s.A0A(this, new C5L() { // from class: com.facebook.ads.redexgen.X.61
            /* JADX WARN: Type inference failed for: r1v0 */
            /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
            /* JADX WARN: Type inference failed for: r1v2 */
            /* JADX WARN: Type inference failed for: r1v3 */
            private boolean A00() {
                AnonymousClass61 anonymousClass61 = this;
                ?? r1 = 1;
                char c = anonymousClass61.A00.A01 != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            anonymousClass61 = anonymousClass61;
                            if (anonymousClass61.A00.A01.A08() <= r1) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            return r1;
                        case 4:
                            r1 = 0;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C5L
            public final void A07(View view, AccessibilityEvent accessibilityEvent) {
                AnonymousClass61 anonymousClass61 = this;
                super.A07(view, accessibilityEvent);
                accessibilityEvent.setClassName(C6A.class.getName());
                accessibilityEvent.setScrollable(anonymousClass61.A00());
                char c = accessibilityEvent.getEventType() == 4096 ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            anonymousClass61 = anonymousClass61;
                            if (anonymousClass61.A00.A01 == null) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            anonymousClass61 = anonymousClass61;
                            accessibilityEvent = accessibilityEvent;
                            accessibilityEvent.setItemCount(anonymousClass61.A00.A01.A08());
                            accessibilityEvent.setFromIndex(anonymousClass61.A00.A00);
                            accessibilityEvent.setToIndex(anonymousClass61.A00.A00);
                            c = 4;
                            break;
                        case 4:
                            return;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C5L
            public final void A08(View view, C6X c6x) {
                AnonymousClass61 anonymousClass61 = this;
                super.A08(view, c6x);
                c6x.A0O(C6A.class.getName());
                c6x.A0R(anonymousClass61.A00());
                char c = anonymousClass61.A00.canScrollHorizontally(1) ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            c6x = c6x;
                            c6x.A0N(4096);
                            c = 3;
                            break;
                        case 3:
                            anonymousClass61 = anonymousClass61;
                            if (!anonymousClass61.A00.canScrollHorizontally(-1)) {
                                c = 5;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            c6x = c6x;
                            c6x.A0N(8192);
                            c = 5;
                            break;
                        case 5:
                            return;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.C5L
            public final boolean A09(View view, int i, Bundle bundle) throws Resources.NotFoundException {
                AnonymousClass61 anonymousClass61 = this;
                boolean z = true;
                char c = super.A09(view, i, bundle) ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            return z;
                        case 3:
                            switch (i) {
                                case 4096:
                                    c = 5;
                                    break;
                                case 8192:
                                    c = '\b';
                                    break;
                                default:
                                    c = 4;
                                    break;
                            }
                        case 4:
                            z = false;
                            c = 2;
                            break;
                        case 5:
                            anonymousClass61 = anonymousClass61;
                            if (!anonymousClass61.A00.canScrollHorizontally(z ? 1 : 0)) {
                                c = 7;
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 6:
                            anonymousClass61 = anonymousClass61;
                            anonymousClass61.A00.setCurrentItem(anonymousClass61.A00.A00 + 1);
                            c = 2;
                            break;
                        case 7:
                            z = false;
                            c = 2;
                            break;
                        case '\b':
                            anonymousClass61 = anonymousClass61;
                            if (!anonymousClass61.A00.canScrollHorizontally(-1)) {
                                c = '\n';
                                break;
                            } else {
                                c = '\t';
                                break;
                            }
                        case '\t':
                            anonymousClass61 = anonymousClass61;
                            anonymousClass61.A00.setCurrentItem(anonymousClass61.A00.A00 - 1);
                            c = 2;
                            break;
                        case '\n':
                            z = false;
                            c = 2;
                            break;
                    }
                }
            }
        });
        if (C02985s.A00(this) == 0) {
            C02985s.A09(this, 1);
        }
        C02985s.A0B(this, new C5T() { // from class: com.facebook.ads.redexgen.X.5x
            private final Rect A00 = new Rect();

            @Override // com.facebook.ads.redexgen.X.C5T
            public final C6F A4t(View view, C6F c6f) {
                C03035x c03035x = this;
                int i = 0;
                Rect rect = null;
                int childCount = 0;
                C6F c6fA06 = C02985s.A06(view, c6f);
                int i2 = c6fA06.A07() ? 2 : 3;
                while (true) {
                    switch (i2) {
                        case 2:
                            return c6fA06;
                        case 3:
                            c03035x = c03035x;
                            c6fA06 = c6fA06;
                            rect = c03035x.A00;
                            rect.left = c6fA06.A03();
                            rect.top = c6fA06.A05();
                            rect.right = c6fA06.A04();
                            rect.bottom = c6fA06.A02();
                            i = 0;
                            childCount = c03035x.A01.getChildCount();
                            i2 = 4;
                            break;
                        case 4:
                            if (i >= childCount) {
                                i2 = 6;
                                break;
                            } else {
                                i2 = 5;
                                break;
                            }
                        case 5:
                            c03035x = c03035x;
                            c6fA06 = c6fA06;
                            rect = rect;
                            C6F c6fA05 = C02985s.A05(c03035x.A01.getChildAt(i), c6fA06);
                            rect.left = Math.min(c6fA05.A03(), rect.left);
                            rect.top = Math.min(c6fA05.A05(), rect.top);
                            rect.right = Math.min(c6fA05.A04(), rect.right);
                            rect.bottom = Math.min(c6fA05.A02(), rect.bottom);
                            i++;
                            i2 = 4;
                            break;
                        case 6:
                            rect = rect;
                            int i3 = rect.left;
                            int i4 = rect.top;
                            int i5 = rect.right;
                            int i6 = rect.bottom;
                            c6fA06 = c6fA06.A06(i3, i4, i5, i6);
                            i2 = 2;
                            break;
                    }
                }
            }
        });
    }

    private void A0E(int i) {
        C6A c6a = this;
        int z = 0;
        AnonymousClass63 anonymousClass63 = null;
        int size = 0;
        char c = c6a.A0Z != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c6a.A0Z.onPageSelected(i);
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (c6a.A0f == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    z = 0;
                    size = c6a.A0f.size();
                    c = 5;
                    break;
                case 5:
                    if (z >= size) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    anonymousClass63 = c6a.A0f.get(z);
                    if (anonymousClass63 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass63 = anonymousClass63;
                    anonymousClass63.onPageSelected(i);
                    c = '\b';
                    break;
                case '\b':
                    z++;
                    c = 5;
                    break;
                case '\t':
                    c6a = c6a;
                    if (c6a.A0Y == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c6a = c6a;
                    c6a.A0Y.onPageSelected(i);
                    c = 11;
                    break;
                case 11:
                    return;
            }
        }
    }

    private void A0F(int i) {
        C6A c6a = this;
        int z = 0;
        AnonymousClass63 anonymousClass63 = null;
        int size = 0;
        char c = c6a.A0Z != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c6a.A0Z.onPageScrollStateChanged(i);
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (c6a.A0f == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    z = 0;
                    size = c6a.A0f.size();
                    c = 5;
                    break;
                case 5:
                    if (z >= size) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    anonymousClass63 = c6a.A0f.get(z);
                    if (anonymousClass63 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass63 = anonymousClass63;
                    anonymousClass63.onPageScrollStateChanged(i);
                    c = '\b';
                    break;
                case '\b':
                    z++;
                    c = 5;
                    break;
                case '\t':
                    c6a = c6a;
                    if (c6a.A0Y == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c6a = c6a;
                    c6a.A0Y.onPageScrollStateChanged(i);
                    c = 11;
                    break;
                case 11:
                    return;
            }
        }
    }

    private final void A0G(int i) throws Resources.NotFoundException {
        C6A c6a = this;
        Object obj = null;
        int N = 0;
        C03045z c03045zA06 = null;
        C03045z c03045zA05 = null;
        View currentFocused = null;
        C03045z c03045z = null;
        int i2 = 0;
        C03045z c03045z2 = null;
        float f = 0.0f;
        float paddingLeft = 0.0f;
        int i3 = 0;
        C03045z oldCurInfo = null;
        int pageLimit = 0;
        int i4 = 0;
        View childAt = null;
        int startPos = 0;
        int i5 = 0;
        float f2 = 0.0f;
        float paddingRight = 0.0f;
        int iMin = 0;
        C5U c5u = null;
        int iA08 = 0;
        int i6 = 0;
        int childCount = 0;
        int i7 = 0;
        AnonymousClass60 anonymousClass60 = null;
        C03045z c03045zA07 = null;
        int i8 = 0;
        C03045z c03045zA072 = null;
        View childAt2 = null;
        String hexString = null;
        C03045z c03045zA04 = null;
        char c = c6a.A00 != i ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c03045zA04 = c6a.A04(c6a.A00);
                    c6a.A00 = i;
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (c6a.A01 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    c6a.A0B();
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c6a = c6a;
                    if (!c6a.A0o) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c6a = c6a;
                    c6a.A0B();
                    c = 5;
                    break;
                case '\b':
                    c6a = c6a;
                    if (c6a.getWindowToken() == null) {
                        c = 5;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c6a = c6a;
                    c6a.A01.A0G(c6a);
                    int i9 = c6a.A0L;
                    pageLimit = Math.max(0, c6a.A00 - i9);
                    iA08 = c6a.A01.A08();
                    iMin = Math.min(iA08 - 1, c6a.A00 + i9);
                    if (iA08 == c6a.A0G) {
                        c = '\n';
                        break;
                    } else {
                        c = '^';
                        break;
                    }
                case '\n':
                    c03045zA05 = null;
                    i2 = 0;
                    c = 11;
                    break;
                case 11:
                    c6a = c6a;
                    if (i2 >= c6a.A0t.size()) {
                        c = 15;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c6a = c6a;
                    oldCurInfo = c6a.A0t.get(i2);
                    if (oldCurInfo.A02 < c6a.A00) {
                        c = 'Q';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c6a = c6a;
                    oldCurInfo = oldCurInfo;
                    if (oldCurInfo.A02 != c6a.A00) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    oldCurInfo = oldCurInfo;
                    c03045zA05 = oldCurInfo;
                    c = 15;
                    break;
                case 15:
                    if (c03045zA05 != null) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    if (iA08 <= 0) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c6a = c6a;
                    c03045zA05 = c6a.A05(c6a.A00, i2);
                    c = 18;
                    break;
                case 18:
                    if (c03045zA05 == null) {
                        c = '\'';
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    f = 0.0f;
                    i3 = i2 - 1;
                    if (i3 < 0) {
                        c = 'P';
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i3);
                    c = 21;
                    break;
                case 21:
                    c6a = c6a;
                    startPos = c6a.getClientWidth();
                    if (startPos > 0) {
                        c = 'O';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    paddingLeft = 0.0f;
                    c = 23;
                    break;
                case 23:
                    c6a = c6a;
                    N = c6a.A00 - 1;
                    c = 24;
                    break;
                case 24:
                    if (N < 0) {
                        c = 28;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    if (f < paddingLeft) {
                        c = 'A';
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    if (N >= pageLimit) {
                        c = 'A';
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    if (c03045z != null) {
                        c = 'I';
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    f2 = c03045zA05.A01;
                    i4 = i2 + 1;
                    if (f2 >= 2.0f) {
                        c = '&';
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    c6a = c6a;
                    if (i4 >= c6a.A0t.size()) {
                        c = '@';
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    c6a = c6a;
                    c03045z2 = c6a.A0t.get(i4);
                    c = 31;
                    break;
                case 31:
                    if (startPos > 0) {
                        c = '?';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    paddingRight = 0.0f;
                    c = '!';
                    break;
                case '!':
                    c6a = c6a;
                    i5 = c6a.A00 + 1;
                    c = '\"';
                    break;
                case '\"':
                    if (i5 >= iA08) {
                        c = '&';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    if (f2 < paddingRight) {
                        c = '1';
                        break;
                    } else {
                        c = '$';
                        break;
                    }
                case '$':
                    if (i5 <= iMin) {
                        c = '1';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    if (c03045z2 != null) {
                        c = '9';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    c6a = c6a;
                    c6a.A0Q(c03045zA05, i2, c03045zA04);
                    c = '\'';
                    break;
                case '\'':
                    c6a = c6a;
                    c5u = c6a.A01;
                    i6 = c6a.A00;
                    if (c03045zA05 == null) {
                        c = '0';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '(':
                    obj = c03045zA05.A03;
                    c = ')';
                    break;
                case ')':
                    c6a = c6a;
                    c5u = c5u;
                    c5u.A0I(c6a, i6, obj);
                    c6a.A01.A0F(c6a);
                    childCount = c6a.getChildCount();
                    i7 = 0;
                    c = '*';
                    break;
                case '*':
                    if (i7 >= childCount) {
                        c = 'R';
                        break;
                    } else {
                        c = '+';
                        break;
                    }
                case '+':
                    c6a = c6a;
                    childAt = c6a.getChildAt(i7);
                    anonymousClass60 = (AnonymousClass60) childAt.getLayoutParams();
                    anonymousClass60.A01 = i7;
                    if (!anonymousClass60.A05) {
                        c = ',';
                        break;
                    } else {
                        c = '/';
                        break;
                    }
                case ',':
                    anonymousClass60 = anonymousClass60;
                    if (anonymousClass60.A00 != 0.0f) {
                        c = '/';
                        break;
                    } else {
                        c = '-';
                        break;
                    }
                case '-':
                    c6a = c6a;
                    childAt = childAt;
                    c03045zA07 = c6a.A07(childAt);
                    if (c03045zA07 == null) {
                        c = '/';
                        break;
                    } else {
                        c = '.';
                        break;
                    }
                case '.':
                    anonymousClass60 = anonymousClass60;
                    c03045zA07 = c03045zA07;
                    anonymousClass60.A00 = c03045zA07.A01;
                    anonymousClass60.A02 = c03045zA07.A02;
                    c = '/';
                    break;
                case '/':
                    i7++;
                    c = '*';
                    break;
                case '0':
                    obj = null;
                    c = ')';
                    break;
                case '1':
                    if (c03045z2 == null) {
                        c = '6';
                        break;
                    } else {
                        c = '2';
                        break;
                    }
                case '2':
                    if (i5 != c03045z2.A02) {
                        c = '6';
                        break;
                    } else {
                        c = '3';
                        break;
                    }
                case '3':
                    c6a = c6a;
                    f2 += c03045z2.A01;
                    i4++;
                    if (i4 >= c6a.A0t.size()) {
                        c = '5';
                        break;
                    } else {
                        c = '4';
                        break;
                    }
                case '4':
                    c6a = c6a;
                    c03045z2 = c6a.A0t.get(i4);
                    c = '=';
                    break;
                case '5':
                    c03045z2 = null;
                    c = '=';
                    break;
                case '6':
                    c6a = c6a;
                    C03045z c03045zA052 = c6a.A05(i5, i4);
                    i4++;
                    f2 += c03045zA052.A01;
                    if (i4 >= c6a.A0t.size()) {
                        c = '8';
                        break;
                    } else {
                        c = '7';
                        break;
                    }
                case '7':
                    c6a = c6a;
                    c03045z2 = c6a.A0t.get(i4);
                    c = '=';
                    break;
                case '8':
                    c03045z2 = null;
                    c = '=';
                    break;
                case '9':
                    if (i5 != c03045z2.A02) {
                        c = '=';
                        break;
                    } else {
                        c = ':';
                        break;
                    }
                case ':':
                    if (!c03045z2.A04) {
                        c = ';';
                        break;
                    } else {
                        c = '=';
                        break;
                    }
                case ';':
                    c6a = c6a;
                    c6a.A0t.remove(i4);
                    c6a.A01.A0H(c6a, i5, c03045z2.A03);
                    if (i4 >= c6a.A0t.size()) {
                        c = '>';
                        break;
                    } else {
                        c = '<';
                        break;
                    }
                case '<':
                    c6a = c6a;
                    c03045z2 = c6a.A0t.get(i4);
                    c = '=';
                    break;
                case '=':
                    i5++;
                    c = '\"';
                    break;
                case '>':
                    c03045z2 = null;
                    c = '=';
                    break;
                case '?':
                    c6a = c6a;
                    paddingRight = (c6a.getPaddingRight() / startPos) + 2.0f;
                    c = '!';
                    break;
                case '@':
                    c03045z2 = null;
                    c = 31;
                    break;
                case 'A':
                    if (c03045z == null) {
                        c = 'F';
                        break;
                    } else {
                        c = 'B';
                        break;
                    }
                case 'B':
                    if (N != c03045z.A02) {
                        c = 'F';
                        break;
                    } else {
                        c = 'C';
                        break;
                    }
                case 'C':
                    f += c03045z.A01;
                    i3--;
                    if (i3 < 0) {
                        c = 'E';
                        break;
                    } else {
                        c = 'D';
                        break;
                    }
                case 'D':
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i3);
                    c = 'M';
                    break;
                case 'E':
                    c03045z = null;
                    c = 'M';
                    break;
                case 'F':
                    c6a = c6a;
                    f += c6a.A05(N, i3 + 1).A01;
                    i2++;
                    if (i3 < 0) {
                        c = 'H';
                        break;
                    } else {
                        c = 'G';
                        break;
                    }
                case 'G':
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i3);
                    c = 'M';
                    break;
                case 'H':
                    c03045z = null;
                    c = 'M';
                    break;
                case 'I':
                    if (N != c03045z.A02) {
                        c = 'M';
                        break;
                    } else {
                        c = 'J';
                        break;
                    }
                case 'J':
                    if (!c03045z.A04) {
                        c = 'K';
                        break;
                    } else {
                        c = 'M';
                        break;
                    }
                case 'K':
                    c6a = c6a;
                    c6a.A0t.remove(i3);
                    c6a.A01.A0H(c6a, N, c03045z.A03);
                    i3--;
                    i2--;
                    if (i3 < 0) {
                        c = 'N';
                        break;
                    } else {
                        c = 'L';
                        break;
                    }
                case 'L':
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i3);
                    c = 'M';
                    break;
                case 'M':
                    N--;
                    c = 24;
                    break;
                case 'N':
                    c03045z = null;
                    c = 'M';
                    break;
                case 'O':
                    c6a = c6a;
                    paddingLeft = (2.0f - c03045zA05.A01) + (c6a.getPaddingLeft() / startPos);
                    c = 23;
                    break;
                case 'P':
                    c03045z = null;
                    c = 21;
                    break;
                case 'Q':
                    i2++;
                    c = 11;
                    break;
                case 'R':
                    c6a = c6a;
                    c6a.A0B();
                    if (!c6a.hasFocus()) {
                        c = 5;
                        break;
                    } else {
                        c = 'S';
                        break;
                    }
                case 'S':
                    c6a = c6a;
                    currentFocused = c6a.findFocus();
                    if (currentFocused == null) {
                        c = ']';
                        break;
                    } else {
                        c = 'T';
                        break;
                    }
                case 'T':
                    c6a = c6a;
                    currentFocused = currentFocused;
                    c03045zA06 = c6a.A06(currentFocused);
                    c = 'U';
                    break;
                case 'U':
                    if (c03045zA06 == null) {
                        c = 'W';
                        break;
                    } else {
                        c = 'V';
                        break;
                    }
                case 'V':
                    c6a = c6a;
                    if (c03045zA06.A02 == c6a.A00) {
                        c = 5;
                        break;
                    } else {
                        c = 'W';
                        break;
                    }
                case 'W':
                    i8 = 0;
                    c = 'X';
                    break;
                case 'X':
                    c6a = c6a;
                    if (i8 >= c6a.getChildCount()) {
                        c = 5;
                        break;
                    } else {
                        c = 'Y';
                        break;
                    }
                case 'Y':
                    c6a = c6a;
                    childAt2 = c6a.getChildAt(i8);
                    c03045zA072 = c6a.A07(childAt2);
                    if (c03045zA072 == null) {
                        c = '\\';
                        break;
                    } else {
                        c = 'Z';
                        break;
                    }
                case 'Z':
                    c6a = c6a;
                    c03045zA072 = c03045zA072;
                    if (c03045zA072.A02 != c6a.A00) {
                        c = '\\';
                        break;
                    } else {
                        c = '[';
                        break;
                    }
                case '[':
                    childAt2 = childAt2;
                    if (!childAt2.requestFocus(2)) {
                        c = '\\';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case '\\':
                    i8++;
                    c = 'X';
                    break;
                case ']':
                    c03045zA06 = null;
                    c = 'U';
                    break;
                case '^':
                    try {
                        c6a = c6a;
                        hexString = c6a.getResources().getResourceName(c6a.getId());
                        c = 'c';
                        break;
                    } catch (Resources.NotFoundException unused) {
                        hexString = Integer.toHexString(c6a.getId());
                        c = 'c';
                        break;
                    }
                case 'c':
                    C6A c6a2 = c6a;
                    throw new IllegalStateException(A08(126, ScriptIntrinsicBLAS.RIGHT, 14) + c6a2.A0G + A08(103, 9, 72) + iA08 + A08(272, 11, 65) + hexString + A08(112, 14, 81) + c6a2.getClass() + A08(0, 22, 25) + c6a2.A01.getClass());
            }
        }
    }

    private void A0H(int i, float f, int i2) {
        C6A c6a = this;
        AnonymousClass63 anonymousClass63 = null;
        int i3 = 0;
        int size = 0;
        char c = c6a.A0Z != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c6a.A0Z.onPageScrolled(i, f, i2);
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (c6a.A0f == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    i3 = 0;
                    size = c6a.A0f.size();
                    c = 5;
                    break;
                case 5:
                    if (i3 >= size) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    anonymousClass63 = c6a.A0f.get(i3);
                    if (anonymousClass63 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    anonymousClass63 = anonymousClass63;
                    anonymousClass63.onPageScrolled(i, f, i2);
                    c = '\b';
                    break;
                case '\b':
                    i3++;
                    c = 5;
                    break;
                case '\t':
                    c6a = c6a;
                    if (c6a.A0Y == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c6a = c6a;
                    c6a.A0Y.onPageScrolled(i, f, i2);
                    c = 11;
                    break;
                case 11:
                    return;
            }
        }
    }

    @CallSuper
    private final void A0I(int i, float f, int i2) {
        C6A c6a = this;
        View childAt = null;
        int i3 = 0;
        int paddingLeft = 0;
        View childAt2 = null;
        int left = 0;
        AnonymousClass60 anonymousClass60 = null;
        int paddingLeft2 = 0;
        int scrollX = 0;
        int iMax = 0;
        int scrollX2 = 0;
        int paddingRight = 0;
        int childCount = 0;
        int width = 0;
        int i4 = 0;
        int childOffset = c6a.A0D > 0 ? 2 : 13;
        while (true) {
            switch (childOffset) {
                case 2:
                    c6a = c6a;
                    scrollX2 = c6a.getScrollX();
                    paddingLeft2 = c6a.getPaddingLeft();
                    paddingRight = c6a.getPaddingRight();
                    width = c6a.getWidth();
                    paddingLeft = c6a.getChildCount();
                    i3 = 0;
                    childOffset = 3;
                    break;
                case 3:
                    if (i3 >= paddingLeft) {
                        childOffset = 13;
                        break;
                    } else {
                        childOffset = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i3);
                    anonymousClass60 = (AnonymousClass60) childAt.getLayoutParams();
                    if (!anonymousClass60.A05) {
                        childOffset = 5;
                        break;
                    } else {
                        childOffset = 6;
                        break;
                    }
                case 5:
                    i3++;
                    childOffset = 3;
                    break;
                case 6:
                    anonymousClass60 = anonymousClass60;
                    int childOffset2 = anonymousClass60.A04;
                    switch (childOffset2 & 7) {
                        case 1:
                            childOffset = 11;
                            break;
                        case 2:
                            childOffset = 7;
                            break;
                        case 3:
                            childOffset = 12;
                            break;
                        case 4:
                            childOffset = 7;
                            break;
                        case 5:
                            childOffset = 10;
                            break;
                        default:
                            childOffset = 7;
                            break;
                    }
                case 7:
                    iMax = paddingLeft2;
                    childOffset = 8;
                    break;
                case 8:
                    childAt = childAt;
                    left = (iMax + scrollX2) - childAt.getLeft();
                    if (left == 0) {
                        childOffset = 5;
                        break;
                    } else {
                        childOffset = 9;
                        break;
                    }
                case 9:
                    childAt = childAt;
                    childAt.offsetLeftAndRight(left);
                    childOffset = 5;
                    break;
                case 10:
                    childAt = childAt;
                    iMax = (width - paddingRight) - childAt.getMeasuredWidth();
                    paddingRight += childAt.getMeasuredWidth();
                    childOffset = 8;
                    break;
                case 11:
                    childAt = childAt;
                    iMax = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft2);
                    childOffset = 8;
                    break;
                case 12:
                    childAt = childAt;
                    iMax = paddingLeft2;
                    paddingLeft2 += childAt.getWidth();
                    childOffset = 8;
                    break;
                case 13:
                    c6a = c6a;
                    c6a.A0H(i, f, i2);
                    if (c6a.A0a == null) {
                        childOffset = 19;
                        break;
                    } else {
                        childOffset = 14;
                        break;
                    }
                case 14:
                    c6a = c6a;
                    scrollX = c6a.getScrollX();
                    childCount = c6a.getChildCount();
                    i4 = 0;
                    childOffset = 15;
                    break;
                case 15:
                    if (i4 >= childCount) {
                        childOffset = 19;
                        break;
                    } else {
                        childOffset = 16;
                        break;
                    }
                case 16:
                    c6a = c6a;
                    childAt2 = c6a.getChildAt(i4);
                    if (!((AnonymousClass60) childAt2.getLayoutParams()).A05) {
                        childOffset = 18;
                        break;
                    } else {
                        childOffset = 17;
                        break;
                    }
                case 17:
                    i4++;
                    childOffset = 15;
                    break;
                case 18:
                    c6a = c6a;
                    childAt2 = childAt2;
                    c6a.A0a.transformPage(childAt2, (childAt2.getLeft() - scrollX) / c6a.getClientWidth());
                    childOffset = 17;
                    break;
                case 19:
                    c6a.A0g = true;
                    return;
            }
        }
    }

    private final void A0J(int i, int i2, int i3) throws Resources.NotFoundException {
        C6A c6a = this;
        int dx = 0;
        int currX = 0;
        float fA00 = 0.0f;
        int i4 = 0;
        boolean z = false;
        int halfWidth = 0;
        int i5 = 0;
        int iAbs = 0;
        int i6 = 0;
        int width = c6a.getChildCount() == 0 ? 2 : 4;
        while (true) {
            switch (width) {
                case 2:
                    c6a = c6a;
                    c6a.setScrollingCacheEnabled(false);
                    width = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c6a = c6a;
                    if (c6a.A0X == null) {
                        width = 16;
                        break;
                    } else {
                        width = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    if (!c6a.A0X.isFinished()) {
                        width = 6;
                        break;
                    } else {
                        width = 16;
                        break;
                    }
                case 6:
                    z = true;
                    width = 7;
                    break;
                case 7:
                    if (!z) {
                        width = 15;
                        break;
                    } else {
                        width = 8;
                        break;
                    }
                case 8:
                    c6a = c6a;
                    if (!c6a.A0l) {
                        width = 14;
                        break;
                    } else {
                        width = 9;
                        break;
                    }
                case 9:
                    c6a = c6a;
                    currX = c6a.A0X.getCurrX();
                    width = 10;
                    break;
                case 10:
                    c6a = c6a;
                    c6a.A0X.abortAnimation();
                    c6a.setScrollingCacheEnabled(false);
                    width = 11;
                    break;
                case 11:
                    c6a = c6a;
                    dx = c6a.getScrollY();
                    i5 = i - currX;
                    i4 = i2 - dx;
                    if (i5 != 0) {
                        width = 17;
                        break;
                    } else {
                        width = 12;
                        break;
                    }
                case 12:
                    if (i4 != 0) {
                        width = 17;
                        break;
                    } else {
                        width = 13;
                        break;
                    }
                case 13:
                    c6a = c6a;
                    c6a.A0R(false);
                    c6a.A0f();
                    c6a.setScrollState(0);
                    width = 3;
                    break;
                case 14:
                    c6a = c6a;
                    currX = c6a.A0X.getStartX();
                    width = 10;
                    break;
                case 15:
                    c6a = c6a;
                    currX = c6a.getScrollX();
                    width = 11;
                    break;
                case 16:
                    z = false;
                    width = 7;
                    break;
                case 17:
                    c6a = c6a;
                    c6a.setScrollingCacheEnabled(true);
                    c6a.setScrollState(2);
                    halfWidth = c6a.getClientWidth();
                    int i7 = halfWidth / 2;
                    int width2 = Math.abs(i5);
                    fA00 = i7 + (i7 * c6a.A00(Math.min(1.0f, (1.0f * width2) / halfWidth)));
                    iAbs = Math.abs(i3);
                    if (iAbs <= 0) {
                        width = 20;
                        break;
                    } else {
                        width = 18;
                        break;
                    }
                case 18:
                    int width3 = Math.round(1000.0f * Math.abs(fA00 / iAbs));
                    i6 = width3 * 4;
                    width = 19;
                    break;
                case 19:
                    c6a = c6a;
                    int iMin = Math.min(i6, 600);
                    c6a.A0l = false;
                    c6a.A0X.startScroll(currX, dx, i5, i4, iMin);
                    C02985s.A07(c6a);
                    width = 3;
                    break;
                case 20:
                    c6a = c6a;
                    C5U c5u = c6a.A01;
                    int width4 = c6a.A00;
                    float fA07 = halfWidth * c5u.A07(width4);
                    int width5 = Math.abs(i5);
                    float f = width5;
                    int width6 = c6a.A0M;
                    i6 = (int) ((1.0f + (f / (width6 + fA07))) * 100.0f);
                    width = 19;
                    break;
            }
        }
    }

    private void A0K(int i, int i2, int i3, int i4) {
        C6A c6a = this;
        float fMin = 0.0f;
        C03045z c03045zA04 = null;
        int paddingLeft = 0;
        char c = i2 > 0 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (!c6a.A0t.isEmpty()) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    if (!c6a.A0X.isFinished()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    c6a.A0X.setFinalX(c6a.getCurrentItem() * c6a.getClientWidth());
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c6a = c6a;
                    c6a.scrollTo((int) ((((i - c6a.getPaddingLeft()) - c6a.getPaddingRight()) + i3) * (c6a.getScrollX() / (((i2 - c6a.getPaddingLeft()) - c6a.getPaddingRight()) + i4))), c6a.getScrollY());
                    c = 5;
                    break;
                case 7:
                    c6a = c6a;
                    c03045zA04 = c6a.A04(c6a.A00);
                    if (c03045zA04 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    c03045zA04 = c03045zA04;
                    fMin = Math.min(c03045zA04.A00, c6a.A07);
                    c = '\t';
                    break;
                case '\t':
                    c6a = c6a;
                    paddingLeft = (int) (((i - c6a.getPaddingLeft()) - c6a.getPaddingRight()) * fMin);
                    if (paddingLeft == c6a.getScrollX()) {
                        c = 5;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c6a = c6a;
                    c6a.A0R(false);
                    c6a.scrollTo(paddingLeft, c6a.getScrollY());
                    c = 5;
                    break;
                case 11:
                    fMin = 0.0f;
                    c = '\t';
                    break;
            }
        }
    }

    private final void A0L(int i, boolean z) throws Resources.NotFoundException {
        this.A0o = false;
        A0N(i, z, false);
    }

    private void A0M(int destX, boolean z, int i, boolean z2) throws Resources.NotFoundException {
        C6A c6a = this;
        C03045z c03045zA04 = c6a.A04(destX);
        int clientWidth = 0;
        char c = c03045zA04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c03045zA04 = c03045zA04;
                    clientWidth = (int) (c6a.getClientWidth() * Math.max(c6a.A02, Math.min(c03045zA04.A00, c6a.A07)));
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    c6a.A0J(clientWidth, 0, i);
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    c6a.A0E(destX);
                    c = 6;
                    break;
                case 6:
                    return;
                case 7:
                    if (!z2) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    c6a.A0E(destX);
                    c = '\t';
                    break;
                case '\t':
                    c6a = c6a;
                    c6a.A0R(false);
                    c6a.scrollTo(clientWidth, 0);
                    c6a.A0Z(clientWidth);
                    c = 6;
                    break;
            }
        }
    }

    private final void A0N(int i, boolean z, boolean z2) throws Resources.NotFoundException {
        A0O(i, z, z2, 0);
    }

    private final void A0O(int i, boolean z, boolean z2, int i2) throws Resources.NotFoundException {
        C6A c6a = this;
        int i3 = 0;
        int i4 = 0;
        boolean z3 = true;
        char c = c6a.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (c6a.A01.A08() > 0) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    c6a.setScrollingCacheEnabled(false);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 6:
                    c6a = c6a;
                    if (c6a.A00 != i) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c6a = c6a;
                    if (c6a.A0t.size() == 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    c6a.setScrollingCacheEnabled(false);
                    c = 4;
                    break;
                case '\t':
                    if (i >= 0) {
                        c = 16;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    i = 0;
                    c = 11;
                    break;
                case 11:
                    c6a = c6a;
                    i3 = c6a.A0L;
                    if (i > c6a.A00 + i3) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c6a = c6a;
                    if (i >= c6a.A00 - i3) {
                        c = 18;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    i4 = 0;
                    c = 14;
                    break;
                case 14:
                    c6a = c6a;
                    if (i4 >= c6a.A0t.size()) {
                        c = 18;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c6a = c6a;
                    c6a.A0t.get(i4).A04 = z3;
                    i4++;
                    c = 14;
                    break;
                case 16:
                    c6a = c6a;
                    if (i < c6a.A01.A08()) {
                        c = 11;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c6a = c6a;
                    i = c6a.A01.A08() - 1;
                    c = 11;
                    break;
                case 18:
                    c6a = c6a;
                    if (c6a.A00 == i) {
                        c = 23;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c6a = c6a;
                    if (!c6a.A0i) {
                        c = 24;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c6a = c6a;
                    c6a.A00 = i;
                    if (!z3) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c6a = c6a;
                    c6a.A0E(i);
                    c = 22;
                    break;
                case 22:
                    c6a = c6a;
                    c6a.requestLayout();
                    c = 4;
                    break;
                case 23:
                    z3 = false;
                    c = 19;
                    break;
                case 24:
                    c6a = c6a;
                    c6a.A0G(i);
                    c6a.A0M(i, z, i2, z3);
                    c = 4;
                    break;
            }
        }
    }

    private void A0P(MotionEvent motionEvent) {
        C6A c6a = this;
        int i = 0;
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        int pointerIndex = c6a.A08;
        int pointerIndex2 = pointerId == pointerIndex ? 2 : 6;
        while (true) {
            switch (pointerIndex2) {
                case 2:
                    if (actionIndex != 0) {
                        pointerIndex2 = 7;
                        break;
                    } else {
                        pointerIndex2 = 3;
                        break;
                    }
                case 3:
                    i = 1;
                    pointerIndex2 = 4;
                    break;
                case 4:
                    c6a = c6a;
                    motionEvent = motionEvent;
                    c6a.A05 = motionEvent.getX(i);
                    int pointerIndex3 = motionEvent.getPointerId(i);
                    c6a.A08 = pointerIndex3;
                    if (c6a.A0U == null) {
                        pointerIndex2 = 6;
                        break;
                    } else {
                        pointerIndex2 = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    c6a.A0U.clear();
                    pointerIndex2 = 6;
                    break;
                case 6:
                    return;
                case 7:
                    i = 0;
                    pointerIndex2 = 4;
                    break;
            }
        }
    }

    private void A0Q(C03045z c03045z, int i, C03045z c03045z2) {
        C03045z c03045z3 = c03045z;
        C03045z ii = c03045z2;
        C6A c6a = this;
        float f = 0.0f;
        int itemIndex = 0;
        C03045z c03045z4 = null;
        int pos = 0;
        C03045z c03045z5 = null;
        float f2 = 0.0f;
        float fA07 = 0.0f;
        int size = 0;
        float f3 = 0.0f;
        int i2 = 0;
        float f4 = 0.0f;
        int i3 = 0;
        int i4 = 0;
        C03045z c03045z6 = null;
        int i5 = 0;
        C03045z c03045z7 = null;
        float fA072 = 0.0f;
        int size2 = 0;
        int i6 = 0;
        int i7 = 0;
        float fA073 = 0.0f;
        int iA08 = c6a.A01.A08();
        int clientWidth = c6a.getClientWidth();
        float marginOffset = clientWidth > 0 ? 2.8E-45f : 2.1E-44f;
        while (true) {
            switch (marginOffset) {
                case 2.8E-45f:
                    c6a = c6a;
                    float marginOffset2 = c6a.A0M;
                    float marginOffset3 = clientWidth;
                    f = marginOffset2 / marginOffset3;
                    marginOffset = 4.2E-45f;
                    break;
                case 4.2E-45f:
                    ii = ii;
                    if (ii == null) {
                        marginOffset = 3.8E-44f;
                        break;
                    } else {
                        marginOffset = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    c03045z3 = c03045z3;
                    ii = ii;
                    pos = ii.A02;
                    if (pos >= c03045z3.A02) {
                        marginOffset = 2.24E-44f;
                        break;
                    } else {
                        marginOffset = 7.0E-45f;
                        break;
                    }
                case 7.0E-45f:
                    ii = ii;
                    i6 = 0;
                    fA07 = ii.A00 + ii.A01 + f;
                    itemIndex = pos + 1;
                    marginOffset = 8.4E-45f;
                    break;
                case 8.4E-45f:
                    c03045z3 = c03045z3;
                    if (itemIndex > c03045z3.A02) {
                        marginOffset = 3.8E-44f;
                        break;
                    } else {
                        marginOffset = 9.8E-45f;
                        break;
                    }
                case 9.8E-45f:
                    c6a = c6a;
                    if (i6 >= c6a.A0t.size()) {
                        marginOffset = 3.8E-44f;
                        break;
                    } else {
                        marginOffset = 1.1E-44f;
                        break;
                    }
                case 1.1E-44f:
                    c6a = c6a;
                    c03045z6 = c6a.A0t.get(i6);
                    marginOffset = 1.3E-44f;
                    break;
                case 1.3E-44f:
                    c03045z6 = c03045z6;
                    if (itemIndex <= c03045z6.A02) {
                        marginOffset = 1.7E-44f;
                        break;
                    } else {
                        marginOffset = 1.4E-44f;
                        break;
                    }
                case 1.4E-44f:
                    c6a = c6a;
                    if (i6 >= c6a.A0t.size() - 1) {
                        marginOffset = 1.7E-44f;
                        break;
                    } else {
                        marginOffset = 1.5E-44f;
                        break;
                    }
                case 1.5E-44f:
                    c6a = c6a;
                    i6++;
                    c03045z6 = c6a.A0t.get(i6);
                    marginOffset = 1.3E-44f;
                    break;
                case 1.7E-44f:
                    c03045z6 = c03045z6;
                    if (itemIndex >= c03045z6.A02) {
                        marginOffset = 2.0E-44f;
                        break;
                    } else {
                        marginOffset = 1.8E-44f;
                        break;
                    }
                case 1.8E-44f:
                    c6a = c6a;
                    fA07 += c6a.A01.A07(itemIndex) + f;
                    itemIndex++;
                    marginOffset = 1.7E-44f;
                    break;
                case 2.0E-44f:
                    c03045z6 = c03045z6;
                    c03045z6.A00 = fA07;
                    fA07 += c03045z6.A01 + f;
                    itemIndex++;
                    marginOffset = 8.4E-45f;
                    break;
                case 2.1E-44f:
                    f = 0.0f;
                    marginOffset = 4.2E-45f;
                    break;
                case 2.24E-44f:
                    c03045z3 = c03045z3;
                    if (pos <= c03045z3.A02) {
                        marginOffset = 3.8E-44f;
                        break;
                    } else {
                        marginOffset = 2.4E-44f;
                        break;
                    }
                case 2.4E-44f:
                    c6a = c6a;
                    ii = ii;
                    size = c6a.A0t.size() - 1;
                    f4 = ii.A00;
                    i2 = pos - 1;
                    marginOffset = 2.5E-44f;
                    break;
                case 2.5E-44f:
                    c03045z3 = c03045z3;
                    if (i2 < c03045z3.A02) {
                        marginOffset = 3.8E-44f;
                        break;
                    } else {
                        marginOffset = 2.7E-44f;
                        break;
                    }
                case 2.7E-44f:
                    if (size < 0) {
                        marginOffset = 3.8E-44f;
                        break;
                    } else {
                        marginOffset = 2.8E-44f;
                        break;
                    }
                case 2.8E-44f:
                    c6a = c6a;
                    c03045z5 = c6a.A0t.get(size);
                    marginOffset = 2.9E-44f;
                    break;
                case 2.9E-44f:
                    c03045z5 = c03045z5;
                    if (i2 >= c03045z5.A02) {
                        marginOffset = 3.4E-44f;
                        break;
                    } else {
                        marginOffset = 3.1E-44f;
                        break;
                    }
                case 3.1E-44f:
                    if (size <= 0) {
                        marginOffset = 3.4E-44f;
                        break;
                    } else {
                        marginOffset = 3.2E-44f;
                        break;
                    }
                case 3.2E-44f:
                    c6a = c6a;
                    size--;
                    c03045z5 = c6a.A0t.get(size);
                    marginOffset = 2.9E-44f;
                    break;
                case 3.4E-44f:
                    c03045z5 = c03045z5;
                    if (i2 <= c03045z5.A02) {
                        marginOffset = 3.6E-44f;
                        break;
                    } else {
                        marginOffset = 3.5E-44f;
                        break;
                    }
                case 3.5E-44f:
                    c6a = c6a;
                    float marginOffset4 = c6a.A01.A07(i2);
                    f4 -= marginOffset4 + f;
                    i2--;
                    marginOffset = 3.4E-44f;
                    break;
                case 3.6E-44f:
                    c03045z5 = c03045z5;
                    f4 -= c03045z5.A01 + f;
                    c03045z5.A00 = f4;
                    i2--;
                    marginOffset = 2.5E-44f;
                    break;
                case 3.8E-44f:
                    c6a = c6a;
                    c03045z3 = c03045z3;
                    size2 = c6a.A0t.size();
                    fA072 = c03045z3.A00;
                    i5 = c03045z3.A02 - 1;
                    if (c03045z3.A02 != 0) {
                        marginOffset = 5.6E-44f;
                        break;
                    } else {
                        marginOffset = 3.9E-44f;
                        break;
                    }
                case 3.9E-44f:
                    c03045z3 = c03045z3;
                    f3 = c03045z3.A00;
                    marginOffset = 4.1E-44f;
                    break;
                case 4.1E-44f:
                    c6a = c6a;
                    c03045z3 = c03045z3;
                    float marginOffset5 = f3;
                    c6a.A02 = marginOffset5;
                    if (c03045z3.A02 != iA08 - 1) {
                        marginOffset = 5.5E-44f;
                        break;
                    } else {
                        marginOffset = 4.2E-44f;
                        break;
                    }
                case 4.2E-44f:
                    c03045z3 = c03045z3;
                    f2 = (c03045z3.A00 + c03045z3.A01) - 1.0f;
                    marginOffset = 4.3E-44f;
                    break;
                case 4.3E-44f:
                    c6a = c6a;
                    float marginOffset6 = f2;
                    c6a.A07 = marginOffset6;
                    i4 = i - 1;
                    marginOffset = 4.5E-44f;
                    break;
                case 4.5E-44f:
                    if (i4 < 0) {
                        marginOffset = 5.7E-44f;
                        break;
                    } else {
                        marginOffset = 4.6E-44f;
                        break;
                    }
                case 4.6E-44f:
                    c6a = c6a;
                    c03045z7 = c6a.A0t.get(i4);
                    marginOffset = 4.8E-44f;
                    break;
                case 4.8E-44f:
                    c03045z7 = c03045z7;
                    if (i5 <= c03045z7.A02) {
                        marginOffset = 5.0E-44f;
                        break;
                    } else {
                        marginOffset = 4.9E-44f;
                        break;
                    }
                case 4.9E-44f:
                    c6a = c6a;
                    fA072 -= c6a.A01.A07(i5) + f;
                    i5--;
                    marginOffset = 4.8E-44f;
                    break;
                case 5.0E-44f:
                    c03045z7 = c03045z7;
                    fA072 -= c03045z7.A01 + f;
                    c03045z7.A00 = fA072;
                    if (c03045z7.A02 != 0) {
                        marginOffset = 5.3E-44f;
                        break;
                    } else {
                        marginOffset = 5.2E-44f;
                        break;
                    }
                case 5.2E-44f:
                    c6a = c6a;
                    c6a.A02 = fA072;
                    marginOffset = 5.3E-44f;
                    break;
                case 5.3E-44f:
                    i4--;
                    i5--;
                    marginOffset = 4.5E-44f;
                    break;
                case 5.5E-44f:
                    f2 = Float.MAX_VALUE;
                    marginOffset = 4.3E-44f;
                    break;
                case 5.6E-44f:
                    f3 = -3.4028235E38f;
                    marginOffset = 4.1E-44f;
                    break;
                case 5.7E-44f:
                    c03045z3 = c03045z3;
                    fA073 = c03045z3.A00 + c03045z3.A01 + f;
                    i7 = c03045z3.A02 + 1;
                    i3 = i + 1;
                    marginOffset = 5.9E-44f;
                    break;
                case 5.9E-44f:
                    if (i3 >= size2) {
                        marginOffset = 6.9E-44f;
                        break;
                    } else {
                        marginOffset = 6.0E-44f;
                        break;
                    }
                case 6.0E-44f:
                    c6a = c6a;
                    c03045z4 = c6a.A0t.get(i3);
                    marginOffset = 6.2E-44f;
                    break;
                case 6.2E-44f:
                    c03045z4 = c03045z4;
                    if (i7 >= c03045z4.A02) {
                        marginOffset = 6.4E-44f;
                        break;
                    } else {
                        marginOffset = 6.3E-44f;
                        break;
                    }
                case 6.3E-44f:
                    c6a = c6a;
                    fA073 += c6a.A01.A07(i7) + f;
                    i7++;
                    marginOffset = 6.2E-44f;
                    break;
                case 6.4E-44f:
                    c03045z4 = c03045z4;
                    if (c03045z4.A02 != iA08 - 1) {
                        marginOffset = 6.7E-44f;
                        break;
                    } else {
                        marginOffset = 6.6E-44f;
                        break;
                    }
                case 6.6E-44f:
                    c6a = c6a;
                    c03045z4 = c03045z4;
                    c6a.A07 = (c03045z4.A01 + fA073) - 1.0f;
                    marginOffset = 6.7E-44f;
                    break;
                case 6.7E-44f:
                    c03045z4 = c03045z4;
                    c03045z4.A00 = fA073;
                    fA073 += c03045z4.A01 + f;
                    i3++;
                    i7++;
                    marginOffset = 5.9E-44f;
                    break;
                case 6.9E-44f:
                    c6a.A0n = false;
                    return;
            }
        }
    }

    private void A0R(boolean z) {
        C6A c6a = this;
        int oldX = 0;
        boolean z2 = false;
        int scrollY = 0;
        int y = 0;
        int scrollX = 0;
        C03045z c03045z = null;
        int i = 0;
        boolean z3 = true;
        boolean z4 = false;
        int x = c6a.A0P == 2 ? 2 : 16;
        while (true) {
            switch (x) {
                case 2:
                    z2 = z3;
                    x = 3;
                    break;
                case 3:
                    if (!z2) {
                        x = 10;
                        break;
                    } else {
                        x = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    z4 = false;
                    c6a.setScrollingCacheEnabled(false);
                    if (!c6a.A0X.isFinished()) {
                        x = 5;
                        break;
                    } else {
                        x = 15;
                        break;
                    }
                case 5:
                    if (!z3) {
                        x = 10;
                        break;
                    } else {
                        x = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    c6a.A0X.abortAnimation();
                    scrollX = c6a.getScrollX();
                    scrollY = c6a.getScrollY();
                    oldX = c6a.A0X.getCurrX();
                    y = c6a.A0X.getCurrY();
                    if (scrollX != oldX) {
                        x = 8;
                        break;
                    } else {
                        x = 7;
                        break;
                    }
                case 7:
                    if (scrollY == y) {
                        x = 10;
                        break;
                    } else {
                        x = 8;
                        break;
                    }
                case 8:
                    c6a = c6a;
                    c6a.scrollTo(oldX, y);
                    if (oldX == scrollX) {
                        x = 10;
                        break;
                    } else {
                        x = 9;
                        break;
                    }
                case 9:
                    c6a = c6a;
                    c6a.A0Z(oldX);
                    x = 10;
                    break;
                case 10:
                    c6a = c6a;
                    c6a.A0o = z4;
                    i = 0;
                    x = 11;
                    break;
                case 11:
                    c6a = c6a;
                    if (i >= c6a.A0t.size()) {
                        x = 17;
                        break;
                    } else {
                        x = 12;
                        break;
                    }
                case 12:
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i);
                    if (!c03045z.A04) {
                        x = 14;
                        break;
                    } else {
                        x = 13;
                        break;
                    }
                case 13:
                    c03045z = c03045z;
                    z2 = true;
                    c03045z.A04 = z4;
                    x = 14;
                    break;
                case 14:
                    i++;
                    x = 11;
                    break;
                case 15:
                    z3 = z4;
                    x = 5;
                    break;
                case 16:
                    z4 = false;
                    z2 = false;
                    x = 3;
                    break;
                case 17:
                    if (!z2) {
                        x = 20;
                        break;
                    } else {
                        x = 18;
                        break;
                    }
                case 18:
                    if (!z) {
                        x = 21;
                        break;
                    } else {
                        x = 19;
                        break;
                    }
                case 19:
                    c6a = c6a;
                    C02985s.A0C(c6a, c6a.A0s);
                    x = 20;
                    break;
                case 20:
                    return;
                case 21:
                    c6a = c6a;
                    c6a.A0s.run();
                    x = 20;
                    break;
            }
        }
    }

    private void A0S(boolean z) {
        C6A c6a = this;
        int i = 0;
        int childCount = c6a.getChildCount();
        int i2 = 0;
        int layerType = 2;
        while (true) {
            switch (layerType) {
                case 2:
                    if (i2 >= childCount) {
                        layerType = 7;
                        break;
                    } else {
                        layerType = 3;
                        break;
                    }
                case 3:
                    if (!z) {
                        layerType = 6;
                        break;
                    } else {
                        layerType = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    i = c6a.A0N;
                    layerType = 5;
                    break;
                case 5:
                    c6a = c6a;
                    c6a.getChildAt(i2).setLayerType(i, null);
                    i2++;
                    layerType = 2;
                    break;
                case 6:
                    i = 0;
                    layerType = 5;
                    break;
                case 7:
                    return;
            }
        }
    }

    private void A0T(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean A0U() {
        C6A c6a = this;
        boolean z = false;
        c6a.A08 = -1;
        c6a.A09();
        c6a.A0V.onRelease();
        c6a.A0W.onRelease();
        char c = !c6a.A0V.isFinished() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (!c6a.A0W.isFinished()) {
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

    private final boolean A0V() throws Resources.NotFoundException {
        C6A c6a = this;
        boolean z = true;
        char c = c6a.A00 > 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c6a.A0L(c6a.A00 - 1, z);
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

    private final boolean A0W() throws Resources.NotFoundException {
        C6A c6a = this;
        boolean z = true;
        char c = c6a.A01 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (c6a.A00 >= c6a.A01.A08() - 1) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    c6a.A0L(c6a.A00 + 1, z);
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

    private boolean A0X(float f) {
        C6A c6a = this;
        boolean z = false;
        float f2 = c6a.A05 - f;
        c6a.A05 = f;
        float scrollX = c6a.getScrollX() + f2;
        int clientWidth = c6a.getClientWidth();
        float scrollX2 = c6a.A02;
        float f3 = clientWidth * scrollX2;
        float leftBound = c6a.A07;
        float f4 = clientWidth * leftBound;
        boolean z2 = true;
        boolean z3 = true;
        C03045z c03045z = c6a.A0t.get(0);
        C03045z c03045z2 = c6a.A0t.get(c6a.A0t.size() - 1);
        float over = c03045z.A02 != 0 ? 2.8E-45f : 4.2E-45f;
        while (true) {
            switch (over) {
                case 2.8E-45f:
                    c03045z = c03045z;
                    z2 = false;
                    float over2 = clientWidth;
                    f3 = c03045z.A00 * over2;
                    over = 4.2E-45f;
                    break;
                case 4.2E-45f:
                    c6a = c6a;
                    c03045z2 = c03045z2;
                    if (c03045z2.A02 == c6a.A01.A08() - 1) {
                        over = 7.0E-45f;
                        break;
                    } else {
                        over = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    c03045z2 = c03045z2;
                    z3 = false;
                    float over3 = clientWidth;
                    f4 = c03045z2.A00 * over3;
                    over = 7.0E-45f;
                    break;
                case 7.0E-45f:
                    if (scrollX >= f3) {
                        over = 1.4E-44f;
                        break;
                    } else {
                        over = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    if (!z2) {
                        over = 1.1E-44f;
                        break;
                    } else {
                        over = 9.8E-45f;
                        break;
                    }
                case 9.8E-45f:
                    c6a = c6a;
                    float over4 = f3 - scrollX;
                    EdgeEffect edgeEffect = c6a.A0V;
                    float fAbs = Math.abs(over4);
                    float over5 = clientWidth;
                    edgeEffect.onPull(fAbs / over5);
                    z = true;
                    over = 1.1E-44f;
                    break;
                case 1.1E-44f:
                    scrollX = f3;
                    over = 1.3E-44f;
                    break;
                case 1.3E-44f:
                    C6A c6a2 = c6a;
                    float over6 = (int) scrollX;
                    c6a2.A05 += scrollX - over6;
                    c6a2.scrollTo((int) scrollX, c6a2.getScrollY());
                    c6a2.A0Z((int) scrollX);
                    return z;
                case 1.4E-44f:
                    if (scrollX <= f4) {
                        over = 1.3E-44f;
                        break;
                    } else {
                        over = 1.5E-44f;
                        break;
                    }
                case 1.5E-44f:
                    if (!z3) {
                        over = 1.8E-44f;
                        break;
                    } else {
                        over = 1.7E-44f;
                        break;
                    }
                case 1.7E-44f:
                    c6a = c6a;
                    c6a.A0W.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z = true;
                    over = 1.8E-44f;
                    break;
                case 1.8E-44f:
                    scrollX = f4;
                    over = 1.3E-44f;
                    break;
            }
        }
    }

    private final boolean A0Y(float f, float f2) {
        C6A c6a = this;
        boolean z = false;
        float f3 = 0.0f;
        char c = f < ((float) c6a.A0I) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    f3 = 0.0f;
                    if (f2 > 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    if (f <= c6a.getWidth() - c6a.A0I) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (f2 >= f3) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
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

    private boolean A0Z(int i) {
        C6A c6a = this;
        boolean z = false;
        float pageOffset = c6a.A0t.size() == 0 ? 2.8E-45f : 8.4E-45f;
        while (true) {
            switch (pageOffset) {
                case 2.8E-45f:
                    c6a = c6a;
                    if (!c6a.A0i) {
                        pageOffset = 5.6E-45f;
                        break;
                    } else {
                        pageOffset = 4.2E-45f;
                        break;
                    }
                case 4.2E-45f:
                    return z;
                case 5.6E-45f:
                    c6a = c6a;
                    z = false;
                    c6a.A0g = false;
                    c6a.A0I(0, 0.0f, 0);
                    if (!c6a.A0g) {
                        pageOffset = 7.0E-45f;
                        break;
                    } else {
                        pageOffset = 4.2E-45f;
                        break;
                    }
                case 7.0E-45f:
                    throw new IllegalStateException(A08(381, 53, 77));
                case 8.4E-45f:
                    c6a = c6a;
                    z = false;
                    C03045z c03045zA03 = c6a.A03();
                    int clientWidth = c6a.getClientWidth();
                    int width = c6a.A0M;
                    int i2 = clientWidth + width;
                    int widthWithMargin = c6a.A0M;
                    float f = widthWithMargin / clientWidth;
                    int i3 = c03045zA03.A02;
                    float marginOffset = clientWidth;
                    float f2 = i / marginOffset;
                    float marginOffset2 = c03045zA03.A00;
                    float f3 = f2 - marginOffset2;
                    float marginOffset3 = c03045zA03.A01;
                    float f4 = f3 / (marginOffset3 + f);
                    float pageOffset2 = i2;
                    c6a.A0g = false;
                    c6a.A0I(i3, f4, (int) (pageOffset2 * f4));
                    if (!c6a.A0g) {
                        pageOffset = 9.8E-45f;
                        break;
                    } else {
                        pageOffset = 1.1E-44f;
                        break;
                    }
                case 9.8E-45f:
                    throw new IllegalStateException(A08(381, 53, 77));
                case 1.1E-44f:
                    z = true;
                    pageOffset = 4.2E-45f;
                    break;
            }
        }
    }

    private final boolean A0a(int i) throws Resources.NotFoundException {
        C6A c6a = this;
        boolean z = false;
        ViewParent parent = null;
        View viewFindNextFocus = null;
        StringBuilder sb = null;
        int i2 = 0;
        int i3 = 0;
        boolean zA0V = false;
        int i4 = 0;
        int i5 = 0;
        ViewParent parent2 = null;
        View viewFindFocus = c6a.findFocus();
        int nextLeft = viewFindFocus == c6a ? 2 : 24;
        while (true) {
            switch (nextLeft) {
                case 2:
                    viewFindFocus = null;
                    nextLeft = 3;
                    break;
                case 3:
                    c6a = c6a;
                    zA0V = false;
                    viewFindNextFocus = FocusFinder.getInstance().findNextFocus(c6a, viewFindFocus, i);
                    if (viewFindNextFocus == null) {
                        nextLeft = 18;
                        break;
                    } else {
                        nextLeft = 4;
                        break;
                    }
                case 4:
                    viewFindNextFocus = viewFindNextFocus;
                    if (viewFindNextFocus == viewFindFocus) {
                        nextLeft = 18;
                        break;
                    } else {
                        nextLeft = 5;
                        break;
                    }
                case 5:
                    if (i != 17) {
                        nextLeft = 13;
                        break;
                    } else {
                        nextLeft = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    viewFindNextFocus = viewFindNextFocus;
                    i2 = c6a.A02(c6a.A0q, viewFindNextFocus).left;
                    i3 = c6a.A02(c6a.A0q, viewFindFocus).left;
                    if (viewFindFocus == null) {
                        nextLeft = 12;
                        break;
                    } else {
                        nextLeft = 7;
                        break;
                    }
                case 7:
                    if (i2 < i3) {
                        nextLeft = 12;
                        break;
                    } else {
                        nextLeft = 8;
                        break;
                    }
                case 8:
                    c6a = c6a;
                    zA0V = c6a.A0V();
                    nextLeft = 9;
                    break;
                case 9:
                    if (!zA0V) {
                        nextLeft = 11;
                        break;
                    } else {
                        nextLeft = 10;
                        break;
                    }
                case 10:
                    c6a = c6a;
                    c6a.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
                    nextLeft = 11;
                    break;
                case 11:
                    return zA0V;
                case 12:
                    viewFindNextFocus = viewFindNextFocus;
                    zA0V = viewFindNextFocus.requestFocus();
                    nextLeft = 9;
                    break;
                case 13:
                    if (i != 66) {
                        nextLeft = 9;
                        break;
                    } else {
                        nextLeft = 14;
                        break;
                    }
                case 14:
                    c6a = c6a;
                    viewFindNextFocus = viewFindNextFocus;
                    i4 = c6a.A02(c6a.A0q, viewFindNextFocus).left;
                    i5 = c6a.A02(c6a.A0q, viewFindFocus).left;
                    if (viewFindFocus == null) {
                        nextLeft = 17;
                        break;
                    } else {
                        nextLeft = 15;
                        break;
                    }
                case 15:
                    if (i4 > i5) {
                        nextLeft = 17;
                        break;
                    } else {
                        nextLeft = 16;
                        break;
                    }
                case 16:
                    c6a = c6a;
                    zA0V = c6a.A0W();
                    nextLeft = 9;
                    break;
                case 17:
                    viewFindNextFocus = viewFindNextFocus;
                    zA0V = viewFindNextFocus.requestFocus();
                    nextLeft = 9;
                    break;
                case 18:
                    if (i == 17) {
                        nextLeft = 20;
                        break;
                    } else {
                        nextLeft = 19;
                        break;
                    }
                case 19:
                    if (i != 1) {
                        nextLeft = 21;
                        break;
                    } else {
                        nextLeft = 20;
                        break;
                    }
                case 20:
                    c6a = c6a;
                    zA0V = c6a.A0V();
                    nextLeft = 9;
                    break;
                case 21:
                    if (i == 66) {
                        nextLeft = 23;
                        break;
                    } else {
                        nextLeft = 22;
                        break;
                    }
                case 22:
                    if (i != 2) {
                        nextLeft = 9;
                        break;
                    } else {
                        nextLeft = 23;
                        break;
                    }
                case 23:
                    c6a = c6a;
                    zA0V = c6a.A0W();
                    nextLeft = 9;
                    break;
                case 24:
                    viewFindFocus = viewFindFocus;
                    if (viewFindFocus == null) {
                        nextLeft = 3;
                        break;
                    } else {
                        nextLeft = 25;
                        break;
                    }
                case 25:
                    viewFindFocus = viewFindFocus;
                    z = false;
                    parent = viewFindFocus.getParent();
                    nextLeft = 26;
                    break;
                case 26:
                    parent = parent;
                    if (!(parent instanceof ViewGroup)) {
                        nextLeft = 29;
                        break;
                    } else {
                        nextLeft = 27;
                        break;
                    }
                case 27:
                    c6a = c6a;
                    parent = parent;
                    if (parent != c6a) {
                        nextLeft = 33;
                        break;
                    } else {
                        nextLeft = 28;
                        break;
                    }
                case 28:
                    z = true;
                    nextLeft = 29;
                    break;
                case 29:
                    if (!z) {
                        nextLeft = 30;
                        break;
                    } else {
                        nextLeft = 3;
                        break;
                    }
                case 30:
                    viewFindFocus = viewFindFocus;
                    sb = new StringBuilder();
                    sb.append(viewFindFocus.getClass().getSimpleName());
                    parent2 = viewFindFocus.getParent();
                    nextLeft = 31;
                    break;
                case 31:
                    parent2 = parent2;
                    if (!(parent2 instanceof ViewGroup)) {
                        nextLeft = 34;
                        break;
                    } else {
                        nextLeft = 32;
                        break;
                    }
                case 32:
                    sb = sb;
                    ViewParent viewParent = parent2;
                    sb.append(A08(268, 4, 24)).append(viewParent.getClass().getSimpleName());
                    parent2 = viewParent.getParent();
                    nextLeft = 31;
                    break;
                case 33:
                    parent = parent.getParent();
                    nextLeft = 26;
                    break;
                case 34:
                    sb = sb;
                    Log.e(A08(22, 9, 52), A08(309, 72, 67) + sb.toString());
                    viewFindFocus = null;
                    nextLeft = 3;
                    break;
            }
        }
    }

    private final boolean A0b(KeyEvent keyEvent) throws Resources.NotFoundException {
        C6A c6a = this;
        boolean zA0a = false;
        char c = keyEvent.getAction() == 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    keyEvent = keyEvent;
                    switch (keyEvent.getKeyCode()) {
                        case 21:
                            c = 11;
                            break;
                        case 22:
                            c = '\b';
                            break;
                        case 61:
                            c = 4;
                            break;
                        default:
                            c = 3;
                            break;
                    }
                case 3:
                    return zA0a;
                case 4:
                    keyEvent = keyEvent;
                    if (!keyEvent.hasNoModifiers()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    zA0a = c6a.A0a(2);
                    c = 3;
                    break;
                case 6:
                    keyEvent = keyEvent;
                    if (!keyEvent.hasModifiers(1)) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c6a = c6a;
                    zA0a = c6a.A0a(1);
                    c = 3;
                    break;
                case '\b':
                    keyEvent = keyEvent;
                    if (!keyEvent.hasModifiers(2)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c6a = c6a;
                    zA0a = c6a.A0W();
                    c = 3;
                    break;
                case '\n':
                    c6a = c6a;
                    zA0a = c6a.A0a(66);
                    c = 3;
                    break;
                case 11:
                    keyEvent = keyEvent;
                    if (!keyEvent.hasModifiers(2)) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c6a = c6a;
                    zA0a = c6a.A0V();
                    c = 3;
                    break;
                case '\r':
                    c6a = c6a;
                    zA0a = c6a.A0a(17);
                    c = 3;
                    break;
            }
        }
    }

    private static boolean A0c(@NonNull View view) {
        boolean z = false;
        char c = view.getClass().getAnnotation(ViewPager$DecorView.class) != null ? (char) 2 : (char) 4;
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

    private final boolean A0d(View child, boolean z, int i, int i2, int i3) {
        C6A c6a = this;
        int count = 0;
        ViewGroup group = null;
        View childAt = null;
        int scrollY = 0;
        boolean z2 = false;
        int scrollX = 0;
        char c = child instanceof ViewGroup ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    child = child;
                    group = (ViewGroup) child;
                    scrollX = child.getScrollX();
                    scrollY = child.getScrollY();
                    count = group.getChildCount() - 1;
                    c = 3;
                    break;
                case 3:
                    if (count < 0) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    group = group;
                    childAt = group.getChildAt(count);
                    if (i2 + scrollX < childAt.getLeft()) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    childAt = childAt;
                    if (i2 + scrollX >= childAt.getRight()) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    childAt = childAt;
                    if (i3 + scrollY < childAt.getTop()) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    childAt = childAt;
                    if (i3 + scrollY >= childAt.getBottom()) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    childAt = childAt;
                    if (!c6a.A0d(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z2 = true;
                    c = '\n';
                    break;
                case '\n':
                    return z2;
                case 11:
                    count--;
                    c = 3;
                    break;
                case '\f':
                    if (!z) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    child = child;
                    if (!child.canScrollHorizontally(-i)) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    z2 = true;
                    c = '\n';
                    break;
                case 15:
                    z2 = false;
                    c = '\n';
                    break;
            }
        }
    }

    public final void A0e() throws Resources.NotFoundException {
        C6A c6a = this;
        int i = 0;
        int iA09 = 0;
        AnonymousClass60 anonymousClass60 = null;
        boolean z = false;
        int i2 = 0;
        int childCount = 0;
        int i3 = 0;
        C03045z c03045z = null;
        int iMax = 0;
        boolean z2 = false;
        int iA08 = c6a.A01.A08();
        c6a.A0G = iA08;
        int i4 = c6a.A0t.size() < (c6a.A0L * 2) + 1 ? 2 : 17;
        while (true) {
            switch (i4) {
                case 2:
                    c6a = c6a;
                    if (c6a.A0t.size() >= iA08) {
                        i4 = 17;
                        break;
                    } else {
                        i4 = 3;
                        break;
                    }
                case 3:
                    z = true;
                    i4 = 4;
                    break;
                case 4:
                    c6a = c6a;
                    iMax = c6a.A00;
                    i2 = 0;
                    i = 0;
                    i4 = 5;
                    break;
                case 5:
                    c6a = c6a;
                    if (i >= c6a.A0t.size()) {
                        i4 = 18;
                        break;
                    } else {
                        i4 = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    c03045z = c6a.A0t.get(i);
                    iA09 = c6a.A01.A09(c03045z.A03);
                    if (iA09 != -1) {
                        i4 = 8;
                        break;
                    } else {
                        i4 = 7;
                        break;
                    }
                case 7:
                    i++;
                    i4 = 5;
                    break;
                case 8:
                    if (iA09 != -2) {
                        i4 = 13;
                        break;
                    } else {
                        i4 = 9;
                        break;
                    }
                case 9:
                    c6a = c6a;
                    c6a.A0t.remove(i);
                    i--;
                    if (i2 != 0) {
                        i4 = 11;
                        break;
                    } else {
                        i4 = 10;
                        break;
                    }
                case 10:
                    c6a = c6a;
                    c6a.A01.A0G(c6a);
                    i2 = 1;
                    i4 = 11;
                    break;
                case 11:
                    c6a = c6a;
                    c03045z = c03045z;
                    c6a.A01.A0H(c6a, c03045z.A02, c03045z.A03);
                    z = true;
                    if (c6a.A00 != c03045z.A02) {
                        i4 = 7;
                        break;
                    } else {
                        i4 = 12;
                        break;
                    }
                case 12:
                    c6a = c6a;
                    iMax = Math.max(z2 ? 1 : 0, Math.min(c6a.A00, iA08 - 1));
                    z = true;
                    i4 = 7;
                    break;
                case 13:
                    c03045z = c03045z;
                    if (c03045z.A02 == iA09) {
                        i4 = 7;
                        break;
                    } else {
                        i4 = 14;
                        break;
                    }
                case 14:
                    c6a = c6a;
                    c03045z = c03045z;
                    if (c03045z.A02 != c6a.A00) {
                        i4 = 16;
                        break;
                    } else {
                        i4 = 15;
                        break;
                    }
                case 15:
                    iMax = iA09;
                    i4 = 16;
                    break;
                case 16:
                    c03045z = c03045z;
                    c03045z.A02 = iA09;
                    z = true;
                    i4 = 7;
                    break;
                case 17:
                    z2 = false;
                    z = false;
                    i4 = 4;
                    break;
                case 18:
                    if (i2 == 0) {
                        i4 = 20;
                        break;
                    } else {
                        i4 = 19;
                        break;
                    }
                case 19:
                    c6a = c6a;
                    c6a.A01.A0F(c6a);
                    i4 = 20;
                    break;
                case 20:
                    c6a = c6a;
                    Collections.sort(c6a.A0t, A0y);
                    if (!z) {
                        i4 = 27;
                        break;
                    } else {
                        i4 = 21;
                        break;
                    }
                case 21:
                    c6a = c6a;
                    childCount = c6a.getChildCount();
                    i3 = 0;
                    i4 = 22;
                    break;
                case 22:
                    if (i3 >= childCount) {
                        i4 = 26;
                        break;
                    } else {
                        i4 = 23;
                        break;
                    }
                case 23:
                    c6a = c6a;
                    anonymousClass60 = (AnonymousClass60) c6a.getChildAt(i3).getLayoutParams();
                    if (!anonymousClass60.A05) {
                        i4 = 24;
                        break;
                    } else {
                        i4 = 25;
                        break;
                    }
                case 24:
                    anonymousClass60 = anonymousClass60;
                    anonymousClass60.A00 = 0.0f;
                    i4 = 25;
                    break;
                case 25:
                    i3++;
                    i4 = 22;
                    break;
                case 26:
                    c6a = c6a;
                    c6a.A0N(iMax, z2, true);
                    c6a.requestLayout();
                    i4 = 27;
                    break;
                case 27:
                    return;
            }
        }
    }

    public final void A0f() throws Resources.NotFoundException {
        A0G(this.A00);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int focusableCount, int i) {
        C6A c6a = this;
        int i2 = 0;
        View childAt = null;
        C03045z c03045zA07 = null;
        int size = arrayList.size();
        int descendantFocusability = c6a.getDescendantFocusability();
        char c = descendantFocusability != 393216 ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    i2 = 0;
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (i2 >= c6a.getChildCount()) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i2);
                    if (childAt.getVisibility() != 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    childAt = childAt;
                    c03045zA07 = c6a.A07(childAt);
                    if (c03045zA07 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    c03045zA07 = c03045zA07;
                    if (c03045zA07.A02 != c6a.A00) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    arrayList = arrayList;
                    childAt = childAt;
                    childAt.addFocusables(arrayList, focusableCount, i);
                    c = '\b';
                    break;
                case '\b':
                    i2++;
                    c = 3;
                    break;
                case '\t':
                    if (descendantFocusability != 262144) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    arrayList = arrayList;
                    if (size != arrayList.size()) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c6a = c6a;
                    if (!c6a.isFocusable()) {
                        c = '\f';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\f':
                    return;
                case '\r':
                    if ((i & 1) != 1) {
                        c = 16;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c6a = c6a;
                    if (!c6a.isInTouchMode()) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c6a = c6a;
                    if (!c6a.isFocusableInTouchMode()) {
                        c = '\f';
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    arrayList = arrayList;
                    if (arrayList == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c6a = c6a;
                    arrayList = arrayList;
                    arrayList.add(c6a);
                    c = '\f';
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList<View> arrayList) {
        C6A c6a = this;
        View childAt = null;
        C03045z c03045zA07 = null;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (i >= c6a.getChildCount()) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i);
                    if (childAt.getVisibility() != 0) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    childAt = childAt;
                    c03045zA07 = c6a.A07(childAt);
                    if (c03045zA07 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    c03045zA07 = c03045zA07;
                    if (c03045zA07.A02 != c6a.A00) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    arrayList = arrayList;
                    childAt = childAt;
                    childAt.addTouchables(arrayList);
                    c = 7;
                    break;
                case 7:
                    i++;
                    c = 2;
                    break;
                case '\b':
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        C6A c6a = this;
        AnonymousClass60 anonymousClass60 = null;
        char c = !c6a.checkLayoutParams(layoutParams) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    layoutParams = c6a.generateLayoutParams(layoutParams);
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    view = view;
                    layoutParams = layoutParams;
                    anonymousClass60 = (AnonymousClass60) layoutParams;
                    anonymousClass60.A05 |= A0c(view);
                    if (!c6a.A0j) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    anonymousClass60 = anonymousClass60;
                    if (anonymousClass60 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    anonymousClass60 = anonymousClass60;
                    if (!anonymousClass60.A05) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    throw new IllegalStateException(A08(31, 41, 122));
                case 7:
                    c6a = c6a;
                    view = view;
                    layoutParams = layoutParams;
                    super.addView(view, i, layoutParams);
                    c = '\t';
                    break;
                case '\b':
                    c6a = c6a;
                    view = view;
                    layoutParams = layoutParams;
                    anonymousClass60 = anonymousClass60;
                    anonymousClass60.A03 = true;
                    c6a.addViewInLayout(view, i, layoutParams);
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int width) {
        C6A c6a = this;
        int clientWidth = 0;
        int scrollX = 0;
        boolean z = true;
        boolean z2 = false;
        char c = c6a.A01 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z2;
                case 3:
                    c6a = c6a;
                    clientWidth = c6a.getClientWidth();
                    scrollX = c6a.getScrollX();
                    if (width >= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    if (scrollX <= ((int) (clientWidth * c6a.A02))) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z2 = z;
                    c = 2;
                    break;
                case 6:
                    z2 = false;
                    z = false;
                    c = 5;
                    break;
                case 7:
                    if (width <= 0) {
                        c = 2;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    if (scrollX >= ((int) (clientWidth * c6a.A07))) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z2 = z;
                    c = 2;
                    break;
                case '\n':
                    z2 = false;
                    z = false;
                    c = '\t';
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        C6A c6a = this;
        boolean z = false;
        char c = layoutParams instanceof AnonymousClass60 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    layoutParams = layoutParams;
                    if (!super.checkLayoutParams(layoutParams)) {
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

    @Override // android.view.View
    public final void computeScroll() {
        C6A c6a = this;
        int scrollY = 0;
        int x = 0;
        int currX = 0;
        c6a.A0l = true;
        int y = !c6a.A0X.isFinished() ? 2 : 9;
        while (true) {
            switch (y) {
                case 2:
                    c6a = c6a;
                    if (!c6a.A0X.computeScrollOffset()) {
                        y = 9;
                        break;
                    } else {
                        y = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    int scrollX = c6a.getScrollX();
                    scrollY = c6a.getScrollY();
                    currX = c6a.A0X.getCurrX();
                    x = c6a.A0X.getCurrY();
                    if (scrollX != currX) {
                        y = 5;
                        break;
                    } else {
                        y = 4;
                        break;
                    }
                case 4:
                    if (scrollY == x) {
                        y = 7;
                        break;
                    } else {
                        y = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    c6a.scrollTo(currX, x);
                    if (!c6a.A0Z(currX)) {
                        y = 6;
                        break;
                    } else {
                        y = 7;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    c6a.A0X.abortAnimation();
                    c6a.scrollTo(0, x);
                    y = 7;
                    break;
                case 7:
                    c6a = c6a;
                    C02985s.A07(c6a);
                    y = 8;
                    break;
                case 8:
                    return;
                case 9:
                    c6a = c6a;
                    c6a.A0R(true);
                    y = 8;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        C6A c6a = this;
        boolean z = false;
        char c = !super.dispatchKeyEvent(keyEvent) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    keyEvent = keyEvent;
                    if (!c6a.A0b(keyEvent)) {
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

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C6A c6a = this;
        int i = 0;
        int i2 = 0;
        boolean zDispatchPopulateAccessibilityEvent = false;
        View childAt = null;
        C03045z c03045zA07 = null;
        char c = accessibilityEvent.getEventType() == 4096 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    accessibilityEvent = accessibilityEvent;
                    zDispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
                    c = 3;
                    break;
                case 3:
                    return zDispatchPopulateAccessibilityEvent;
                case 4:
                    c6a = c6a;
                    i = c6a.getChildCount();
                    i2 = 0;
                    c = 5;
                    break;
                case 5:
                    if (i2 >= i) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i2);
                    if (childAt.getVisibility() != 0) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c6a = c6a;
                    childAt = childAt;
                    c03045zA07 = c6a.A07(childAt);
                    if (c03045zA07 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    c03045zA07 = c03045zA07;
                    if (c03045zA07.A02 != c6a.A00) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    accessibilityEvent = accessibilityEvent;
                    childAt = childAt;
                    if (!childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    zDispatchPopulateAccessibilityEvent = true;
                    c = 3;
                    break;
                case 11:
                    i2++;
                    c = 5;
                    break;
                case '\f':
                    zDispatchPopulateAccessibilityEvent = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        C6A c6a = this;
        super.draw(canvas);
        boolean zDraw = false;
        int overScrollMode = c6a.getOverScrollMode();
        int overScrollMode2 = overScrollMode != 0 ? 2 : 5;
        while (true) {
            switch (overScrollMode2) {
                case 2:
                    if (overScrollMode != 1) {
                        overScrollMode2 = 12;
                        break;
                    } else {
                        overScrollMode2 = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    if (c6a.A01 == null) {
                        overScrollMode2 = 12;
                        break;
                    } else {
                        overScrollMode2 = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    int width = c6a.A01.A08();
                    if (width <= 1) {
                        overScrollMode2 = 12;
                        break;
                    } else {
                        overScrollMode2 = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    if (!c6a.A0V.isFinished()) {
                        overScrollMode2 = 6;
                        break;
                    } else {
                        overScrollMode2 = 7;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    canvas = canvas;
                    int iSave = canvas.save();
                    int height = c6a.getHeight();
                    int restoreCount = c6a.getPaddingTop();
                    int i = height - restoreCount;
                    int restoreCount2 = c6a.getPaddingBottom();
                    int i2 = i - restoreCount2;
                    int width2 = c6a.getWidth();
                    canvas.rotate(270.0f);
                    int width3 = c6a.getPaddingTop();
                    canvas.translate((-i2) + width3, c6a.A02 * width2);
                    c6a.A0V.setSize(i2, width2);
                    zDraw = false | c6a.A0V.draw(canvas);
                    canvas.restoreToCount(iSave);
                    overScrollMode2 = 7;
                    break;
                case 7:
                    c6a = c6a;
                    if (!c6a.A0W.isFinished()) {
                        overScrollMode2 = 8;
                        break;
                    } else {
                        overScrollMode2 = 9;
                        break;
                    }
                case 8:
                    c6a = c6a;
                    canvas = canvas;
                    int iSave2 = canvas.save();
                    int width4 = c6a.getWidth();
                    int height2 = c6a.getHeight();
                    int overScrollMode3 = c6a.getPaddingTop();
                    int i3 = height2 - overScrollMode3;
                    int overScrollMode4 = c6a.getPaddingBottom();
                    int i4 = i3 - overScrollMode4;
                    canvas.rotate(90.0f);
                    int overScrollMode5 = c6a.getPaddingTop();
                    canvas.translate(-overScrollMode5, (-(c6a.A07 + 1.0f)) * width4);
                    c6a.A0W.setSize(i4, width4);
                    zDraw |= c6a.A0W.draw(canvas);
                    canvas.restoreToCount(iSave2);
                    overScrollMode2 = 9;
                    break;
                case 9:
                    if (!zDraw) {
                        overScrollMode2 = 11;
                        break;
                    } else {
                        overScrollMode2 = 10;
                        break;
                    }
                case 10:
                    c6a = c6a;
                    C02985s.A07(c6a);
                    overScrollMode2 = 11;
                    break;
                case 11:
                    return;
                case 12:
                    c6a = c6a;
                    c6a.A0V.finish();
                    c6a.A0W.finish();
                    overScrollMode2 = 9;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        C6A c6a = this;
        super.drawableStateChanged();
        Drawable drawable = c6a.A0S;
        char c = drawable != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    drawable = drawable;
                    if (!drawable.isStateful()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    drawable = drawable;
                    drawable.setState(c6a.getDrawableState());
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new AnonymousClass60();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new AnonymousClass60(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public C5U getAdapter() {
        return this.A01;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int i3 = 0;
        char c = this.A0F == 2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    i3 = (i - 1) - i2;
                    c = 3;
                    break;
                case 3:
                    return ((AnonymousClass60) this.A0d.get(i3).getLayoutParams()).A01;
                case 4:
                    i3 = i2;
                    c = 3;
                    break;
            }
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int getCurrentItem() {
        return this.A00;
    }

    public int getOffscreenPageLimit() {
        return this.A0L;
    }

    public int getPageMargin() {
        return this.A0M;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C6A c6a = this;
        c6a.removeCallbacks(c6a.A0s);
        char c = c6a.A0X != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (!c6a.A0X.isFinished()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    c6a.A0X.abortAnimation();
                    c = 4;
                    break;
                case 4:
                    super.onDetachedFromWindow();
                    return;
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        C6A c6a = this;
        int firstPos = 0;
        int i = 0;
        C03045z c03045z = null;
        int lastPos = 0;
        int i2 = 0;
        float offset = 0.0f;
        float f = 0.0f;
        int scrollX = 0;
        int width = 0;
        float widthFactor = 0.0f;
        super.onDraw(canvas2);
        char c = c6a.A0M > 0 ? (char) 2 : (char) 15;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    if (c6a.A0S == null) {
                        c = 15;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    if (c6a.A0t.size() <= 0) {
                        c = 15;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    if (c6a.A01 == null) {
                        c = 15;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    firstPos = c6a.getScrollX();
                    lastPos = c6a.getWidth();
                    widthFactor = c6a.A0M / lastPos;
                    scrollX = 0;
                    c03045z = c6a.A0t.get(0);
                    f = c03045z.A00;
                    width = c6a.A0t.size();
                    i2 = c03045z.A02;
                    i = c6a.A0t.get(width - 1).A02;
                    c = 6;
                    break;
                case 6:
                    if (i2 >= i) {
                        c = 15;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c03045z = c03045z;
                    if (i2 <= c03045z.A02) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (scrollX >= width) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c6a = c6a;
                    scrollX++;
                    c03045z = c6a.A0t.get(scrollX);
                    c = 7;
                    break;
                case '\n':
                    c03045z = c03045z;
                    if (i2 != c03045z.A02) {
                        c = 16;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c03045z = c03045z;
                    float offset2 = c03045z.A00;
                    offset = (offset2 + c03045z.A01) * lastPos;
                    f = c03045z.A00 + c03045z.A01 + widthFactor;
                    c = '\f';
                    break;
                case '\f':
                    c6a = c6a;
                    if (c6a.A0M + offset <= firstPos) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c6a = c6a;
                    canvas2 = canvas2;
                    c6a.A0S.setBounds(Math.round(offset), c6a.A0Q, Math.round(c6a.A0M + offset), c6a.A09);
                    c6a.A0S.draw(canvas2);
                    c = 14;
                    break;
                case 14:
                    if (offset <= firstPos + lastPos) {
                        c = 17;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    return;
                case 16:
                    c6a = c6a;
                    float fA07 = c6a.A01.A07(i2);
                    float offset3 = f + fA07;
                    offset = offset3 * lastPos;
                    f += fA07 + widthFactor;
                    c = '\f';
                    break;
                case 17:
                    i2++;
                    c = 6;
                    break;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v11, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v12, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v13, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v14, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v15, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v16, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v17, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v18, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v19, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v2, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v20, types: [android.view.View, com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v21, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v22, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v23, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v24, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v25, types: [android.view.View, com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v26, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v7, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v8, types: [com.facebook.ads.redexgen.X.6A] */
    /* JADX WARN: Type inference failed for: r12v9, types: [com.facebook.ads.redexgen.X.6A] */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        MotionEvent motionEvent2 = motionEvent;
        ?? r12 = this;
        float fAbs = 0.0f;
        boolean z = false;
        float f = 0.0f;
        int action = 0;
        float x = 0.0f;
        float dx = 0.0f;
        float fAbs2 = 0.0f;
        float x2 = 0.0f;
        int action2 = motionEvent2.getAction() & 255;
        float yDiff = action2 != 3 ? 2.8E-45f : 4.2E-45f;
        while (true) {
            switch (yDiff) {
                case 2.8E-45f:
                    if (action2 != 1) {
                        yDiff = 7.0E-45f;
                        break;
                    } else {
                        yDiff = 4.2E-45f;
                        break;
                    }
                case 4.2E-45f:
                    r12 = (C6A) r12;
                    r12.A0U();
                    z = false;
                    yDiff = 5.6E-45f;
                    break;
                case 5.6E-45f:
                    return z;
                case 7.0E-45f:
                    if (action2 == 0) {
                        yDiff = 1.4E-44f;
                        break;
                    } else {
                        yDiff = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    r12 = (C6A) r12;
                    if (!r12.A0k) {
                        yDiff = 1.1E-44f;
                        break;
                    } else {
                        yDiff = 9.8E-45f;
                        break;
                    }
                case 9.8E-45f:
                    z = true;
                    yDiff = 5.6E-45f;
                    break;
                case 1.1E-44f:
                    r12 = (C6A) r12;
                    if (!r12.A0m) {
                        yDiff = 1.4E-44f;
                        break;
                    } else {
                        yDiff = 1.3E-44f;
                        break;
                    }
                case 1.3E-44f:
                    z = false;
                    yDiff = 5.6E-45f;
                    break;
                case 1.4E-44f:
                    switch (action2) {
                        case 0:
                            yDiff = 2.1E-44f;
                            break;
                        case 1:
                        case 3:
                        case 4:
                        case 5:
                        default:
                            yDiff = 1.5E-44f;
                            break;
                        case 2:
                            yDiff = 2.7E-44f;
                            break;
                        case 6:
                            yDiff = 2.0E-44f;
                            break;
                    }
                case 1.5E-44f:
                    r12 = (C6A) r12;
                    if (r12.A0U != null) {
                        yDiff = 1.8E-44f;
                        break;
                    } else {
                        yDiff = 1.7E-44f;
                        break;
                    }
                case 1.7E-44f:
                    r12 = (C6A) r12;
                    r12.A0U = VelocityTracker.obtain();
                    yDiff = 1.8E-44f;
                    break;
                case 1.8E-44f:
                    r12 = (C6A) r12;
                    motionEvent2 = motionEvent2;
                    r12.A0U.addMovement(motionEvent2);
                    z = r12.A0k;
                    yDiff = 5.6E-45f;
                    break;
                case 2.0E-44f:
                    r12 = (C6A) r12;
                    motionEvent2 = motionEvent2;
                    r12.A0P(motionEvent2);
                    yDiff = 1.5E-44f;
                    break;
                case 2.1E-44f:
                    r12 = (C6A) r12;
                    motionEvent2 = motionEvent2;
                    float x3 = motionEvent2.getX();
                    r12.A03 = x3;
                    r12.A05 = x3;
                    float y = motionEvent2.getY();
                    r12.A04 = y;
                    r12.A06 = y;
                    r12.A08 = motionEvent2.getPointerId(0);
                    r12.A0m = false;
                    r12.A0l = true;
                    r12.A0X.computeScrollOffset();
                    if (r12.A0P != 2) {
                        yDiff = 2.5E-44f;
                        break;
                    } else {
                        yDiff = 2.24E-44f;
                        break;
                    }
                case 2.24E-44f:
                    r12 = (C6A) r12;
                    if (Math.abs(r12.A0X.getFinalX() - r12.A0X.getCurrX()) <= r12.A0C) {
                        yDiff = 2.5E-44f;
                        break;
                    } else {
                        yDiff = 2.4E-44f;
                        break;
                    }
                case 2.4E-44f:
                    r12 = (C6A) r12;
                    r12.A0X.abortAnimation();
                    r12.A0o = false;
                    r12.A0f();
                    r12.A0k = true;
                    r12.A0T(true);
                    r12.setScrollState(1);
                    yDiff = 1.5E-44f;
                    break;
                case 2.5E-44f:
                    r12 = (C6A) r12;
                    r12.A0R(false);
                    r12.A0k = false;
                    yDiff = 1.5E-44f;
                    break;
                case 2.7E-44f:
                    r12 = (C6A) r12;
                    action = r12.A08;
                    if (action == -1) {
                        yDiff = 1.5E-44f;
                        break;
                    } else {
                        yDiff = 2.8E-44f;
                        break;
                    }
                case 2.8E-44f:
                    r12 = (C6A) r12;
                    motionEvent2 = motionEvent2;
                    int iFindPointerIndex = motionEvent2.findPointerIndex(action);
                    x = motionEvent2.getX(iFindPointerIndex);
                    f = x - r12.A05;
                    fAbs2 = Math.abs(f);
                    dx = motionEvent2.getY(iFindPointerIndex);
                    float xDiff = r12.A04;
                    fAbs = Math.abs(dx - xDiff);
                    if (f == 0.0f) {
                        yDiff = 3.4E-44f;
                        break;
                    } else {
                        yDiff = 2.9E-44f;
                        break;
                    }
                case 2.9E-44f:
                    r12 = (C6A) r12;
                    if (!r12.A0Y(r12.A05, f)) {
                        yDiff = 3.1E-44f;
                        break;
                    } else {
                        yDiff = 3.4E-44f;
                        break;
                    }
                case 3.1E-44f:
                    r12 = (C6A) r12;
                    if (!r12.A0d(r12, false, (int) f, (int) x, (int) dx)) {
                        yDiff = 3.4E-44f;
                        break;
                    } else {
                        yDiff = 3.2E-44f;
                        break;
                    }
                case 3.2E-44f:
                    r12 = (C6A) r12;
                    r12.A05 = x;
                    r12.A06 = dx;
                    r12.A0m = true;
                    z = false;
                    yDiff = 5.6E-45f;
                    break;
                case 3.4E-44f:
                    r12 = (C6A) r12;
                    if (fAbs2 <= r12.A0R) {
                        yDiff = 4.6E-44f;
                        break;
                    } else {
                        yDiff = 3.5E-44f;
                        break;
                    }
                case 3.5E-44f:
                    if (0.5f * fAbs2 <= fAbs) {
                        yDiff = 4.6E-44f;
                        break;
                    } else {
                        yDiff = 3.6E-44f;
                        break;
                    }
                case 3.6E-44f:
                    r12 = (C6A) r12;
                    r12.A0k = true;
                    r12.A0T(true);
                    r12.setScrollState(1);
                    if (f <= 0.0f) {
                        yDiff = 4.5E-44f;
                        break;
                    } else {
                        yDiff = 3.8E-44f;
                        break;
                    }
                case 3.8E-44f:
                    r12 = (C6A) r12;
                    x2 = r12.A03 + r12.A0R;
                    yDiff = 3.9E-44f;
                    break;
                case 3.9E-44f:
                    r12 = (C6A) r12;
                    r12.A05 = x2;
                    r12.A06 = dx;
                    r12.setScrollingCacheEnabled(true);
                    yDiff = 4.1E-44f;
                    break;
                case 4.1E-44f:
                    r12 = (C6A) r12;
                    if (!r12.A0k) {
                        yDiff = 1.5E-44f;
                        break;
                    } else {
                        yDiff = 4.2E-44f;
                        break;
                    }
                case 4.2E-44f:
                    r12 = (C6A) r12;
                    if (!r12.A0X(x)) {
                        yDiff = 1.5E-44f;
                        break;
                    } else {
                        yDiff = 4.3E-44f;
                        break;
                    }
                case 4.3E-44f:
                    r12 = (C6A) r12;
                    C02985s.A07(r12);
                    yDiff = 1.5E-44f;
                    break;
                case 4.5E-44f:
                    r12 = (C6A) r12;
                    float x4 = r12.A03;
                    float yDiff2 = r12.A0R;
                    x2 = x4 - yDiff2;
                    yDiff = 3.9E-44f;
                    break;
                case 4.6E-44f:
                    r12 = (C6A) r12;
                    if (fAbs <= r12.A0R) {
                        yDiff = 4.1E-44f;
                        break;
                    } else {
                        yDiff = 4.8E-44f;
                        break;
                    }
                case 4.8E-44f:
                    r12 = (C6A) r12;
                    r12.A0m = true;
                    yDiff = 4.1E-44f;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) throws Resources.NotFoundException {
        C6A c6a = this;
        View childAt = null;
        int count = 0;
        int decorCount = 0;
        AnonymousClass60 anonymousClass60 = null;
        int i5 = 0;
        int paddingLeft = 0;
        int paddingRight = 0;
        C03045z c03045zA07 = null;
        int i6 = 0;
        int i7 = 0;
        View childAt2 = null;
        AnonymousClass60 anonymousClass602 = null;
        int childCount = c6a.getChildCount();
        int i8 = i3 - i;
        int i9 = i4 - i2;
        int paddingLeft2 = c6a.getPaddingLeft();
        int paddingTop = c6a.getPaddingTop();
        int paddingRight2 = c6a.getPaddingRight();
        int paddingBottom = c6a.getPaddingBottom();
        int scrollX = c6a.getScrollX();
        int i10 = 0;
        int i11 = 0;
        int scrollX2 = 2;
        while (true) {
            switch (scrollX2) {
                case 2:
                    if (i11 >= childCount) {
                        scrollX2 = 17;
                        break;
                    } else {
                        scrollX2 = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i11);
                    if (childAt.getVisibility() == 8) {
                        scrollX2 = 10;
                        break;
                    } else {
                        scrollX2 = 4;
                        break;
                    }
                case 4:
                    childAt = childAt;
                    anonymousClass60 = (AnonymousClass60) childAt.getLayoutParams();
                    if (!anonymousClass60.A05) {
                        scrollX2 = 10;
                        break;
                    } else {
                        scrollX2 = 5;
                        break;
                    }
                case 5:
                    anonymousClass60 = anonymousClass60;
                    int loff = anonymousClass60.A04;
                    int i12 = loff & 7;
                    int loff2 = anonymousClass60.A04;
                    i5 = loff2 & 112;
                    switch (i12) {
                        case 1:
                            scrollX2 = 15;
                            break;
                        case 2:
                            scrollX2 = 6;
                            break;
                        case 3:
                            scrollX2 = 16;
                            break;
                        case 4:
                            scrollX2 = 6;
                            break;
                        case 5:
                            scrollX2 = 14;
                            break;
                        default:
                            scrollX2 = 6;
                            break;
                    }
                case 6:
                    paddingRight = paddingLeft2;
                    scrollX2 = 7;
                    break;
                case 7:
                    switch (i5) {
                        case 16:
                            scrollX2 = 12;
                            break;
                        case 48:
                            scrollX2 = 13;
                            break;
                        case 80:
                            scrollX2 = 11;
                            break;
                        default:
                            scrollX2 = 8;
                            break;
                    }
                case 8:
                    paddingLeft = paddingTop;
                    scrollX2 = 9;
                    break;
                case 9:
                    View view = childAt;
                    int i13 = paddingRight + scrollX;
                    childAt = view;
                    childAt.layout(i13, paddingLeft, view.getMeasuredWidth() + i13, view.getMeasuredHeight() + paddingLeft);
                    i10++;
                    scrollX2 = 10;
                    break;
                case 10:
                    i11++;
                    scrollX2 = 2;
                    break;
                case 11:
                    childAt = childAt;
                    int paddingLeft3 = i9 - paddingBottom;
                    paddingLeft = paddingLeft3 - childAt.getMeasuredHeight();
                    paddingBottom += childAt.getMeasuredHeight();
                    scrollX2 = 9;
                    break;
                case 12:
                    childAt = childAt;
                    int childLeft = childAt.getMeasuredHeight();
                    paddingLeft = Math.max((i9 - childLeft) / 2, paddingTop);
                    scrollX2 = 9;
                    break;
                case 13:
                    childAt = childAt;
                    paddingLeft = paddingTop;
                    int loff3 = childAt.getMeasuredHeight();
                    paddingTop += loff3;
                    scrollX2 = 9;
                    break;
                case 14:
                    childAt = childAt;
                    int paddingRight3 = i8 - paddingRight2;
                    paddingRight = paddingRight3 - childAt.getMeasuredWidth();
                    paddingRight2 += childAt.getMeasuredWidth();
                    scrollX2 = 7;
                    break;
                case 15:
                    childAt = childAt;
                    paddingRight = Math.max((i8 - childAt.getMeasuredWidth()) / 2, paddingLeft2);
                    scrollX2 = 7;
                    break;
                case 16:
                    childAt = childAt;
                    paddingRight = paddingLeft2;
                    paddingLeft2 += childAt.getMeasuredWidth();
                    scrollX2 = 7;
                    break;
                case 17:
                    int count2 = i8 - paddingLeft2;
                    count = count2 - paddingRight2;
                    i6 = 0;
                    scrollX2 = 18;
                    break;
                case 18:
                    if (i6 >= childCount) {
                        scrollX2 = 26;
                        break;
                    } else {
                        scrollX2 = 19;
                        break;
                    }
                case 19:
                    c6a = c6a;
                    childAt2 = c6a.getChildAt(i6);
                    if (childAt2.getVisibility() == 8) {
                        scrollX2 = 25;
                        break;
                    } else {
                        scrollX2 = 20;
                        break;
                    }
                case 20:
                    childAt2 = childAt2;
                    anonymousClass602 = (AnonymousClass60) childAt2.getLayoutParams();
                    if (!anonymousClass602.A05) {
                        scrollX2 = 21;
                        break;
                    } else {
                        scrollX2 = 25;
                        break;
                    }
                case 21:
                    c6a = c6a;
                    childAt2 = childAt2;
                    c03045zA07 = c6a.A07(childAt2);
                    if (c03045zA07 == null) {
                        scrollX2 = 25;
                        break;
                    } else {
                        scrollX2 = 22;
                        break;
                    }
                case 22:
                    anonymousClass602 = anonymousClass602;
                    c03045zA07 = c03045zA07;
                    int loff4 = (int) (count * c03045zA07.A00);
                    decorCount = paddingLeft2 + loff4;
                    i7 = paddingTop;
                    if (!anonymousClass602.A03) {
                        scrollX2 = 24;
                        break;
                    } else {
                        scrollX2 = 23;
                        break;
                    }
                case 23:
                    childAt2 = childAt2;
                    anonymousClass602 = anonymousClass602;
                    anonymousClass602.A03 = false;
                    childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (count * anonymousClass602.A00), 1073741824), View.MeasureSpec.makeMeasureSpec((i9 - paddingTop) - paddingBottom, 1073741824));
                    scrollX2 = 24;
                    break;
                case 24:
                    childAt2 = childAt2;
                    childAt2.layout(decorCount, i7, childAt2.getMeasuredWidth() + decorCount, childAt2.getMeasuredHeight() + i7);
                    scrollX2 = 25;
                    break;
                case 25:
                    i6++;
                    scrollX2 = 18;
                    break;
                case 26:
                    c6a = c6a;
                    c6a.A0Q = paddingTop;
                    int scrollX3 = i9 - paddingBottom;
                    c6a.A09 = scrollX3;
                    c6a.A0D = i10;
                    if (!c6a.A0i) {
                        scrollX2 = 28;
                        break;
                    } else {
                        scrollX2 = 27;
                        break;
                    }
                case 27:
                    c6a = c6a;
                    c6a.A0M(c6a.A00, false, 0, false);
                    scrollX2 = 28;
                    break;
                case 28:
                    c6a.A0i = false;
                    return;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) throws Resources.NotFoundException {
        C6A c6a = this;
        AnonymousClass60 anonymousClass60 = null;
        int i3 = 0;
        int childCount = 0;
        View childAt = null;
        int i4 = 0;
        int i5 = 0;
        int maxGutterSize = 0;
        View childAt2 = null;
        int widthMode = 0;
        int widthSize = 0;
        AnonymousClass60 anonymousClass602 = null;
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        c6a.setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = c6a.getMeasuredWidth();
        c6a.A0I = Math.min(measuredWidth / 10, c6a.A0E);
        int paddingLeft = (measuredWidth - c6a.getPaddingLeft()) - c6a.getPaddingRight();
        int measuredHeight = (c6a.getMeasuredHeight() - c6a.getPaddingTop()) - c6a.getPaddingBottom();
        int childCount2 = c6a.getChildCount();
        int i8 = 0;
        int heightSize = 2;
        while (true) {
            switch (heightSize) {
                case 2:
                    if (i8 >= childCount2) {
                        heightSize = 29;
                        break;
                    } else {
                        heightSize = 3;
                        break;
                    }
                case 3:
                    c6a = c6a;
                    childAt2 = c6a.getChildAt(i8);
                    if (childAt2.getVisibility() == 8) {
                        heightSize = 22;
                        break;
                    } else {
                        heightSize = 4;
                        break;
                    }
                case 4:
                    childAt2 = childAt2;
                    anonymousClass60 = (AnonymousClass60) childAt2.getLayoutParams();
                    if (anonymousClass60 == null) {
                        heightSize = 22;
                        break;
                    } else {
                        heightSize = 5;
                        break;
                    }
                case 5:
                    anonymousClass60 = anonymousClass60;
                    if (!anonymousClass60.A05) {
                        heightSize = 22;
                        break;
                    } else {
                        heightSize = 6;
                        break;
                    }
                case 6:
                    anonymousClass60 = anonymousClass60;
                    int heightSize2 = anonymousClass60.A04;
                    i4 = heightSize2 & 7;
                    int heightSize3 = anonymousClass60.A04;
                    i5 = heightSize3 & 112;
                    widthMode = Integer.MIN_VALUE;
                    widthSize = Integer.MIN_VALUE;
                    if (i5 == 48) {
                        heightSize = 8;
                        break;
                    } else {
                        heightSize = 7;
                        break;
                    }
                case 7:
                    if (i5 != 80) {
                        heightSize = 28;
                        break;
                    } else {
                        heightSize = 8;
                        break;
                    }
                case 8:
                    maxGutterSize = 1;
                    heightSize = 9;
                    break;
                case 9:
                    if (i4 == 3) {
                        heightSize = 11;
                        break;
                    } else {
                        heightSize = 10;
                        break;
                    }
                case 10:
                    if (i4 != 5) {
                        heightSize = 27;
                        break;
                    } else {
                        heightSize = 11;
                        break;
                    }
                case 11:
                    z = true;
                    heightSize = 12;
                    break;
                case 12:
                    if (maxGutterSize == 0) {
                        heightSize = 25;
                        break;
                    } else {
                        heightSize = 13;
                        break;
                    }
                case 13:
                    widthMode = 1073741824;
                    heightSize = 14;
                    break;
                case 14:
                    anonymousClass60 = anonymousClass60;
                    i3 = paddingLeft;
                    i6 = measuredHeight;
                    if (anonymousClass60.width == -2) {
                        heightSize = 17;
                        break;
                    } else {
                        heightSize = 15;
                        break;
                    }
                case 15:
                    anonymousClass60 = anonymousClass60;
                    widthMode = 1073741824;
                    if (anonymousClass60.width == -1) {
                        heightSize = 17;
                        break;
                    } else {
                        heightSize = 16;
                        break;
                    }
                case 16:
                    anonymousClass60 = anonymousClass60;
                    i3 = anonymousClass60.width;
                    heightSize = 17;
                    break;
                case 17:
                    anonymousClass60 = anonymousClass60;
                    if (anonymousClass60.height == -2) {
                        heightSize = 20;
                        break;
                    } else {
                        heightSize = 18;
                        break;
                    }
                case 18:
                    anonymousClass60 = anonymousClass60;
                    widthSize = 1073741824;
                    if (anonymousClass60.height == -1) {
                        heightSize = 20;
                        break;
                    } else {
                        heightSize = 19;
                        break;
                    }
                case 19:
                    anonymousClass60 = anonymousClass60;
                    i6 = anonymousClass60.height;
                    heightSize = 20;
                    break;
                case 20:
                    childAt2 = childAt2;
                    i3 = i3;
                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(i3, widthMode), View.MeasureSpec.makeMeasureSpec(i6, widthSize));
                    if (maxGutterSize == 0) {
                        heightSize = 23;
                        break;
                    } else {
                        heightSize = 21;
                        break;
                    }
                case 21:
                    childAt2 = childAt2;
                    measuredHeight -= childAt2.getMeasuredHeight();
                    heightSize = 22;
                    break;
                case 22:
                    i8++;
                    heightSize = 2;
                    break;
                case 23:
                    if (!z) {
                        heightSize = 22;
                        break;
                    } else {
                        heightSize = 24;
                        break;
                    }
                case 24:
                    childAt2 = childAt2;
                    paddingLeft -= childAt2.getMeasuredWidth();
                    heightSize = 22;
                    break;
                case 25:
                    if (!z) {
                        heightSize = 14;
                        break;
                    } else {
                        heightSize = 26;
                        break;
                    }
                case 26:
                    widthSize = 1073741824;
                    heightSize = 14;
                    break;
                case 27:
                    z = false;
                    heightSize = 12;
                    break;
                case 28:
                    maxGutterSize = 0;
                    heightSize = 9;
                    break;
                case 29:
                    c6a = c6a;
                    c6a.A0B = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
                    c6a.A0A = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                    c6a.A0j = true;
                    c6a.A0f();
                    c6a.A0j = false;
                    childCount = c6a.getChildCount();
                    i7 = 0;
                    heightSize = 30;
                    break;
                case 30:
                    if (i7 >= childCount) {
                        heightSize = 36;
                        break;
                    } else {
                        heightSize = 31;
                        break;
                    }
                case 31:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i7);
                    if (childAt.getVisibility() == 8) {
                        heightSize = 35;
                        break;
                    } else {
                        heightSize = 32;
                        break;
                    }
                case 32:
                    childAt = childAt;
                    anonymousClass602 = (AnonymousClass60) childAt.getLayoutParams();
                    if (anonymousClass602 == null) {
                        heightSize = 34;
                        break;
                    } else {
                        heightSize = 33;
                        break;
                    }
                case 33:
                    anonymousClass602 = anonymousClass602;
                    if (!anonymousClass602.A05) {
                        heightSize = 34;
                        break;
                    } else {
                        heightSize = 35;
                        break;
                    }
                case 34:
                    c6a = c6a;
                    childAt = childAt;
                    anonymousClass602 = anonymousClass602;
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * anonymousClass602.A00), 1073741824), c6a.A0A);
                    heightSize = 35;
                    break;
                case 35:
                    i7++;
                    heightSize = 30;
                    break;
                case 36:
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int count, Rect rect) {
        C6A c6a = this;
        int i = 0;
        int i2 = 0;
        C03045z c03045zA07 = null;
        int i3 = 0;
        View childAt = null;
        boolean z = false;
        int i4 = 0;
        int childCount = c6a.getChildCount();
        int i5 = (count & 2) != 0 ? 2 : 13;
        while (true) {
            switch (i5) {
                case 2:
                    i2 = 0;
                    i4 = 1;
                    i3 = childCount;
                    i5 = 3;
                    break;
                case 3:
                    i = i2;
                    i5 = 4;
                    break;
                case 4:
                    if (i == i3) {
                        i5 = 12;
                        break;
                    } else {
                        i5 = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    childAt = c6a.getChildAt(i);
                    if (childAt.getVisibility() != 0) {
                        i5 = 11;
                        break;
                    } else {
                        i5 = 6;
                        break;
                    }
                case 6:
                    c6a = c6a;
                    childAt = childAt;
                    c03045zA07 = c6a.A07(childAt);
                    if (c03045zA07 == null) {
                        i5 = 11;
                        break;
                    } else {
                        i5 = 7;
                        break;
                    }
                case 7:
                    c6a = c6a;
                    c03045zA07 = c03045zA07;
                    if (c03045zA07.A02 != c6a.A00) {
                        i5 = 11;
                        break;
                    } else {
                        i5 = 8;
                        break;
                    }
                case 8:
                    rect = rect;
                    childAt = childAt;
                    if (!childAt.requestFocus(count, rect)) {
                        i5 = 11;
                        break;
                    } else {
                        i5 = 9;
                        break;
                    }
                case 9:
                    z = true;
                    i5 = 10;
                    break;
                case 10:
                    return z;
                case 11:
                    i += i4;
                    i5 = 4;
                    break;
                case 12:
                    z = false;
                    i5 = 10;
                    break;
                case 13:
                    i2 = childCount - 1;
                    i4 = -1;
                    i3 = -1;
                    i5 = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        C6A c6a = this;
        ViewPager$SavedState viewPager$SavedState = null;
        char c = !(parcelable instanceof ViewPager$SavedState) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    parcelable = parcelable;
                    super.onRestoreInstanceState(parcelable);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c6a = c6a;
                    parcelable = parcelable;
                    viewPager$SavedState = (ViewPager$SavedState) parcelable;
                    super.onRestoreInstanceState(viewPager$SavedState.A02());
                    if (c6a.A01 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c6a = c6a;
                    viewPager$SavedState = viewPager$SavedState;
                    c6a.A01.A0E(viewPager$SavedState.A01, viewPager$SavedState.A02);
                    c6a.A0N(viewPager$SavedState.A00, false, true);
                    c = 3;
                    break;
                case 6:
                    c6a = c6a;
                    viewPager$SavedState = viewPager$SavedState;
                    c6a.A0O = viewPager$SavedState.A00;
                    c6a.A0T = viewPager$SavedState.A01;
                    c6a.A0c = viewPager$SavedState.A02;
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable superState = super.onSaveInstanceState();
        ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(superState);
        viewPager$SavedState.A00 = this.A00;
        if (this.A01 != null) {
            Parcelable superState2 = this.A01.A0A();
            viewPager$SavedState.A01 = superState2;
        }
        return viewPager$SavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            A0K(i, i3, this.A0M, this.A0M);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        MotionEvent motionEvent2 = motionEvent;
        C6A c6a = this;
        float x = 0.0f;
        boolean zA0U = false;
        int iFindPointerIndex = 0;
        boolean z = false;
        float fAbs = 0.0f;
        float fAbs2 = 0.0f;
        float y = 0.0f;
        float f = 0.0f;
        ViewParent parent = null;
        float y2 = c6a.A0h ? 2.8E-45f : 5.6E-45f;
        while (true) {
            switch (y2) {
                case 2.8E-45f:
                    z = true;
                    y2 = 4.2E-45f;
                    break;
                case 4.2E-45f:
                    return z;
                case 5.6E-45f:
                    motionEvent2 = motionEvent2;
                    if (motionEvent2.getAction() != 0) {
                        y2 = 9.8E-45f;
                        break;
                    } else {
                        y2 = 7.0E-45f;
                        break;
                    }
                case 7.0E-45f:
                    motionEvent2 = motionEvent2;
                    int nextPage = motionEvent2.getEdgeFlags();
                    if (nextPage == 0) {
                        y2 = 9.8E-45f;
                        break;
                    } else {
                        y2 = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    z = false;
                    y2 = 4.2E-45f;
                    break;
                case 9.8E-45f:
                    c6a = c6a;
                    if (c6a.A01 == null) {
                        y2 = 1.3E-44f;
                        break;
                    } else {
                        y2 = 1.1E-44f;
                        break;
                    }
                case 1.1E-44f:
                    c6a = c6a;
                    if (c6a.A01.A08() != 0) {
                        y2 = 1.4E-44f;
                        break;
                    } else {
                        y2 = 1.3E-44f;
                        break;
                    }
                case 1.3E-44f:
                    z = false;
                    y2 = 4.2E-45f;
                    break;
                case 1.4E-44f:
                    c6a = c6a;
                    if (c6a.A0U != null) {
                        y2 = 1.7E-44f;
                        break;
                    } else {
                        y2 = 1.5E-44f;
                        break;
                    }
                case 1.5E-44f:
                    c6a = c6a;
                    c6a.A0U = VelocityTracker.obtain();
                    y2 = 1.7E-44f;
                    break;
                case 1.7E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    c6a.A0U.addMovement(motionEvent2);
                    int nextPage2 = motionEvent2.getAction();
                    zA0U = false;
                    switch (nextPage2 & 255) {
                        case 0:
                            y2 = 4.8E-44f;
                            break;
                        case 1:
                            y2 = 2.8E-44f;
                            break;
                        case 2:
                            y2 = 3.1E-44f;
                            break;
                        case 3:
                            y2 = 2.5E-44f;
                            break;
                        case 4:
                            y2 = 1.8E-44f;
                            break;
                        case 5:
                            y2 = 2.4E-44f;
                            break;
                        case 6:
                            y2 = 2.24E-44f;
                            break;
                        default:
                            y2 = 1.8E-44f;
                            break;
                    }
                case 1.8E-44f:
                    if (!zA0U) {
                        y2 = 2.1E-44f;
                        break;
                    } else {
                        y2 = 2.0E-44f;
                        break;
                    }
                case 2.0E-44f:
                    c6a = c6a;
                    C02985s.A07(c6a);
                    y2 = 2.1E-44f;
                    break;
                case 2.1E-44f:
                    z = true;
                    y2 = 4.2E-45f;
                    break;
                case 2.24E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    c6a.A0P(motionEvent2);
                    float y3 = motionEvent2.getX(motionEvent2.findPointerIndex(c6a.A08));
                    c6a.A05 = y3;
                    y2 = 1.8E-44f;
                    break;
                case 2.4E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    int actionIndex = motionEvent2.getActionIndex();
                    float y4 = motionEvent2.getX(actionIndex);
                    c6a.A05 = y4;
                    c6a.A08 = motionEvent2.getPointerId(actionIndex);
                    y2 = 1.8E-44f;
                    break;
                case 2.5E-44f:
                    c6a = c6a;
                    if (!c6a.A0k) {
                        y2 = 1.8E-44f;
                        break;
                    } else {
                        y2 = 2.7E-44f;
                        break;
                    }
                case 2.7E-44f:
                    c6a = c6a;
                    c6a.A0M(c6a.A00, true, 0, false);
                    zA0U = c6a.A0U();
                    y2 = 1.8E-44f;
                    break;
                case 2.8E-44f:
                    c6a = c6a;
                    if (!c6a.A0k) {
                        y2 = 1.8E-44f;
                        break;
                    } else {
                        y2 = 2.9E-44f;
                        break;
                    }
                case 2.9E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    VelocityTracker velocityTracker = c6a.A0U;
                    velocityTracker.computeCurrentVelocity(1000, c6a.A0J);
                    int xVelocity = (int) velocityTracker.getXVelocity(c6a.A08);
                    c6a.A0o = true;
                    int clientWidth = c6a.getClientWidth();
                    int scrollX = c6a.getScrollX();
                    C03045z c03045zA03 = c6a.A03();
                    int scrollX2 = c6a.A0M;
                    int i = c03045zA03.A02;
                    float f2 = ((scrollX / clientWidth) - c03045zA03.A00) / (c03045zA03.A01 + (scrollX2 / clientWidth));
                    int scrollX3 = c6a.A08;
                    float x2 = motionEvent2.getX(motionEvent2.findPointerIndex(scrollX3));
                    float pageOffset = c6a.A03;
                    int totalDelta = (int) (x2 - pageOffset);
                    c6a.A0O(c6a.A01(i, f2, xVelocity, totalDelta), true, true, xVelocity);
                    zA0U = c6a.A0U();
                    y2 = 1.8E-44f;
                    break;
                case 3.1E-44f:
                    c6a = c6a;
                    if (!c6a.A0k) {
                        y2 = 3.2E-44f;
                        break;
                    } else {
                        y2 = 4.3E-44f;
                        break;
                    }
                case 3.2E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    iFindPointerIndex = motionEvent2.findPointerIndex(c6a.A08);
                    if (iFindPointerIndex != -1) {
                        y2 = 3.5E-44f;
                        break;
                    } else {
                        y2 = 3.4E-44f;
                        break;
                    }
                case 3.4E-44f:
                    c6a = c6a;
                    zA0U = c6a.A0U();
                    y2 = 1.8E-44f;
                    break;
                case 3.5E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    x = motionEvent2.getX(iFindPointerIndex);
                    fAbs = Math.abs(x - c6a.A05);
                    y = motionEvent2.getY(iFindPointerIndex);
                    float y5 = c6a.A06;
                    fAbs2 = Math.abs(y - y5);
                    float y6 = c6a.A0R;
                    if (fAbs <= y6) {
                        y2 = 4.3E-44f;
                        break;
                    } else {
                        y2 = 3.6E-44f;
                        break;
                    }
                case 3.6E-44f:
                    if (fAbs <= fAbs2) {
                        y2 = 4.3E-44f;
                        break;
                    } else {
                        y2 = 3.8E-44f;
                        break;
                    }
                case 3.8E-44f:
                    c6a = c6a;
                    c6a.A0k = true;
                    c6a.A0T(true);
                    float y7 = c6a.A03;
                    if (x - y7 <= 0.0f) {
                        y2 = 4.6E-44f;
                        break;
                    } else {
                        y2 = 3.9E-44f;
                        break;
                    }
                case 3.9E-44f:
                    c6a = c6a;
                    f = c6a.A03 + c6a.A0R;
                    y2 = 4.1E-44f;
                    break;
                case 4.1E-44f:
                    c6a = c6a;
                    c6a.A05 = f;
                    c6a.A06 = y;
                    c6a.setScrollState(1);
                    c6a.setScrollingCacheEnabled(true);
                    parent = c6a.getParent();
                    if (parent == null) {
                        y2 = 4.3E-44f;
                        break;
                    } else {
                        y2 = 4.2E-44f;
                        break;
                    }
                case 4.2E-44f:
                    parent = parent;
                    parent.requestDisallowInterceptTouchEvent(true);
                    y2 = 4.3E-44f;
                    break;
                case 4.3E-44f:
                    c6a = c6a;
                    if (!c6a.A0k) {
                        y2 = 1.8E-44f;
                        break;
                    } else {
                        y2 = 4.5E-44f;
                        break;
                    }
                case 4.5E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    zA0U = false | c6a.A0X(motionEvent2.getX(motionEvent2.findPointerIndex(c6a.A08)));
                    y2 = 1.8E-44f;
                    break;
                case 4.6E-44f:
                    c6a = c6a;
                    f = c6a.A03 - c6a.A0R;
                    y2 = 4.1E-44f;
                    break;
                case 4.8E-44f:
                    c6a = c6a;
                    motionEvent2 = motionEvent2;
                    c6a.A0X.abortAnimation();
                    c6a.A0o = false;
                    c6a.A0f();
                    float x3 = motionEvent2.getX();
                    c6a.A03 = x3;
                    c6a.A05 = x3;
                    float y8 = motionEvent2.getY();
                    c6a.A04 = y8;
                    c6a.A06 = y8;
                    c6a.A08 = motionEvent2.getPointerId(0);
                    y2 = 1.8E-44f;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        C6A c6a = this;
        char c = c6a.A0j ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    view = view;
                    c6a.removeViewInLayout(view);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c6a = c6a;
                    view = view;
                    super.removeView(view);
                    c = 3;
                    break;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [com.facebook.ads.redexgen.X.65] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.os.Parcelable, java.lang.ClassLoader] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    public void setAdapter(C5U c5u) throws Resources.NotFoundException {
        final C6A c6a = this;
        boolean z = false;
        int i = 0;
        C5U c5u2 = null;
        int i2 = 0;
        int size = 0;
        ?? r4 = 0;
        boolean z2 = false;
        char c = c6a.A01 != null ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    r4 = 0;
                    c6a.A01.A0D(null);
                    c6a.A01.A0G(c6a);
                    i = 0;
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (i >= c6a.A0t.size()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    C03045z c03045z = c6a.A0t.get(i);
                    c6a.A01.A0H(c6a, c03045z.A02, c03045z.A03);
                    i++;
                    c = 3;
                    break;
                case 5:
                    c6a = c6a;
                    z2 = false;
                    c6a.A01.A0F(c6a);
                    c6a.A0t.clear();
                    c6a.A0A();
                    c6a.A00 = 0;
                    c6a.scrollTo(0, 0);
                    c = 6;
                    break;
                case 6:
                    c6a = c6a;
                    c5u = c5u;
                    c5u2 = c6a.A01;
                    c6a.A01 = c5u;
                    c6a.A0G = z2 ? 1 : 0;
                    if (c6a.A01 == null) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c6a = c6a;
                    if (c6a.A0b != null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c6a = c6a;
                    c6a.A0b = new DataSetObserver() { // from class: com.facebook.ads.redexgen.X.65
                        @Override // android.database.DataSetObserver
                        public final void onChanged() throws Resources.NotFoundException {
                            this.A00.A0e();
                        }

                        @Override // android.database.DataSetObserver
                        public final void onInvalidated() throws Resources.NotFoundException {
                            this.A00.A0e();
                        }
                    };
                    c = '\t';
                    break;
                case '\t':
                    c6a = c6a;
                    c6a.A01.A0D(c6a.A0b);
                    c6a.A0o = z2;
                    z = c6a.A0i;
                    c6a.A0i = true;
                    c6a.A0G = c6a.A01.A08();
                    if (c6a.A0O < 0) {
                        c = 16;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c6a = c6a;
                    c6a.A01.A0E(c6a.A0T, c6a.A0c);
                    c6a.A0N(c6a.A0O, z2, true);
                    c6a.A0O = -1;
                    c6a.A0T = r4;
                    c6a.A0c = r4;
                    c = 11;
                    break;
                case 11:
                    c6a = c6a;
                    if (c6a.A0e == null) {
                        c = 19;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c6a = c6a;
                    if (!c6a.A0e.isEmpty()) {
                        c = '\r';
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case '\r':
                    c6a = c6a;
                    i2 = 0;
                    size = c6a.A0e.size();
                    c = 14;
                    break;
                case 14:
                    if (i2 >= size) {
                        c = 19;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c6a = c6a;
                    c5u = c5u;
                    c5u2 = c5u2;
                    c6a.A0e.get(i2).onAdapterChanged(c6a, c5u2, c5u);
                    i2++;
                    c = 14;
                    break;
                case 16:
                    if (!z) {
                        c = 17;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 17:
                    c6a = c6a;
                    c6a.A0f();
                    c = 11;
                    break;
                case 18:
                    c6a = c6a;
                    c6a.requestLayout();
                    c = 11;
                    break;
                case 19:
                    return;
            }
        }
    }

    public void setCurrentItem(int i) throws Resources.NotFoundException {
        boolean z = false;
        this.A0o = false;
        char c = !this.A0i ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    A0N(i, z, false);
                    return;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public void setOffscreenPageLimit(int i) throws Resources.NotFoundException {
        C6A c6a = this;
        char c = i < 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    Log.w(A08(22, 9, 52), A08(72, 31, 52) + i + A08(283, 26, 121) + 1);
                    i = 1;
                    c = 3;
                    break;
                case 3:
                    c6a = c6a;
                    if (i == c6a.A0L) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c6a = c6a;
                    c6a.A0L = i;
                    c6a.A0f();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AnonymousClass63 anonymousClass63) {
        this.A0Z = anonymousClass63;
    }

    public void setPageMargin(int width) {
        int i = this.A0M;
        this.A0M = width;
        int width2 = getWidth();
        A0K(width2, width2, width, i);
        requestLayout();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(C02744s.A00(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        C6A c6a = this;
        boolean z = false;
        c6a.A0S = drawable;
        char c = drawable != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    c6a.refreshDrawableState();
                    c = 3;
                    break;
                case 3:
                    drawable = drawable;
                    if (drawable != null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    C6A c6a2 = c6a;
                    c6a2.setWillNotDraw(z);
                    c6a2.invalidate();
                    return;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public void setScrollState(int i) {
        C6A c6a = this;
        boolean z = false;
        char c = c6a.A0P == i ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c6a = c6a;
                    c6a.A0P = i;
                    if (c6a.A0a == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (i == 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    c6a = c6a;
                    c6a.A0S(z);
                    c = 7;
                    break;
                case 7:
                    c6a = c6a;
                    c6a.A0F(i);
                    c = 2;
                    break;
                case '\b':
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.A0p != z) {
            this.A0p = z;
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        C6A c6a = this;
        boolean z = false;
        char c = !super.verifyDrawable(drawable) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c6a = c6a;
                    drawable = drawable;
                    if (drawable != c6a.A0S) {
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
