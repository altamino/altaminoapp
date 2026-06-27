package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$SavedState;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.tonyodev.fetch.FetchConst;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8H, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8H extends ViewGroup implements C5P {
    private static byte[] A18;
    public static final Interpolator A19;
    public static final boolean A1A;
    public static final boolean A1B;
    public static final boolean A1C;
    private static final boolean A1D;
    private static final boolean A1E;
    private static final boolean A1F;
    private static final int[] A1G;
    private static final int[] A1H;
    private static final Class<?>[] A1I;
    public C03286x A00;
    public AnonymousClass70 A01;
    public C7G A02;
    public C7I A03;
    public AbstractC02102g A04;
    public C7B A05;

    @VisibleForTesting
    public C7N A06;
    public AnonymousClass86 A07;
    public C8F A08;
    public C8J A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;

    @VisibleForTesting
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    private float A0L;
    private float A0M;
    private int A0N;
    private int A0O;
    private int A0P;
    private int A0Q;
    private int A0R;
    private int A0S;
    private int A0T;
    private int A0U;
    private int A0V;
    private int A0W;
    private int A0X;
    private VelocityTracker A0Y;
    private EdgeEffect A0Z;
    private EdgeEffect A0a;
    private EdgeEffect A0b;
    private EdgeEffect A0c;
    private C5Q A0d;
    private InterfaceC03467p A0e;
    private InterfaceC03497s A0f;
    private AbstractC03347d A0g;
    private AnonymousClass81 A0h;
    private AnonymousClass82 A0i;
    private RecyclerView$SavedState A0j;
    private Runnable A0k;
    private List<AnonymousClass80> A0l;
    private List<AnonymousClass82> A0m;
    private boolean A0n;
    private boolean A0o;
    public final Rect A0p;
    public final RectF A0q;
    public final AnonymousClass85 A0r;
    public final C8D A0s;
    public final C8R A0t;
    public final Runnable A0u;
    public final ArrayList<C7v> A0v;

    @VisibleForTesting
    public final List<C8G> A0w;
    private final int A0x;
    private final int A0y;
    private final Rect A0z;
    private final AccessibilityManager A10;
    private final AnonymousClass87 A11;
    private final InterfaceC03407j A12;
    private final ArrayList<AnonymousClass81> A13;
    private final int[] A14;
    private final int[] A15;
    private final int[] A16;
    private final int[] A17;

    private static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A18, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0M() {
        A18 = new byte[]{124, 75, 75, 86, 75, 25, 73, 75, 86, 90, 92, 74, 74, 80, 87, 94, 25, 74, 90, 75, 86, 85, 85, 2, 25, 73, 86, 80, 87, 77, 92, 75, 25, 80, 87, 93, 92, 65, 25, 95, 86, 75, 25, 80, 93, 25, 104, 33, 59, 104, 38, 39, 60, 104, 41, 104, 44, 33, 58, 45, 43, 60, 104, 43, 32, 33, 36, 44, 104, 39, 46, 104, 127, 93, 80, 80, 89, 88, 28, 78, 89, 81, 83, 74, 89, 120, 89, 72, 93, 95, 84, 89, 88, 106, 85, 89, 75, 28, 75, 85, 72, 84, 28, 93, 28, 74, 85, 89, 75, 28, 75, 84, 85, 95, 84, 28, 85, 79, 28, 82, 83, 72, 28, 90, 80, 93, 91, 91, 89, 88, 28, 93, 79, 28, 72, 81, 76, 28, 88, 89, 72, 93, 95, 84, 89, 88, 18, 1, 54, 48, 42, 48, 63, 54, 33, 5, 58, 54, 36, 115, 55, 60, 54, 32, 115, 61, 60, 39, 115, 32, 38, 35, 35, 60, 33, 39, 115, 32, 48, 33, 60, 63, 63, 58, 61, 52, 115, 39, 60, 115, 50, 61, 115, 50, 49, 32, 60, 63, 38, 39, 54, 115, 35, 60, 32, 58, 39, 58, 60, 61, 125, 115, 6, 32, 54, 115, 32, 48, 33, 60, 63, 63, 7, 60, 3, 60, 32, 58, 39, 58, 60, 61, 115, 58, 61, 32, 39, 54, 50, 55, 20, 54, 57, 57, 56, 35, 119, 36, 52, 37, 56, 59, 59, 119, 32, 62, 35, 63, 56, 34, 35, 119, 54, 119, 27, 54, 46, 56, 34, 35, 26, 54, 57, 54, 48, 50, 37, 119, 36, 50, 35, 121, 119, 20, 54, 59, 59, 119, 36, 50, 35, 27, 54, 46, 56, 34, 35, 26, 54, 57, 54, 48, 50, 37, 119, 32, 62, 35, 63, 119, 54, 119, 57, 56, 57, 122, 57, 34, 59, 59, 119, 54, 37, 48, 34, 58, 50, 57, 35, 121, 99, 103, 17, 126, 95, 125, 80, 72, 94, 68, 69, 77, 122, 124, 102, 124, 115, 122, 109, 73, 118, 122, 104, 120, 124, 10, 121, 73, 88, 69, 70, 70, 22, 52, 59, 59, 58, 33, 117, 38, 56, 58, 58, 33, 61, 117, 38, 54, 39, 58, 57, 57, 117, 34, 60, 33, 61, 58, 32, 33, 117, 52, 117, 25, 52, 44, 58, 32, 33, 24, 52, 59, 52, 50, 48, 39, 117, 38, 48, 33, 123, 117, 22, 52, 57, 57, 117, 38, 48, 33, 25, 52, 44, 58, 32, 33, 24, 52, 59, 52, 50, 48, 39, 117, 34, 60, 33, 61, 117, 52, 117, 59, 58, 59, 120, 59, 32, 57, 57, 117, 52, 39, 50, 32, 56, 48, 59, 33, 123, 25, 20, 15, 24, 30, 9, 20, 18, 19, 93, 16, 8, 14, 9, 93, 31, 24, 93, 28, 31, 14, 18, 17, 8, 9, 24, 83, 93, 15, 24, 30, 24, 20, 11, 24, 25, 71, 54, 21, 13, 66, 6, 11, 4, 4, 7, 16, 7, 12, 22, 66, 52, 11, 7, 21, 42, 13, 14, 6, 7, 16, 17, 66, 10, 3, 20, 7, 66, 22, 10, 7, 66, 17, 3, 15, 7, 66, 1, 10, 3, 12, 5, 7, 66, 43, 38, 76, 66, 54, 10, 11, 17, 66, 15, 11, 5, 10, 22, 66, 10, 3, 18, 18, 7, 12, 66, 6, 23, 7, 66, 22, 13, 66, 11, 12, 1, 13, 12, 17, 11, 17, 22, 7, 12, 22, 66, 35, 6, 3, 18, 22, 7, 16, 66, 23, 18, 6, 3, 22, 7, 66, 7, 20, 7, 12, 22, 17, 66, 13, 16, 66, 11, 4, 66, 22, 10, 7, 66, 46, 3, 27, 13, 23, 22, 47, 3, 12, 3, 5, 7, 16, 66, 14, 3, 27, 17, 66, 13, 23, 22, 66, 22, 10, 7, 66, 17, 3, 15, 7, 66, 52, 11, 7, 21, 66, 15, 23, 14, 22, 11, 18, 14, 7, 66, 22, 11, 15, 7, 17, 76, 104, 66, 52, 11, 7, 21, 42, 13, 14, 6, 7, 16, 66, 83, 88, 47, 43, 93, 45, 28, 15, 9, 20, 28, 17, 52, 19, 11, 28, 17, 20, 25, 28, 9, 24, 99, 92, 80, 66, 21, 111, 99, 34, 39, 34, 51, 55, 38, 49, 121, 38, 36, 36, 34, 52, 52, 46, 37, 46, 43, 46, 51, 62, 92, 80, 19, 31, 30, 4, 21, 8, 4, 74, 84, 26, 27, 0, 84, 18, 27, 1, 26, 16, 90, 84, 48, 29, 16, 84, 21, 26, 13, 84, 57, 27, 0, 29, 27, 26, 49, 2, 17, 26, 0, 7, 84, 19, 17, 0, 84, 7, 31, 29, 4, 4, 17, 16, 75, 121, 66, 96, 111, 111, 110, 117, 33, 114, 98, 115, 110, 109, 109, 33, 117, 110, 33, 113, 110, 114, 104, 117, 104, 110, 111, 33, 96, 33, 77, 96, 120, 110, 116, 117, 76, 96, 111, 96, 102, 100, 115, 33, 114, 100, 117, 47, 33, 66, 96, 109, 109, 33, 114, 100, 117, 77, 96, 120, 110, 116, 117, 76, 96, 111, 96, 102, 100, 115, 33, 118, 104, 117, 105, 33, 96, 33, 111, 110, 111, 44, 111, 116, 109, 109, 33, 96, 115, 102, 116, 108, 100, 111, 117, 47, 70, 109, 34, 108, 109, 118, 34, 113, 103, 118, 78, 99, 123, 109, 119, 118, 68, 112, 109, 120, 103, 108, 34, 107, 108, 34, 110, 99, 123, 109, 119, 118, 34, 109, 112, 34, 113, 97, 112, 109, 110, 110, 102, 69, 93, 18, 86, 91, 84, 84, 87, 64, 87, 92, 70, 18, 100, 91, 87, 69, 122, 93, 94, 86, 87, 64, 65, 18, 90, 83, 68, 87, 18, 70, 90, 87, 18, 65, 83, 95, 87, 18, 65, 70, 83, 80, 94, 87, 18, 123, 118, 28, 18, 97, 70, 83, 80, 94, 87, 18, 123, 118, 65, 18, 91, 92, 18, 75, 93, 71, 64, 18, 83, 86, 83, 66, 70, 87, 
        64, 18, 127, 103, 97, 102, 18, 112, 119, 18, 71, 92, 91, 67, 71, 87, 18, 83, 92, 86, 18, 97, 122, 125, 103, 126, 118, 18, 124, 125, 102, 18, 81, 90, 83, 92, 85, 87, 28, 56, 18, 100, 91, 87, 69, 122, 93, 94, 86, 87, 64, 18, 3, 8, 47, 57, 40, 15, 63, 46, 51, 48, 48, 53, 50, 59, 8, 51, 41, 63, 52, 15, 48, 51, 44, 116, 117, 102, 124, 62, 61, 56, 124, 61, 46, 59, 41, 49, 57, 50, 40, 124, 63, 51, 50, 47, 40, 61, 50, 40, 124, 1, 35, 62, 51, 61, 52, 60, 113, 38, 57, 56, 61, 52, 113, 60, 48, 37, 50, 57, 56, 63, 54, 113, 50, 57, 48, 63, 54, 52, 53, 113, 39, 56, 52, 38, 113, 57, 62, 61, 53, 52, 35, 34, 113, 38, 56, 37, 57, 113, 37, 57, 52, 113, 63, 52, 38, 62, 63, 52, 34, 127, 113, 5, 57, 52, 113, 33, 35, 52, 124, 61, 48, 40, 62, 36, 37, 113, 56, 63, 55, 62, 35, 60, 48, 37, 56, 62, 63, 113, 55, 62, 35, 113, 37, 57, 52, 113, 50, 57, 48, 63, 54, 52, 113, 57, 62, 61, 53, 52, 35, 113, 87, 30, 4, 87, 22, 27, 5, 18, 22, 19, 14, 87, 22, 3, 3, 22, 20, 31, 18, 19, 87, 3, 24, 87, 22, 87, 37, 18, 20, 14, 20, 27, 18, 5, 33, 30, 18, 0, 77, 126, 95, 16, 92, 81, 73, 95, 69, 68, 16, 93, 81, 94, 81, 87, 85, 66, 16, 81, 68, 68, 81, 83, 88, 85, 84, 11, 16, 67, 91, 89, 64, 64, 89, 94, 87, 16, 92, 81, 73, 95, 69, 68, 30, 18, 94, 83, 75, 93, 71, 70, 8, 47, 13, 2, 2, 3, 24, 76, 10, 0, 5, 2, 11, 76, 27, 5, 24, 4, 3, 25, 24, 76, 13, 76, 32, 13, 21, 3, 25, 24, 33, 13, 2, 13, 11, 9, 30, 76, 31, 9, 24, 66, 76, 47, 13, 0, 0, 76, 31, 9, 24, 32, 13, 21, 3, 25, 24, 33, 13, 2, 13, 11, 9, 30, 76, 27, 5, 24, 4, 76, 13, 76, 2, 3, 2, 65, 2, 25, 0, 0, 76, 13, 30, 11, 25, 1, 9, 2, 24, 66, 126, 84, 126, 8, 55, 59, 41, 126, 22, 49, 50, 58, 59, 44, 126, 108, 100, 20, 53, 122, 59, 62, 59, 42, 46, 63, 40, 122, 59, 46, 46, 59, 57, 50, 63, 62, 97, 122, 41, 49, 51, 42, 42, 51, 52, 61, 122, 54, 59, 35, 53, 47, 46, 30, 26, 108, 10, 57, 32, 32, 5, 34, 58, 45, 32, 37, 40, 45, 56, 41, 3, 33, 46, 46, 47, 52, 96, 35, 33, 44, 44, 96, 52, 40, 41, 51, 96, 45, 37, 52, 40, 47, 36, 96, 41, 46, 96, 33, 96, 51, 35, 50, 47, 44, 44, 96, 35, 33, 44, 44, 34, 33, 35, 43, 110, 96, 19, 35, 50, 47, 44, 44, 96, 35, 33, 44, 44, 34, 33, 35, 43, 51, 96, 45, 41, 39, 40, 52, 34, 37, 96, 50, 53, 46, 96, 36, 53, 50, 41, 46, 39, 96, 33, 96, 45, 37, 33, 51, 53, 50, 37, 96, 102, 96, 44, 33, 57, 47, 53, 52, 96, 48, 33, 51, 51, 96, 55, 40, 37, 50, 37, 96, 57, 47, 53, 96, 35, 33, 46, 46, 47, 52, 96, 35, 40, 33, 46, 39, 37, 96, 52, 40, 37, 18, 37, 35, 57, 35, 44, 37, 50, 22, 41, 37, 55, 96, 36, 33, 52, 33, 110, 96, 1, 46, 57, 96, 45, 37, 52, 40, 47, 36, 96, 35, 33, 44, 44, 96, 52, 40, 33, 52, 96, 45, 41, 39, 40, 52, 96, 35, 40, 33, 46, 39, 37, 96, 52, 40, 37, 96, 51, 52, 50, 53, 35, 52, 53, 50, 37, 47, 38, 96, 52, 40, 37, 96, 18, 37, 35, 57, 35, 44, 37, 50, 22, 41, 37, 55, 96, 47, 50, 96, 52, 40, 37, 96, 33, 36, 33, 48, 52, 37, 50, 96, 35, 47, 46, 52, 37, 46, 52, 51, 96, 51, 40, 47, 53, 44, 36, 96, 34, 37, 96, 48, 47, 51, 52, 48, 47, 46, 37, 36, 96, 52, 47, 52, 40, 37, 96, 46, 37, 56, 52, 96, 38, 50, 33, 45, 37, 110, 115, 81, 94, 94, 95, 68, 16, 83, 81, 92, 92, 16, 68, 88, 89, 67, 16, 93, 85, 68, 88, 95, 84, 16, 71, 88, 89, 92, 85, 16, 98, 85, 83, 73, 83, 92, 85, 66, 102, 89, 85, 71, 16, 89, 67, 16, 83, 95, 93, 64, 69, 68, 89, 94, 87, 16, 81, 16, 92, 81, 73, 95, 69, 68, 16, 95, 66, 16, 67, 83, 66, 95, 92, 92, 89, 94, 87, 95, 28, 30, 17, 17, 16, 11, 95, 29, 26, 95, 25, 16, 10, 17, 27, 95, 29, 10, 11, 95, 22, 11, 95, 22, 12, 95, 17, 26, 28, 26, 12, 12, 30, 13, 6, 95, 25, 16, 13, 95, 67, 116, 114, 104, 114, 125, 116, 99, 71, 120, 116, 102, 49, 121, 112, 98, 49, 127, 126, 49, 93, 112, 104, 126, 100, 101, 92, 112, 127, 112, 118, 116, 99, 42, 7, 31, 9, 19, 18, 43, 7, 8, 7, 1, 3, 20, 70, 127, 100, 49, 55, 45, 42, 35, 100, 32, 33, 34, 37, 49, 40, 48, 100, 50, 37, 40, 49, 33};
    }

    static {
        A0M();
        A1H = new int[]{R.attr.nestedScrollingEnabled};
        A1G = new int[]{R.attr.clipToPadding};
        A1B = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        A1A = Build.VERSION.SDK_INT >= 23;
        A1C = Build.VERSION.SDK_INT >= 16;
        A1D = Build.VERSION.SDK_INT >= 21;
        A1E = Build.VERSION.SDK_INT <= 15;
        A1F = Build.VERSION.SDK_INT <= 15;
        A1I = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        A19 = new Interpolator() { // from class: com.facebook.ads.redexgen.X.7i
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
    }

    public C8H(Context context) {
        this(context, null);
    }

    public C8H(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.87] */
    public C8H(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A11 = new AbstractC03457o() { // from class: com.facebook.ads.redexgen.X.87
            @Override // com.facebook.ads.redexgen.X.AbstractC03457o
            public final void A00() {
                this.A00.A1i(null);
                this.A00.A0s.A0D = true;
                this.A00.A1J();
                if (!this.A00.A00.A0J()) {
                    this.A00.requestLayout();
                }
            }
        };
        this.A0r = new AnonymousClass85(this);
        this.A0t = new C8R();
        this.A0u = new Runnable() { // from class: com.facebook.ads.redexgen.X.7g
            @Override // java.lang.Runnable
            public final void run() {
                RunnableC03377g runnableC03377g = this;
                char c = runnableC03377g.A00.A0D ? (char) 2 : (char) 3;
                while (true) {
                    switch (c) {
                        case 2:
                            runnableC03377g = runnableC03377g;
                            if (!runnableC03377g.A00.isLayoutRequested()) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            return;
                        case 4:
                            runnableC03377g = runnableC03377g;
                            if (!runnableC03377g.A00.A0F) {
                                c = 5;
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 5:
                            runnableC03377g = runnableC03377g;
                            runnableC03377g.A00.requestLayout();
                            c = 3;
                            break;
                        case 6:
                            runnableC03377g = runnableC03377g;
                            if (!runnableC03377g.A00.A0I) {
                                c = '\b';
                                break;
                            } else {
                                c = 7;
                                break;
                            }
                        case 7:
                            runnableC03377g = runnableC03377g;
                            runnableC03377g.A00.A0J = true;
                            c = 3;
                            break;
                        case '\b':
                            runnableC03377g = runnableC03377g;
                            runnableC03377g.A00.A1C();
                            c = 3;
                            break;
                    }
                }
            }
        };
        this.A0p = new Rect();
        this.A0z = new Rect();
        this.A0q = new RectF();
        this.A0v = new ArrayList<>();
        this.A13 = new ArrayList<>();
        this.A0O = 0;
        this.A0C = false;
        this.A0U = 0;
        this.A0N = 0;
        this.A05 = new C7D();
        this.A0W = 0;
        this.A0V = -1;
        this.A0L = Float.MIN_VALUE;
        this.A0M = Float.MIN_VALUE;
        this.A0o = true;
        this.A08 = new C8F(this);
        this.A02 = A1D ? new C7G() : null;
        this.A0s = new C8D();
        this.A0G = false;
        this.A0H = false;
        this.A0f = new InterfaceC03497s() { // from class: com.facebook.ads.redexgen.X.7u
            @Override // com.facebook.ads.redexgen.X.InterfaceC03497s
            public final void A4s(C8G c8g) {
                C03517u c03517u = this;
                C8G c8g2 = null;
                c8g.A0Z(true);
                char c = c8g.A06 != null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c8g = c8g;
                            if (c8g.A07 != null) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            c8g = c8g;
                            c8g2 = null;
                            c8g.A06 = null;
                            c = 4;
                            break;
                        case 4:
                            c8g = c8g;
                            c8g.A07 = c8g2;
                            if (!c8g.A0A()) {
                                c = 5;
                                break;
                            } else {
                                c = '\b';
                                break;
                            }
                        case 5:
                            c03517u = c03517u;
                            c8g = c8g;
                            if (!c03517u.A00.A1s(c8g.A0H)) {
                                c = 6;
                                break;
                            } else {
                                c = '\b';
                                break;
                            }
                        case 6:
                            c8g = c8g;
                            if (!c8g.A0e()) {
                                c = '\b';
                                break;
                            } else {
                                c = 7;
                                break;
                            }
                        case 7:
                            c03517u = c03517u;
                            c8g = c8g;
                            c03517u.A00.removeDetachedView(c8g.A0H, false);
                            c = '\b';
                            break;
                        case '\b':
                            return;
                    }
                }
            }
        };
        this.A0K = false;
        this.A14 = new int[2];
        this.A17 = new int[2];
        this.A16 = new int[2];
        this.A15 = new int[2];
        this.A0w = new ArrayList();
        this.A0k = new Runnable() { // from class: com.facebook.ads.redexgen.X.7h
            @Override // java.lang.Runnable
            public final void run() {
                if (this.A00.A05 != null) {
                    this.A00.A05.A0D();
                }
                this.A00.A0K = false;
            }
        };
        this.A12 = new InterfaceC03407j() { // from class: com.facebook.ads.redexgen.X.7k
            @Override // com.facebook.ads.redexgen.X.InterfaceC03407j
            public final void A6d(C8G c8g, C03507t c03507t, C03507t c03507t2) {
                this.A00.A1g(c8g, c03507t, c03507t2);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03407j
            public final void A6f(C8G c8g, @NonNull C03507t c03507t, @Nullable C03507t c03507t2) {
                this.A00.A0r.A0c(c8g);
                this.A00.A1h(c8g, c03507t, c03507t2);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03407j
            public final void A6h(C8G c8g, @NonNull C03507t c03507t, @NonNull C03507t c03507t2) {
                C03417k c03417k = this;
                c8g.A0Z(false);
                char c = c03417k.A00.A0C ? (char) 2 : (char) 5;
                while (true) {
                    switch (c) {
                        case 2:
                            c03417k = c03417k;
                            c8g = c8g;
                            c03507t = c03507t;
                            c03507t2 = c03507t2;
                            if (!c03417k.A00.A05.A0L(c8g, c8g, c03507t, c03507t2)) {
                                c = 4;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            c03417k = c03417k;
                            c03417k.A00.A1G();
                            c = 4;
                            break;
                        case 4:
                            return;
                        case 5:
                            c03417k = c03417k;
                            c8g = c8g;
                            c03507t = c03507t;
                            c03507t2 = c03507t2;
                            if (!c03417k.A00.A05.A0K(c8g, c03507t, c03507t2)) {
                                c = 4;
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 6:
                            c03417k = c03417k;
                            c03417k.A00.A1G();
                            c = 4;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03407j
            public final void A7F(C8G c8g) {
                this.A00.A06.A1H(c8g.A0H, this.A00.A0r);
            }
        };
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A1G, i, 0);
            this.A0B = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.A0B = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.A0X = viewConfiguration.getScaledTouchSlop();
        this.A0L = C02995t.A00(viewConfiguration, context);
        this.A0M = C02995t.A01(viewConfiguration, context);
        this.A0y = viewConfiguration.getScaledMinimumFlingVelocity();
        this.A0x = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.A05.A0A(this.A0f);
        A0U();
        A0E();
        if (C02985s.A00(this) == 0) {
            C02985s.A09(this, 1);
        }
        this.A10 = (AccessibilityManager) getContext().getSystemService(A08(719, 13, 127));
        setAccessibilityDelegateCompat(new C8J(this));
        setDescendantFocusability(262144);
        setNestedScrollingEnabled(true);
    }

    private int A00(View view) {
        int id = view.getId();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    view = view;
                    if (!view.isFocused()) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 3:
                    view = view;
                    if (!(view instanceof ViewGroup)) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    view = view;
                    if (!view.hasFocus()) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    view = ((ViewGroup) view).getFocusedChild();
                    if (view.getId() == -1) {
                        c = 2;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    view = view;
                    id = view.getId();
                    c = 2;
                    break;
                case 7:
                    return id;
            }
        }
    }

    private final long A01(C8G c8g) {
        long jA0K = 0;
        char c = this.A04.A0G() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    jA0K = c8g.A0K();
                    c = 3;
                    break;
                case 3:
                    return jA0K;
                case 4:
                    c8g = c8g;
                    jA0K = c8g.A03;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private View A02() {
        C8H c8h = this;
        int itemCount = 0;
        int limit = 0;
        int i = 0;
        int iMin = 0;
        C8G c8gA03 = null;
        C8G c8gA032 = null;
        View view = null;
        char c = c8h.A0s.A01 != -1 ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    itemCount = c8h.A0s.A01;
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    limit = c8h.A0s.A03();
                    i = itemCount;
                    c = 4;
                    break;
                case 4:
                    if (i >= limit) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8gA032 = c8h.A03(i);
                    if (c8gA032 != null) {
                        c = '\r';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    iMin = Math.min(limit, itemCount) - 1;
                    c = 7;
                    break;
                case 7:
                    if (iMin < 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8gA03 = c8h.A03(iMin);
                    if (c8gA03 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    return view;
                case '\n':
                    c8gA03 = c8gA03;
                    if (!c8gA03.A0H.hasFocusable()) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8gA03 = c8gA03;
                    view = c8gA03.A0H;
                    c = '\t';
                    break;
                case '\f':
                    iMin--;
                    c = 7;
                    break;
                case '\r':
                    c8gA032 = c8gA032;
                    if (!c8gA032.A0H.hasFocusable()) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c8gA032 = c8gA032;
                    view = c8gA032.A0H;
                    c = '\t';
                    break;
                case 15:
                    i++;
                    c = 4;
                    break;
                case 16:
                    itemCount = 0;
                    c = 3;
                    break;
            }
        }
    }

    private final C8G A03(int i) {
        C8H c8h = this;
        C8G holder = null;
        int iA06 = 0;
        int i2 = 0;
        C8G c8g = null;
        char c = c8h.A0C ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    holder = null;
                    c = 3;
                    break;
                case 3:
                    return holder;
                case 4:
                    c8h = c8h;
                    iA06 = c8h.A01.A06();
                    c8g = null;
                    i2 = 0;
                    c = 5;
                    break;
                case 5:
                    if (i2 >= iA06) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    holder = A05(c8h.A01.A0A(i2));
                    if (holder == null) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    holder = holder;
                    if (!holder.A0c()) {
                        c = '\b';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    holder = holder;
                    if (c8h.A16(holder) != i) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    holder = holder;
                    if (!c8h.A01.A0K(holder.A0H)) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    holder = holder;
                    c8g = holder;
                    c = 11;
                    break;
                case 11:
                    i2++;
                    c = 5;
                    break;
                case '\f':
                    holder = c8g;
                    c = 3;
                    break;
            }
        }
    }

    private final C8G A04(long j) {
        C8H c8h = this;
        int i = 0;
        C8G c8gA05 = null;
        int iA06 = 0;
        C8G c8g = null;
        char c = c8h.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A04.A0G()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    c8gA05 = null;
                    c = 4;
                    break;
                case 4:
                    return c8gA05;
                case 5:
                    c8h = c8h;
                    iA06 = c8h.A01.A06();
                    c8g = null;
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    if (i >= iA06) {
                        c = '\r';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i));
                    if (c8gA05 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\t':
                    c8gA05 = c8gA05;
                    if (c8gA05.A0K() != j) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    if (!c8h.A01.A0K(c8gA05.A0H)) {
                        c = 4;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8gA05 = c8gA05;
                    c8g = c8gA05;
                    c = '\f';
                    break;
                case '\f':
                    i++;
                    c = 6;
                    break;
                case '\r':
                    c8gA05 = c8g;
                    c = 4;
                    break;
            }
        }
    }

    public static C8G A05(View view) {
        C8G c8g = null;
        char c = view == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8g = null;
                    c = 3;
                    break;
                case 3:
                    return c8g;
                case 4:
                    view = view;
                    c8g = ((C7L) view.getLayoutParams()).A00;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    private final C8G A06(View view) {
        C8H c8h = this;
        C8G c8gA1A = null;
        View viewA18 = c8h.A18(view);
        char c = viewA18 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA1A = null;
                    c = 3;
                    break;
                case 3:
                    return c8gA1A;
                case 4:
                    c8h = c8h;
                    viewA18 = viewA18;
                    c8gA1A = c8h.A1A(viewA18);
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public static C8H A07(@NonNull View child) {
        C8H descendant = null;
        int i = 0;
        int childCount = 0;
        ViewGroup viewGroup = null;
        C8H c8hA07 = null;
        char c = !(child instanceof ViewGroup) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    descendant = null;
                    c = 3;
                    break;
                case 3:
                    return descendant;
                case 4:
                    child = child;
                    if (!(child instanceof C8H)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    child = child;
                    descendant = (C8H) child;
                    c = 3;
                    break;
                case 6:
                    child = child;
                    viewGroup = (ViewGroup) child;
                    childCount = viewGroup.getChildCount();
                    i = 0;
                    c = 7;
                    break;
                case 7:
                    if (i >= childCount) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    viewGroup = viewGroup;
                    c8hA07 = A07(viewGroup.getChildAt(i));
                    if (c8hA07 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8hA07 = c8hA07;
                    descendant = c8hA07;
                    c = 3;
                    break;
                case '\n':
                    i++;
                    c = 7;
                    break;
                case 11:
                    descendant = null;
                    c = 3;
                    break;
            }
        }
    }

    private void A09() {
        A0J();
        setScrollState(0);
    }

    private void A0A() {
        C8H c8h = this;
        int i = c8h.A0P;
        c8h.A0P = 0;
        int flags = i != 0 ? 2 : 4;
        while (true) {
            switch (flags) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A1l()) {
                        flags = 4;
                        break;
                    } else {
                        flags = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    C6J.A01(accessibilityEventObtain, i);
                    c8h.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                    flags = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    private void A0B() {
        C8H c8h = this;
        C8G c8gA05 = null;
        boolean z = false;
        int iA00 = 0;
        int iA05 = 0;
        int i = 0;
        int i2 = 0;
        boolean wasHidden = false;
        C8G c8gA052 = null;
        C03507t c03507tA08 = null;
        c8h.A0s.A04(1);
        c8h.A1e(c8h.A0s);
        c8h.A0s.A0A = false;
        c8h.A1D();
        c8h.A0t.A06();
        c8h.A1E();
        c8h.A0F();
        c8h.A0K();
        C8D c8d = c8h.A0s;
        int count = c8h.A0s.A0C ? 2 : 17;
        while (true) {
            switch (count) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0H) {
                        count = 17;
                        break;
                    } else {
                        count = 3;
                        break;
                    }
                case 3:
                    z = true;
                    count = 4;
                    break;
                case 4:
                    c8h = c8h;
                    c8d = c8d;
                    c8d.A0E = z;
                    c8h.A0H = false;
                    c8h.A0G = false;
                    c8h.A0s.A09 = c8h.A0s.A0B;
                    c8h.A0s.A03 = c8h.A04.A03();
                    c8h.A0r(c8h.A14);
                    if (!c8h.A0s.A0C) {
                        count = 18;
                        break;
                    } else {
                        count = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    iA05 = c8h.A01.A05();
                    i = 0;
                    count = 6;
                    break;
                case 6:
                    if (i >= iA05) {
                        count = 18;
                        break;
                    } else {
                        count = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    c8gA052 = A05(c8h.A01.A09(i));
                    if (!c8gA052.A0h()) {
                        count = 8;
                        break;
                    } else {
                        count = 10;
                        break;
                    }
                case 8:
                    c8gA052 = c8gA052;
                    if (!c8gA052.A0b()) {
                        count = 11;
                        break;
                    } else {
                        count = 9;
                        break;
                    }
                case 9:
                    c8h = c8h;
                    if (!c8h.A04.A0G()) {
                        count = 10;
                        break;
                    } else {
                        count = 11;
                        break;
                    }
                case 10:
                    i++;
                    count = 6;
                    break;
                case 11:
                    c8h = c8h;
                    c8gA052 = c8gA052;
                    c8h.A0t.A0F(c8gA052, c8h.A05.A08(c8h.A0s, c8gA052, C7B.A00(c8gA052), c8gA052.A0L()));
                    if (!c8h.A0s.A0E) {
                        count = 10;
                        break;
                    } else {
                        count = 12;
                        break;
                    }
                case 12:
                    c8gA052 = c8gA052;
                    if (!c8gA052.A0f()) {
                        count = 10;
                        break;
                    } else {
                        count = 13;
                        break;
                    }
                case 13:
                    c8gA052 = c8gA052;
                    if (!c8gA052.A0c()) {
                        count = 14;
                        break;
                    } else {
                        count = 10;
                        break;
                    }
                case 14:
                    c8gA052 = c8gA052;
                    if (!c8gA052.A0h()) {
                        count = 15;
                        break;
                    } else {
                        count = 10;
                        break;
                    }
                case 15:
                    c8gA052 = c8gA052;
                    if (!c8gA052.A0b()) {
                        count = 16;
                        break;
                    } else {
                        count = 10;
                        break;
                    }
                case 16:
                    c8h = c8h;
                    c8gA052 = c8gA052;
                    c8h.A0t.A08(c8h.A01(c8gA052), c8gA052);
                    count = 10;
                    break;
                case 17:
                    z = false;
                    count = 4;
                    break;
                case 18:
                    c8h = c8h;
                    if (!c8h.A0s.A0B) {
                        count = 29;
                        break;
                    } else {
                        count = 19;
                        break;
                    }
                case 19:
                    c8h = c8h;
                    c8h.A0Y();
                    boolean z2 = c8h.A0s.A0D;
                    c8h.A0s.A0D = false;
                    c8h.A06.A23(c8h.A0r, c8h.A0s);
                    c8h.A0s.A0D = z2;
                    i2 = 0;
                    count = 20;
                    break;
                case 20:
                    c8h = c8h;
                    if (i2 >= c8h.A01.A05()) {
                        count = 30;
                        break;
                    } else {
                        count = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    View child = c8h.A01.A09(i2);
                    c8gA05 = A05(child);
                    if (!c8gA05.A0h()) {
                        count = 23;
                        break;
                    } else {
                        count = 22;
                        break;
                    }
                case 22:
                    i2++;
                    count = 20;
                    break;
                case 23:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    if (!c8h.A0t.A0I(c8gA05)) {
                        count = 24;
                        break;
                    } else {
                        count = 22;
                        break;
                    }
                case 24:
                    c8gA05 = c8gA05;
                    iA00 = C7B.A00(c8gA05);
                    wasHidden = c8gA05.A0k(8192);
                    if (!wasHidden) {
                        count = 25;
                        break;
                    } else {
                        count = 26;
                        break;
                    }
                case 25:
                    iA00 |= 4096;
                    count = 26;
                    break;
                case 26:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c03507tA08 = c8h.A05.A08(c8h.A0s, c8gA05, iA00, c8gA05.A0L());
                    if (!wasHidden) {
                        count = 28;
                        break;
                    } else {
                        count = 27;
                        break;
                    }
                case 27:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c03507tA08 = c03507tA08;
                    c8h.A1f(c8gA05, c03507tA08);
                    count = 22;
                    break;
                case 28:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c03507tA08 = c03507tA08;
                    c8h.A0t.A0D(c8gA05, c03507tA08);
                    count = 22;
                    break;
                case 29:
                    c8h = c8h;
                    c8h.A0N();
                    count = 31;
                    break;
                case 30:
                    c8h = c8h;
                    c8h.A0N();
                    count = 31;
                    break;
                case 31:
                    C8H c8h2 = c8h;
                    c8h2.A1F();
                    c8h2.A1k(false);
                    c8h2.A0s.A04 = 2;
                    return;
            }
        }
    }

    private void A0C() {
        C8H c8h = this;
        boolean z = false;
        c8h.A1D();
        c8h.A1E();
        c8h.A0s.A04(6);
        c8h.A00.A0G();
        c8h.A0s.A03 = c8h.A04.A03();
        c8h.A0s.A00 = 0;
        c8h.A0s.A09 = false;
        c8h.A06.A23(c8h.A0r, c8h.A0s);
        c8h.A0s.A0D = false;
        c8h.A0j = null;
        C8D c8d = c8h.A0s;
        char c = c8h.A0s.A0C ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (c8h.A05 == null) {
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
                    C8H c8h2 = c8h;
                    c8d.A0C = z;
                    c8h2.A0s.A04 = 4;
                    c8h2.A1F();
                    c8h2.A1k(false);
                    return;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private void A0D() {
        C8H c8h = this;
        C8G c8gA05 = null;
        boolean zA0H = false;
        C8G c8gA052 = null;
        int iA05 = 0;
        C03507t c03507tA03 = null;
        C03507t c03507tA07 = null;
        long jA01 = 0;
        boolean zA0H2 = false;
        C03507t c03507tA04 = null;
        boolean z = false;
        c8h.A0s.A04(4);
        c8h.A1D();
        c8h.A1E();
        c8h.A0s.A04 = 1;
        char c = c8h.A0s.A0C ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    iA05 = c8h.A01.A05() - 1;
                    c = 3;
                    break;
                case 3:
                    if (iA05 < 0) {
                        c = 15;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A09(iA05));
                    if (!c8gA05.A0h()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    iA05--;
                    c = 3;
                    break;
                case 6:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    jA01 = c8h.A01(c8gA05);
                    c03507tA07 = c8h.A05.A07(c8h.A0s, c8gA05);
                    c8gA052 = c8h.A0t.A05(jA01);
                    if (c8gA052 == null) {
                        c = 14;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8gA052 = c8gA052;
                    if (!c8gA052.A0h()) {
                        c = '\b';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8gA052 = c8gA052;
                    zA0H = c8h.A0t.A0H(c8gA052);
                    zA0H2 = c8h.A0t.A0H(c8gA05);
                    if (!zA0H) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8gA05 = c8gA05;
                    c8gA052 = c8gA052;
                    if (c8gA052 != c8gA05) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c03507tA07 = c03507tA07;
                    c8h.A0t.A0E(c8gA05, c03507tA07);
                    c = 5;
                    break;
                case 11:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c03507tA07 = c03507tA07;
                    c8gA052 = c8gA052;
                    c03507tA04 = c8h.A0t.A04(c8gA052);
                    c8h.A0t.A0E(c8gA05, c03507tA07);
                    c03507tA03 = c8h.A0t.A03(c8gA05);
                    if (c03507tA04 != null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8gA052 = c8gA052;
                    c8h.A0e(jA01, c8gA05, c8gA052);
                    c = 5;
                    break;
                case '\r':
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8gA052 = c8gA052;
                    c03507tA04 = c03507tA04;
                    c03507tA03 = c03507tA03;
                    c8h.A0n(c8gA052, c8gA05, c03507tA04, c03507tA03, zA0H, zA0H2);
                    c = 5;
                    break;
                case 14:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c03507tA07 = c03507tA07;
                    c8h.A0t.A0E(c8gA05, c03507tA07);
                    c = 5;
                    break;
                case 15:
                    c8h = c8h;
                    c8h.A0t.A0G(c8h.A12);
                    c = 16;
                    break;
                case 16:
                    c8h = c8h;
                    z = false;
                    z = false;
                    c8h.A06.A1L(c8h.A0r);
                    c8h.A0s.A05 = c8h.A0s.A03;
                    c8h.A0C = false;
                    c8h.A0s.A0C = false;
                    c8h.A0s.A0B = false;
                    c8h.A06.A09 = false;
                    if (c8h.A0r.A02 == null) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    c8h.A0r.A02.clear();
                    c = 18;
                    break;
                case 18:
                    c8h = c8h;
                    if (!c8h.A06.A08) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c8h = c8h;
                    c8h.A06.A00 = z ? 1 : 0;
                    c8h.A06.A08 = z;
                    c8h.A0r.A0O();
                    c = 20;
                    break;
                case 20:
                    c8h = c8h;
                    c8h.A06.A24(c8h.A0s);
                    c8h.A1F();
                    c8h.A1k(z);
                    c8h.A0t.A06();
                    if (!c8h.A0v(c8h.A14[z ? 1 : 0], c8h.A14[1])) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    c8h.A1U(z ? 1 : 0, z ? 1 : 0);
                    c = 22;
                    break;
                case 22:
                    C8H c8h2 = c8h;
                    c8h2.A0G();
                    c8h2.A0I();
                    return;
            }
        }
    }

    private void A0E() {
        this.A01 = new AnonymousClass70(new InterfaceC03306z() { // from class: com.facebook.ads.redexgen.X.7l
            private static byte[] A01;

            static {
                A01();
            }

            private static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_ALREADY_CREATED);
                            i4++;
                            c = 2;
                            break;
                        case 4:
                            return new String(bArrCopyOfRange);
                    }
                }
            }

            private static void A01() {
                A01 = new byte[]{40, 38, 49, 49, 42, 41, -27, 41, 42, 57, 38, 40, 45, -27, 52, 51, -27, 38, 51, -27, 38, 49, 55, 42, 38, 41, 62, -27, 41, 42, 57, 38, 40, 45, 42, 41, -27, 40, 45, 46, 49, 41, -27, -26, 4, 15, 15, 8, 7, -61, 4, 23, 23, 4, 6, 11, -61, 18, 17, -61, 4, -61, 6, 11, 12, 15, 7, -61, 26, 11, 12, 6, 11, -61, 12, 22, -61, 17, 18, 23, -61, 7, 8, 23, 4, 6, 11, 8, 7, -35, -61};
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void A2e(View view, int i, ViewGroup.LayoutParams layoutParams) {
                C8G c8gA05 = C8H.A05(view);
                char c = c8gA05 != null ? (char) 2 : (char) 6;
                while (true) {
                    switch (c) {
                        case 2:
                            c8gA05 = c8gA05;
                            if (!c8gA05.A0e()) {
                                c = 3;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 3:
                            c8gA05 = c8gA05;
                            if (!c8gA05.A0h()) {
                                c = 4;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 4:
                            throw new IllegalArgumentException(A00(43, 48, 51) + c8gA05 + this.A00.A1B());
                        case 5:
                            c8gA05 = c8gA05;
                            c8gA05.A0P();
                            c = 6;
                            break;
                        case 6:
                            this.A00.attachViewToParent(view, i, layoutParams);
                            return;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void A2x(int i) {
                C8G c8gA05 = null;
                View viewA3J = A3J(i);
                char c = viewA3J != null ? (char) 2 : (char) 7;
                while (true) {
                    switch (c) {
                        case 2:
                            viewA3J = viewA3J;
                            c8gA05 = C8H.A05(viewA3J);
                            if (c8gA05 == null) {
                                c = 7;
                                break;
                            } else {
                                c = 3;
                                break;
                            }
                        case 3:
                            c8gA05 = c8gA05;
                            if (!c8gA05.A0e()) {
                                c = 6;
                                break;
                            } else {
                                c = 4;
                                break;
                            }
                        case 4:
                            c8gA05 = c8gA05;
                            if (!c8gA05.A0h()) {
                                c = 5;
                                break;
                            } else {
                                c = 6;
                                break;
                            }
                        case 5:
                            throw new IllegalArgumentException(A00(0, 43, 85) + c8gA05 + this.A00.A1B());
                        case 6:
                            c8gA05 = c8gA05;
                            c8gA05.A0T(256);
                            c = 7;
                            break;
                        case 7:
                            this.A00.detachViewFromParent(i);
                            return;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final View A3J(int i) {
                return this.A00.getChildAt(i);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final int A3K() {
                return this.A00.getChildCount();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final C8G A3N(View view) {
                return C8H.A05(view);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final int A3s(View view) {
                return this.A00.indexOfChild(view);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void A5F(View view) {
                C8G c8gA05 = C8H.A05(view);
                if (c8gA05 == null) {
                    return;
                }
                c8gA05.A07(this.A00);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void A5h(View view) {
                C8G c8gA05 = C8H.A05(view);
                if (c8gA05 == null) {
                    return;
                }
                c8gA05.A08(this.A00);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void A6q() {
                C03427l c03427l = this;
                int iA3K = c03427l.A3K();
                int i = 0;
                int count = 2;
                while (true) {
                    switch (count) {
                        case 2:
                            if (i >= iA3K) {
                                count = 4;
                                break;
                            } else {
                                count = 3;
                                break;
                            }
                        case 3:
                            c03427l = c03427l;
                            View viewA3J = c03427l.A3J(i);
                            c03427l.A00.A1b(viewA3J);
                            viewA3J.clearAnimation();
                            i++;
                            count = 2;
                            break;
                        case 4:
                            c03427l.A00.removeAllViews();
                            return;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void A6r(int i) {
                View childAt = this.A00.getChildAt(i);
                if (childAt != null) {
                    this.A00.A1b(childAt);
                    childAt.clearAnimation();
                }
                this.A00.removeViewAt(i);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03306z
            public final void addView(View view, int i) {
                this.A00.addView(view, i);
                this.A00.A1a(view);
            }
        });
    }

    private void A0F() {
        C8H c8h = this;
        boolean z = false;
        C8D c8d = null;
        boolean z2 = false;
        C8D c8d2 = null;
        boolean z3 = true;
        char c = c8h.A0C ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A00.A0I();
                    c8h.A06.A1R(c8h);
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    if (!c8h.A0t()) {
                        c = 24;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A00.A0H();
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    if (!c8h.A0G) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (!c8h.A0H) {
                        c = 23;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = z3;
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    c8d2 = c8h.A0s;
                    if (!c8h.A0D) {
                        c = 22;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    if (c8h.A05 == null) {
                        c = 22;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    if (!c8h.A0C) {
                        c = 11;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 11:
                    if (!z) {
                        c = '\f';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    if (!c8h.A06.A09) {
                        c = 22;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    if (!c8h.A0C) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c8h = c8h;
                    if (!c8h.A04.A0G()) {
                        c = 22;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    z2 = z3;
                    c = 16;
                    break;
                case 16:
                    c8h = c8h;
                    c8d2 = c8d2;
                    c8d2.A0C = z2;
                    c8d = c8h.A0s;
                    if (!c8h.A0s.A0C) {
                        c = 21;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    if (!z) {
                        c = 21;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c8h = c8h;
                    if (!c8h.A0C) {
                        c = 19;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 19:
                    c8h = c8h;
                    if (!c8h.A0t()) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c8d.A0B = z3;
                    return;
                case 21:
                    z3 = false;
                    c = 20;
                    break;
                case 22:
                    z2 = false;
                    c = 16;
                    break;
                case 23:
                    z = false;
                    c = '\b';
                    break;
                case 24:
                    c8h = c8h;
                    c8h.A00.A0G();
                    c = 5;
                    break;
            }
        }
    }

    private void A0G() {
        C8H c8h = this;
        C8G c8gA04 = null;
        View viewA02 = null;
        View focusedChild = null;
        View viewFindViewById = null;
        char c = c8h.A0o ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    if (!c8h.hasFocus()) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    if (c8h.getDescendantFocusability() == 393216) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (c8h.getDescendantFocusability() != 131072) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (!c8h.isFocused()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    return;
                case '\b':
                    c8h = c8h;
                    if (!c8h.isFocused()) {
                        c = '\t';
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    focusedChild = c8h.getFocusedChild();
                    if (!A1F) {
                        c = 14;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    focusedChild = focusedChild;
                    if (focusedChild.getParent() == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    focusedChild = focusedChild;
                    if (!focusedChild.hasFocus()) {
                        c = '\f';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    if (c8h.A01.A05() != 0) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    c8h.requestFocus();
                    c = 7;
                    break;
                case 14:
                    c8h = c8h;
                    focusedChild = focusedChild;
                    if (!c8h.A01.A0K(focusedChild)) {
                        c = 7;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c8h = c8h;
                    c8gA04 = null;
                    if (c8h.A0s.A08 == -1) {
                        c = 18;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c8h = c8h;
                    if (!c8h.A04.A0G()) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    c8gA04 = c8h.A04(c8h.A0s.A08);
                    c = 18;
                    break;
                case 18:
                    viewA02 = null;
                    if (c8gA04 == null) {
                        c = 21;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c8h = c8h;
                    if (!c8h.A01.A0K(c8gA04.A0H)) {
                        c = 20;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 20:
                    if (!c8gA04.A0H.hasFocusable()) {
                        c = 21;
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    if (c8h.A01.A05() <= 0) {
                        c = 23;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    c8h = c8h;
                    viewA02 = c8h.A02();
                    c = 23;
                    break;
                case 23:
                    if (viewA02 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c8h = c8h;
                    if (c8h.A0s.A02 == -1) {
                        c = 28;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    c8h = c8h;
                    viewFindViewById = viewA02.findViewById(c8h.A0s.A02);
                    if (viewFindViewById == null) {
                        c = 28;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    viewFindViewById = viewFindViewById;
                    if (!viewFindViewById.isFocusable()) {
                        c = 28;
                        break;
                    } else {
                        c = 27;
                        break;
                    }
                case 27:
                    viewFindViewById = viewFindViewById;
                    viewA02 = viewFindViewById;
                    c = 28;
                    break;
                case 28:
                    viewA02.requestFocus();
                    c = 7;
                    break;
                case 29:
                    viewA02 = c8gA04.A0H;
                    c = 23;
                    break;
            }
        }
    }

    private void A0H() {
        C8H c8h = this;
        boolean zIsFinished = false;
        char c = c8h.A0a != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0a.onRelease();
                    zIsFinished = c8h.A0a.isFinished();
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    if (c8h.A0c == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0c.onRelease();
                    zIsFinished |= c8h.A0c.isFinished();
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    if (c8h.A0b == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8h.A0b.onRelease();
                    zIsFinished |= c8h.A0b.isFinished();
                    c = 7;
                    break;
                case 7:
                    c8h = c8h;
                    if (c8h.A0Z == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8h.A0Z.onRelease();
                    zIsFinished |= c8h.A0Z.isFinished();
                    c = '\t';
                    break;
                case '\t':
                    if (!zIsFinished) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    C02985s.A07(c8h);
                    c = 11;
                    break;
                case 11:
                    return;
            }
        }
    }

    private void A0I() {
        this.A0s.A08 = -1L;
        this.A0s.A01 = -1;
        this.A0s.A02 = -1;
    }

    private void A0J() {
        if (this.A0Y != null) {
            this.A0Y.clear();
        }
        A1Q(0);
        A0H();
    }

    private void A0K() {
        C8H c8h = this;
        C8D c8d = null;
        C8G c8gA06 = null;
        C8D c8d2 = null;
        long jA0K = 0;
        int iA0G = 0;
        View focusedChild = null;
        char c = c8h.A0o ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.hasFocus()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    focusedChild = c8h.getFocusedChild();
                    c = 5;
                    break;
                case 5:
                    if (focusedChild != null) {
                        c = 19;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8gA06 = null;
                    c = 7;
                    break;
                case 7:
                    if (c8gA06 != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8h.A0I();
                    c = '\t';
                    break;
                case '\t':
                    return;
                case '\n':
                    c8h = c8h;
                    c8d2 = c8h.A0s;
                    if (!c8h.A04.A0G()) {
                        c = 18;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    jA0K = c8gA06.A0K();
                    c = '\f';
                    break;
                case '\f':
                    c8h = c8h;
                    c8d2 = c8d2;
                    c8d2.A08 = jA0K;
                    c8d = c8h.A0s;
                    if (!c8h.A0C) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    iA0G = -1;
                    c = 14;
                    break;
                case 14:
                    c8h = c8h;
                    c8d = c8d;
                    c8d.A01 = iA0G;
                    c8h.A0s.A02 = c8h.A00(c8gA06.A0H);
                    c = '\t';
                    break;
                case 15:
                    if (!c8gA06.A0c()) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    iA0G = c8gA06.A01;
                    c = 14;
                    break;
                case 17:
                    iA0G = c8gA06.A0G();
                    c = 14;
                    break;
                case 18:
                    jA0K = -1;
                    c = '\f';
                    break;
                case 19:
                    c8h = c8h;
                    c8gA06 = c8h.A06(focusedChild);
                    c = 7;
                    break;
            }
        }
    }

    private void A0L() {
        this.A08.A08();
        if (this.A06 != null) {
            this.A06.A10();
        }
    }

    private final void A0N() {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA06 = c8h.A01.A06();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA06) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i));
                    if (!c8gA05.A0h()) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    c8gA05.A0M();
                    i2 = 5;
                    break;
                case 5:
                    i++;
                    i2 = 2;
                    break;
                case 6:
                    c8h.A0r.A0K();
                    return;
            }
        }
    }

    private final void A0O() {
        C8H c8h = this;
        char c = c8h.A04 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    Log.e(A08(341, 12, 39), A08(1409, 36, 98));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8h = c8h;
                    if (c8h.A06 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    Log.e(A08(341, 12, 39), A08(1251, 43, 8));
                    c = 3;
                    break;
                case 6:
                    c8h = c8h;
                    c8h.A0s.A0A = false;
                    if (c8h.A0s.A04 != 1) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    c8h.A0B();
                    c8h.A06.A1T(c8h);
                    c8h.A0C();
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    c8h.A0D();
                    c = 3;
                    break;
                case '\t':
                    c8h = c8h;
                    if (!c8h.A00.A0K()) {
                        c = '\n';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    if (c8h.A06.A0k() != c8h.getWidth()) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8h = c8h;
                    if (c8h.A06.A0a() == c8h.getHeight()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    c8h.A06.A1T(c8h);
                    c8h.A0C();
                    c = '\b';
                    break;
                case '\r':
                    c8h = c8h;
                    c8h.A06.A1T(c8h);
                    c = '\b';
                    break;
            }
        }
    }

    private final void A0P() {
        C8H c8h = this;
        C8G viewHolder = null;
        int i = 0;
        int size = c8h.A0w.size() - 1;
        int state = 2;
        while (true) {
            switch (state) {
                case 2:
                    if (size < 0) {
                        state = 8;
                        break;
                    } else {
                        state = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    viewHolder = c8h.A0w.get(size);
                    if (viewHolder.A0H.getParent() != c8h) {
                        state = 5;
                        break;
                    } else {
                        state = 4;
                        break;
                    }
                case 4:
                    viewHolder = viewHolder;
                    if (!viewHolder.A0h()) {
                        state = 6;
                        break;
                    } else {
                        state = 5;
                        break;
                    }
                case 5:
                    size--;
                    state = 2;
                    break;
                case 6:
                    viewHolder = viewHolder;
                    i = viewHolder.A02;
                    if (i == -1) {
                        state = 5;
                        break;
                    } else {
                        state = 7;
                        break;
                    }
                case 7:
                    viewHolder = viewHolder;
                    C02985s.A09(viewHolder.A0H, i);
                    viewHolder.A02 = -1;
                    state = 5;
                    break;
                case 8:
                    c8h.A0w.clear();
                    return;
            }
        }
    }

    private final void A0Q() {
        C8H c8h = this;
        char c = c8h.A0Z != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A0Z = new EdgeEffect(c8h.getContext());
                    if (!c8h.A0B) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0Z.setSize((c8h.getMeasuredWidth() - c8h.getPaddingLeft()) - c8h.getPaddingRight(), (c8h.getMeasuredHeight() - c8h.getPaddingTop()) - c8h.getPaddingBottom());
                    c = 2;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A0Z.setSize(c8h.getMeasuredWidth(), c8h.getMeasuredHeight());
                    c = 2;
                    break;
            }
        }
    }

    private final void A0R() {
        C8H c8h = this;
        char c = c8h.A0a != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A0a = new EdgeEffect(c8h.getContext());
                    if (!c8h.A0B) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0a.setSize((c8h.getMeasuredHeight() - c8h.getPaddingTop()) - c8h.getPaddingBottom(), (c8h.getMeasuredWidth() - c8h.getPaddingLeft()) - c8h.getPaddingRight());
                    c = 2;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A0a.setSize(c8h.getMeasuredHeight(), c8h.getMeasuredWidth());
                    c = 2;
                    break;
            }
        }
    }

    private final void A0S() {
        C8H c8h = this;
        char c = c8h.A0b != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A0b = new EdgeEffect(c8h.getContext());
                    if (!c8h.A0B) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0b.setSize((c8h.getMeasuredHeight() - c8h.getPaddingTop()) - c8h.getPaddingBottom(), (c8h.getMeasuredWidth() - c8h.getPaddingLeft()) - c8h.getPaddingRight());
                    c = 2;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A0b.setSize(c8h.getMeasuredHeight(), c8h.getMeasuredWidth());
                    c = 2;
                    break;
            }
        }
    }

    private final void A0T() {
        C8H c8h = this;
        char c = c8h.A0c != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A0c = new EdgeEffect(c8h.getContext());
                    if (!c8h.A0B) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0c.setSize((c8h.getMeasuredWidth() - c8h.getPaddingLeft()) - c8h.getPaddingRight(), (c8h.getMeasuredHeight() - c8h.getPaddingTop()) - c8h.getPaddingBottom());
                    c = 2;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A0c.setSize(c8h.getMeasuredWidth(), c8h.getMeasuredHeight());
                    c = 2;
                    break;
            }
        }
    }

    private final void A0U() {
        this.A00 = new C03286x(new InterfaceC03256u() { // from class: com.facebook.ads.redexgen.X.7m
            private final void A00(C03266v c03266v) {
                char c;
                C03437m c03437m = this;
                switch (c03266v.A00) {
                    case 1:
                        c = 3;
                        break;
                    case 2:
                        c = 4;
                        break;
                    case 3:
                        c = 2;
                        break;
                    case 4:
                        c = 5;
                        break;
                    case 5:
                        c = 2;
                        break;
                    case 6:
                        c = 2;
                        break;
                    case 7:
                        c = 2;
                        break;
                    case 8:
                        c = 6;
                        break;
                    default:
                        c = 2;
                        break;
                }
                while (true) {
                    switch (c) {
                        case 2:
                            return;
                        case 3:
                            c03437m = c03437m;
                            c03266v = c03266v;
                            c03437m.A00.A06.A1V(c03437m.A00, c03266v.A02, c03266v.A01);
                            c = 2;
                            break;
                        case 4:
                            c03437m = c03437m;
                            c03266v = c03266v;
                            c03437m.A00.A06.A1W(c03437m.A00, c03266v.A02, c03266v.A01);
                            c = 2;
                            break;
                        case 5:
                            c03437m = c03437m;
                            c03266v = c03266v;
                            c03437m.A00.A06.A1Y(c03437m.A00, c03266v.A02, c03266v.A01, c03266v.A03);
                            c = 2;
                            break;
                        case 6:
                            c03437m = c03437m;
                            c03266v = c03266v;
                            c03437m.A00.A06.A1X(c03437m.A00, c03266v.A02, c03266v.A01, 1);
                            c = 2;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final C8G A37(int i) {
                C03437m c03437m = this;
                C8G c8gA19 = c03437m.A00.A19(i, true);
                char c = c8gA19 == null ? (char) 2 : (char) 4;
                while (true) {
                    switch (c) {
                        case 2:
                            c8gA19 = null;
                            c = 3;
                            break;
                        case 3:
                            return c8gA19;
                        case 4:
                            c03437m = c03437m;
                            c8gA19 = c8gA19;
                            if (!c03437m.A00.A01.A0K(c8gA19.A0H)) {
                                c = 3;
                                break;
                            } else {
                                c = 5;
                                break;
                            }
                        case 5:
                            c8gA19 = null;
                            c = 3;
                            break;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A4c(int i, int i2, Object obj) {
                this.A00.A1Y(i, i2, obj);
                this.A00.A0H = true;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A4f(int i, int i2) {
                this.A00.A1V(i, i2);
                this.A00.A0G = true;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A4g(int i, int i2) {
                this.A00.A1W(i, i2);
                this.A00.A0G = true;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A4h(int i, int i2) {
                this.A00.A1Z(i, i2, true);
                this.A00.A0G = true;
                this.A00.A0s.A00 += i2;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A4i(int i, int i2) {
                this.A00.A1Z(i, i2, false);
                this.A00.A0G = true;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A5B(C03266v c03266v) {
                A00(c03266v);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC03256u
            public final void A5D(C03266v c03266v) {
                A00(c03266v);
            }
        });
    }

    private final void A0V() {
        this.A0Z = null;
        this.A0c = null;
        this.A0b = null;
        this.A0a = null;
    }

    private final void A0W() {
        C8H c8h = this;
        int iA06 = c8h.A01.A06();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA06) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    ((C7L) c8h.A01.A0A(i).getLayoutParams()).A01 = true;
                    i++;
                    i2 = 2;
                    break;
                case 4:
                    c8h.A0r.A0M();
                    return;
            }
        }
    }

    private final void A0X() {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA06 = c8h.A01.A06();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA06) {
                        i2 = 7;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i));
                    if (c8gA05 == null) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 6;
                        break;
                    }
                case 5:
                    c8gA05 = c8gA05;
                    c8gA05.A0T(6);
                    i2 = 6;
                    break;
                case 6:
                    i++;
                    i2 = 2;
                    break;
                case 7:
                    C8H c8h2 = c8h;
                    c8h2.A0W();
                    c8h2.A0r.A0N();
                    return;
            }
        }
    }

    private final void A0Y() {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA06 = c8h.A01.A06();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA06) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i));
                    if (!c8gA05.A0h()) {
                        i2 = 4;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    c8gA05.A0R();
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

    private void A0Z(float f, float f2, float f3, float f4) {
        C8H c8h = this;
        boolean z = false;
        char c = f2 < 0.0f ? (char) 2 : '\f';
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0R();
                    C03206p.A00(c8h.A0a, (-f2) / c8h.getWidth(), 1.0f - (f3 / c8h.getHeight()));
                    z = true;
                    c = 3;
                    break;
                case 3:
                    if (f4 >= 0.0f) {
                        c = '\n';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0T();
                    C03206p.A00(c8h.A0c, (-f4) / c8h.getHeight(), f / c8h.getWidth());
                    z = true;
                    c = 5;
                    break;
                case 5:
                    if (!z) {
                        c = 6;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 6:
                    if (f2 != 0.0f) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (f4 == 0.0f) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    C02985s.A07(c8h);
                    c = '\t';
                    break;
                case '\t':
                    return;
                case '\n':
                    if (f4 <= 0.0f) {
                        c = 5;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8h = c8h;
                    c8h.A0Q();
                    C03206p.A00(c8h.A0Z, f4 / c8h.getHeight(), 1.0f - (f / c8h.getWidth()));
                    z = true;
                    c = 5;
                    break;
                case '\f':
                    if (f2 <= 0.0f) {
                        c = 3;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    c8h.A0S();
                    C03206p.A00(c8h.A0b, f2 / c8h.getWidth(), f3 / c8h.getHeight());
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    private final void A0a(int i) {
        C8H c8h = this;
        int size = 0;
        char c = c8h.A06 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A06.A14(i);
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    c8h.A0b(i);
                    if (c8h.A0i == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0i.A0U(c8h, i);
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    if (c8h.A0m == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    size = c8h.A0m.size() - 1;
                    c = 7;
                    break;
                case 7:
                    if (size < 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8h.A0m.get(size).A0U(c8h, i);
                    size--;
                    c = 7;
                    break;
                case '\t':
                    return;
            }
        }
    }

    private final void A0b(int i) {
    }

    private final void A0c(int i, int i2) {
    }

    private final void A0d(int i, int i2, Interpolator interpolator) {
        C8H c8h = this;
        char c = c8h.A06 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    Log.e(A08(341, 12, 39), A08(362, 97, 109));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    i = 0;
                    c = 7;
                    break;
                case 7:
                    c8h = c8h;
                    if (!c8h.A06.A2A()) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    i2 = 0;
                    c = '\t';
                    break;
                case '\t':
                    if (i != 0) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (i2 == 0) {
                        c = 3;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8h = c8h;
                    interpolator = interpolator;
                    c8h.A08.A0D(i, i2, interpolator);
                    c = 3;
                    break;
            }
        }
    }

    private void A0e(long j, C8G c8g, C8G c8g2) {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA05 = c8h.A01.A05();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= iA05) {
                        c = '\n';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8g = c8g;
                    c8gA05 = A05(c8h.A01.A09(i));
                    if (c8gA05 != c8g) {
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
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    if (c8h.A01(c8gA05) != j) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    if (!c8h.A04.A0G()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    throw new IllegalStateException(A08(924, 130, 10) + c8gA05 + A08(1392, 17, 102) + c8g + c8h.A1B());
                case '\t':
                    throw new IllegalStateException(A08(496, TsExtractor.TS_PACKET_SIZE, 90) + c8gA05 + A08(1392, 17, 102) + c8g + c8h.A1B());
                case '\n':
                    Log.e(A08(341, 12, 39), A08(RtcEngineEvent.EvtType.EVT_TRANSPORT_QUALITY, 111, 105) + c8g2 + A08(1819, 41, 71) + c8g + c8h.A1B());
                    return;
            }
        }
    }

    private void A0f(MotionEvent motionEvent) {
        C8H c8h = this;
        int i = 0;
        int actionIndex = motionEvent.getActionIndex();
        char c = motionEvent.getPointerId(actionIndex) == c8h.A0V ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (actionIndex != 0) {
                        c = 6;
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
                    c8h = c8h;
                    motionEvent = motionEvent;
                    c8h.A0V = motionEvent.getPointerId(i);
                    int x = (int) (motionEvent.getX(i) + 0.5f);
                    c8h.A0S = x;
                    c8h.A0Q = x;
                    int y = (int) (motionEvent.getY(i) + 0.5f);
                    c8h.A0T = y;
                    c8h.A0R = y;
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    i = 0;
                    c = 4;
                    break;
            }
        }
    }

    private final void A0g(View view) {
    }

    private final void A0h(View view) {
    }

    public static void A0i(View view, Rect rect) {
        C7L c7l = (C7L) view.getLayoutParams();
        Rect rect2 = c7l.A03;
        rect.set((view.getLeft() - rect2.left) - c7l.leftMargin, (view.getTop() - rect2.top) - c7l.topMargin, view.getRight() + rect2.right + c7l.rightMargin, view.getBottom() + rect2.bottom + c7l.bottomMargin);
    }

    private void A0j(@NonNull View view, @Nullable View view2) {
        View view3 = view;
        View view4 = view2;
        C8H c8h = this;
        C7N c7n = null;
        View view5 = null;
        ViewGroup.LayoutParams layoutParams = null;
        C7L c7l = null;
        Rect rect = null;
        boolean z = false;
        boolean z2 = true;
        boolean z3 = false;
        char c = view4 != null ? (char) 2 : (char) 14;
        while (true) {
            switch (c) {
                case 2:
                    view4 = view4;
                    view5 = view4;
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    view5 = view5;
                    z3 = false;
                    c8h.A0p.set(0, 0, view5.getWidth(), view5.getHeight());
                    layoutParams = view5.getLayoutParams();
                    if (!(layoutParams instanceof C7L)) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    layoutParams = layoutParams;
                    c7l = (C7L) layoutParams;
                    if (!c7l.A01) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c7l = c7l;
                    Rect rect2 = c7l.A03;
                    c8h.A0p.left -= rect2.left;
                    c8h.A0p.right += rect2.right;
                    c8h.A0p.top -= rect2.top;
                    c8h.A0p.bottom += rect2.bottom;
                    c = 6;
                    break;
                case 6:
                    view4 = view4;
                    if (view4 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    view3 = view3;
                    view4 = view4;
                    c8h.offsetDescendantRectToMyCoords(view4, c8h.A0p);
                    c8h.offsetRectIntoDescendantCoords(view3, c8h.A0p);
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    c7n = c8h.A06;
                    rect = c8h.A0p;
                    if (!c8h.A0D) {
                        c = '\t';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\t':
                    z = z2;
                    c = '\n';
                    break;
                case '\n':
                    view4 = view4;
                    if (view4 != null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c7n.A1j(c8h, view3, rect, z, z2);
                    return;
                case '\f':
                    z2 = z3;
                    c = 11;
                    break;
                case '\r':
                    z = z3;
                    c = '\n';
                    break;
                case 14:
                    view3 = view3;
                    view5 = view3;
                    c = 3;
                    break;
            }
        }
    }

    private void A0k(AbstractC02102g abstractC02102g, boolean z, boolean z2) {
        C8H c8h = this;
        AbstractC02102g abstractC02102g2 = null;
        char c = c8h.A04 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A04.A09(c8h.A11);
                    c8h.A04.A0F(c8h);
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (!z2) {
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
                    abstractC02102g = abstractC02102g;
                    c8h.A00.A0I();
                    abstractC02102g2 = c8h.A04;
                    c8h.A04 = abstractC02102g;
                    if (abstractC02102g == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    abstractC02102g = abstractC02102g;
                    abstractC02102g.A08(c8h.A11);
                    abstractC02102g.A0E(c8h);
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    if (c8h.A06 == null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    abstractC02102g2 = abstractC02102g2;
                    c8h.A06.A1K(abstractC02102g2, c8h.A04);
                    c = '\n';
                    break;
                case '\n':
                    C8H c8h2 = c8h;
                    c8h2.A0r.A0Y(abstractC02102g2, c8h2.A04, z);
                    c8h2.A0s.A0D = true;
                    c8h2.A1J();
                    return;
            }
        }
    }

    private void A0l(C8G c8g) {
        C8H c8h = this;
        boolean z = false;
        View view = c8g.A0H;
        char c = view.getParent() == c8h ? (char) 2 : '\t';
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    c8g = c8g;
                    view = view;
                    c8h.A0r.A0c(c8h.A1A(view));
                    if (!c8g.A0e()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    view = view;
                    c8h.A01.A0H(view, -1, view.getLayoutParams(), true);
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c8h = c8h;
                    view = view;
                    c8h.A01.A0J(view, true);
                    c = 5;
                    break;
                case '\b':
                    c8h = c8h;
                    view = view;
                    c8h.A01.A0E(view);
                    c = 5;
                    break;
                case '\t':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public static void A0m(@NonNull C8G c8g) {
        C8H c8h = null;
        Object parent = null;
        char c = c8g.A09 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    c8h = c8g.A09.get();
                    c = 3;
                    break;
                case 3:
                    if (c8h == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    if (c8h != c8g.A0H) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    return;
                case 6:
                    parent = c8h.getParent();
                    if (!(parent instanceof View)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    parent = (ViewParent) parent;
                    c8h = (View) parent;
                    c = 3;
                    break;
                case '\b':
                    c8h = null;
                    c = 3;
                    break;
                case '\t':
                    c8g = c8g;
                    c8g.A09 = null;
                    c = 5;
                    break;
            }
        }
    }

    private void A0n(@NonNull C8G c8g, @NonNull C8G c8g2, @NonNull C03507t c03507t, @NonNull C03507t c03507t2, boolean z, boolean z2) {
        C8H c8h = this;
        c8g.A0Z(false);
        char c = z ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8g = c8g;
                    c8h.A0l(c8g);
                    c = 3;
                    break;
                case 3:
                    c8g = c8g;
                    c8g2 = c8g2;
                    if (c8g == c8g2) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8g2 = c8g2;
                    c8h.A0l(c8g2);
                    c = 6;
                    break;
                case 6:
                    c8h = c8h;
                    c8g = c8g;
                    c8g2 = c8g2;
                    c8g.A06 = c8g2;
                    c8h.A0l(c8g);
                    c8h.A0r.A0c(c8g);
                    c8g2.A0Z(false);
                    c8g2.A07 = c8g;
                    c = 7;
                    break;
                case 7:
                    c8h = c8h;
                    c8g = c8g;
                    c8g2 = c8g2;
                    c03507t = c03507t;
                    c03507t2 = c03507t2;
                    if (!c8h.A05.A0L(c8g, c8g2, c03507t, c03507t2)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8h.A1G();
                    c = '\t';
                    break;
                case '\t':
                    return;
            }
        }
    }

    private void A0r(int[] iArr) {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA0I = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int iA05 = c8h.A01.A05();
        int pos = iA05 == 0 ? 2 : 4;
        while (true) {
            switch (pos) {
                case 2:
                    iArr = iArr;
                    iArr[0] = -1;
                    iArr[1] = -1;
                    pos = 3;
                    break;
                case 3:
                    return;
                case 4:
                    i2 = Integer.MAX_VALUE;
                    i3 = Integer.MIN_VALUE;
                    i = 0;
                    pos = 5;
                    break;
                case 5:
                    if (i >= iA05) {
                        pos = 12;
                        break;
                    } else {
                        pos = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A09(i));
                    if (!c8gA05.A0h()) {
                        pos = 8;
                        break;
                    } else {
                        pos = 7;
                        break;
                    }
                case 7:
                    i++;
                    pos = 5;
                    break;
                case 8:
                    c8gA05 = c8gA05;
                    iA0I = c8gA05.A0I();
                    if (iA0I >= i2) {
                        pos = 10;
                        break;
                    } else {
                        pos = 9;
                        break;
                    }
                case 9:
                    i2 = iA0I;
                    pos = 10;
                    break;
                case 10:
                    if (iA0I <= i3) {
                        pos = 7;
                        break;
                    } else {
                        pos = 11;
                        break;
                    }
                case 11:
                    i3 = iA0I;
                    pos = 7;
                    break;
                case 12:
                    iArr = iArr;
                    iArr[0] = i2;
                    iArr[1] = i3;
                    pos = 3;
                    break;
            }
        }
    }

    private boolean A0s() {
        C8H c8h = this;
        C8G c8gA05 = null;
        boolean z = false;
        int iA05 = c8h.A01.A05();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA05) {
                        i2 = 6;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A09(i));
                    if (c8gA05 == null) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        i2 = 7;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    i++;
                    i2 = 2;
                    break;
                case 6:
                    z = false;
                    i2 = 9;
                    break;
                case 7:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0f()) {
                        i2 = 5;
                        break;
                    } else {
                        i2 = 8;
                        break;
                    }
                case 8:
                    z = true;
                    i2 = 9;
                    break;
                case 9:
                    return z;
            }
        }
    }

    private boolean A0t() {
        C8H c8h = this;
        boolean z = false;
        char c = c8h.A05 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A06.A2B()) {
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

    private boolean A0v(int i, int i2) {
        C8H c8h = this;
        boolean z = false;
        c8h.A0r(c8h.A14);
        char c = c8h.A14[0] == i ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (c8h.A14[1] == i2) {
                        c = 4;
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
            }
        }
    }

    private final boolean A0w(int i, int i2) {
        C8H c8h = this;
        boolean z = false;
        boolean zA2A = false;
        boolean zA29 = false;
        int i3 = 0;
        boolean z2 = false;
        int nestedScrollAxis = c8h.A06 == null ? 2 : 4;
        while (true) {
            switch (nestedScrollAxis) {
                case 2:
                    Log.e(A08(341, 12, 39), A08(1303, 89, 84));
                    nestedScrollAxis = 3;
                    break;
                case 3:
                    return z2;
                case 4:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        nestedScrollAxis = 5;
                        break;
                    } else {
                        nestedScrollAxis = 3;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    zA29 = c8h.A06.A29();
                    zA2A = c8h.A06.A2A();
                    if (!zA29) {
                        nestedScrollAxis = 7;
                        break;
                    } else {
                        nestedScrollAxis = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    int iAbs = Math.abs(i);
                    int nestedScrollAxis2 = c8h.A0y;
                    if (iAbs >= nestedScrollAxis2) {
                        nestedScrollAxis = 8;
                        break;
                    } else {
                        nestedScrollAxis = 7;
                        break;
                    }
                case 7:
                    i = 0;
                    nestedScrollAxis = 8;
                    break;
                case 8:
                    if (!zA2A) {
                        nestedScrollAxis = 10;
                        break;
                    } else {
                        nestedScrollAxis = 9;
                        break;
                    }
                case 9:
                    c8h = c8h;
                    int iAbs2 = Math.abs(i2);
                    int nestedScrollAxis3 = c8h.A0y;
                    if (iAbs2 >= nestedScrollAxis3) {
                        nestedScrollAxis = 11;
                        break;
                    } else {
                        nestedScrollAxis = 10;
                        break;
                    }
                case 10:
                    i2 = 0;
                    nestedScrollAxis = 11;
                    break;
                case 11:
                    if (i != 0) {
                        nestedScrollAxis = 13;
                        break;
                    } else {
                        nestedScrollAxis = 12;
                        break;
                    }
                case 12:
                    if (i2 == 0) {
                        nestedScrollAxis = 3;
                        break;
                    } else {
                        nestedScrollAxis = 13;
                        break;
                    }
                case 13:
                    c8h = c8h;
                    if (!c8h.dispatchNestedPreFling(i, i2)) {
                        nestedScrollAxis = 14;
                        break;
                    } else {
                        nestedScrollAxis = 3;
                        break;
                    }
                case 14:
                    if (!zA29) {
                        nestedScrollAxis = 15;
                        break;
                    } else {
                        nestedScrollAxis = 16;
                        break;
                    }
                case 15:
                    if (!zA2A) {
                        nestedScrollAxis = 20;
                        break;
                    } else {
                        nestedScrollAxis = 16;
                        break;
                    }
                case 16:
                    z = true;
                    nestedScrollAxis = 17;
                    break;
                case 17:
                    c8h = c8h;
                    c8h.dispatchNestedFling(i, i2, z);
                    if (c8h.A0g == null) {
                        nestedScrollAxis = 21;
                        break;
                    } else {
                        nestedScrollAxis = 18;
                        break;
                    }
                case 18:
                    c8h = c8h;
                    if (!c8h.A0g.A06(i, i2)) {
                        nestedScrollAxis = 21;
                        break;
                    } else {
                        nestedScrollAxis = 19;
                        break;
                    }
                case 19:
                    z2 = true;
                    nestedScrollAxis = 3;
                    break;
                case 20:
                    z2 = false;
                    z = false;
                    nestedScrollAxis = 17;
                    break;
                case 21:
                    if (!z) {
                        nestedScrollAxis = 3;
                        break;
                    } else {
                        nestedScrollAxis = 22;
                        break;
                    }
                case 22:
                    i3 = 0;
                    if (!zA29) {
                        nestedScrollAxis = 24;
                        break;
                    } else {
                        nestedScrollAxis = 23;
                        break;
                    }
                case 23:
                    i3 = 0 | 1;
                    nestedScrollAxis = 24;
                    break;
                case 24:
                    if (!zA2A) {
                        nestedScrollAxis = 26;
                        break;
                    } else {
                        nestedScrollAxis = 25;
                        break;
                    }
                case 25:
                    i3 |= 2;
                    nestedScrollAxis = 26;
                    break;
                case 26:
                    c8h = c8h;
                    c8h.A1p(i3, 1);
                    c8h.A08.A09(Math.max(-c8h.A0x, Math.min(i, c8h.A0x)), Math.max(-c8h.A0x, Math.min(i2, c8h.A0x)));
                    z2 = true;
                    nestedScrollAxis = 3;
                    break;
            }
        }
    }

    private final boolean A0x(int i, int i2, MotionEvent motionEvent) {
        C8H c8h = this;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        int iA1m = 0;
        int iA1n = 0;
        c8h.A1C();
        int i5 = c8h.A04 != null ? 2 : 7;
        while (true) {
            switch (i5) {
                case 2:
                    c8h = c8h;
                    c8h.A1D();
                    c8h.A1E();
                    C02804y.A01(A08(353, 9, 18));
                    c8h.A1e(c8h.A0s);
                    if (i == 0) {
                        i5 = 4;
                        break;
                    } else {
                        i5 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    iA1m = c8h.A06.A1m(i, c8h.A0r, c8h.A0s);
                    i3 = i - iA1m;
                    i5 = 4;
                    break;
                case 4:
                    if (i2 == 0) {
                        i5 = 6;
                        break;
                    } else {
                        i5 = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    iA1n = c8h.A06.A1n(i2, c8h.A0r, c8h.A0s);
                    i4 = i2 - iA1n;
                    i5 = 6;
                    break;
                case 6:
                    c8h = c8h;
                    z = false;
                    C02804y.A00();
                    c8h.A1I();
                    c8h.A1F();
                    c8h.A1k(false);
                    i5 = 7;
                    break;
                case 7:
                    c8h = c8h;
                    if (!c8h.A0v.isEmpty()) {
                        i5 = 8;
                        break;
                    } else {
                        i5 = 9;
                        break;
                    }
                case 8:
                    c8h = c8h;
                    c8h.invalidate();
                    i5 = 9;
                    break;
                case 9:
                    c8h = c8h;
                    if (!c8h.A1q(iA1m, iA1n, i3, i4, c8h.A17, z ? 1 : 0)) {
                        i5 = 22;
                        break;
                    } else {
                        i5 = 10;
                        break;
                    }
                case 10:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    c8h.A0S -= c8h.A17[z ? 1 : 0];
                    c8h.A0T -= c8h.A17[1];
                    if (motionEvent == null) {
                        i5 = 12;
                        break;
                    } else {
                        i5 = 11;
                        break;
                    }
                case 11:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    motionEvent.offsetLocation(c8h.A17[z ? 1 : 0], c8h.A17[1]);
                    i5 = 12;
                    break;
                case 12:
                    c8h = c8h;
                    int[] iArr = c8h.A15;
                    iArr[z ? 1 : 0] = iArr[z ? 1 : 0] + c8h.A17[z ? 1 : 0];
                    int[] iArr2 = c8h.A15;
                    iArr2[1] = iArr2[1] + c8h.A17[1];
                    i5 = 13;
                    break;
                case 13:
                    if (iA1m != 0) {
                        i5 = 15;
                        break;
                    } else {
                        i5 = 14;
                        break;
                    }
                case 14:
                    if (iA1n == 0) {
                        i5 = 16;
                        break;
                    } else {
                        i5 = 15;
                        break;
                    }
                case 15:
                    c8h = c8h;
                    c8h.A1U(iA1m, iA1n);
                    i5 = 16;
                    break;
                case 16:
                    c8h = c8h;
                    if (!c8h.awakenScrollBars()) {
                        i5 = 17;
                        break;
                    } else {
                        i5 = 18;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    c8h.invalidate();
                    i5 = 18;
                    break;
                case 18:
                    if (iA1m != 0) {
                        i5 = 20;
                        break;
                    } else {
                        i5 = 19;
                        break;
                    }
                case 19:
                    if (iA1n == 0) {
                        i5 = 21;
                        break;
                    } else {
                        i5 = 20;
                        break;
                    }
                case 20:
                    z = true;
                    i5 = 21;
                    break;
                case 21:
                    return z;
                case 22:
                    c8h = c8h;
                    if (c8h.getOverScrollMode() == 2) {
                        i5 = 13;
                        break;
                    } else {
                        i5 = 23;
                        break;
                    }
                case 23:
                    motionEvent = motionEvent;
                    if (motionEvent == null) {
                        i5 = 26;
                        break;
                    } else {
                        i5 = 24;
                        break;
                    }
                case 24:
                    motionEvent = motionEvent;
                    if (!C5N.A00(motionEvent, FragmentTransaction.TRANSIT_FRAGMENT_CLOSE)) {
                        i5 = 25;
                        break;
                    } else {
                        i5 = 26;
                        break;
                    }
                case 25:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    c8h.A0Z(motionEvent.getX(), i3, motionEvent.getY(), i4);
                    i5 = 26;
                    break;
                case 26:
                    c8h = c8h;
                    c8h.A1S(i, i2);
                    i5 = 13;
                    break;
            }
        }
    }

    private boolean A0y(MotionEvent motionEvent) {
        C8H c8h = this;
        AnonymousClass81 anonymousClass81 = null;
        int size = 0;
        int i = 0;
        boolean z = true;
        int action = motionEvent.getAction();
        char c = c8h.A0h != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (action != 0) {
                        c = '\f';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A0h = null;
                    c = 4;
                    break;
                case 4:
                    if (action == 0) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    size = c8h.A13.size();
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    if (i >= size) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    anonymousClass81 = c8h.A13.get(i);
                    if (!anonymousClass81.onInterceptTouchEvent(c8h, motionEvent)) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    anonymousClass81 = anonymousClass81;
                    c8h.A0h = anonymousClass81;
                    c = '\t';
                    break;
                case '\t':
                    return z;
                case '\n':
                    i++;
                    c = 6;
                    break;
                case 11:
                    z = false;
                    c = '\t';
                    break;
                case '\f':
                    c8h = c8h;
                    motionEvent = motionEvent;
                    c8h.A0h.onTouchEvent(c8h, motionEvent);
                    if (action == 3) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    if (action != z) {
                        c = '\t';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c8h = c8h;
                    c8h.A0h = null;
                    c = '\t';
                    break;
            }
        }
    }

    private boolean A0z(MotionEvent motionEvent) {
        C8H c8h = this;
        int size = 0;
        boolean z = false;
        int i = 0;
        AnonymousClass81 anonymousClass81 = null;
        int action = motionEvent.getAction();
        char c = action != 3 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (action != 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A0h = null;
                    c = 4;
                    break;
                case 4:
                    c8h = c8h;
                    size = c8h.A13.size();
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    if (i >= size) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    anonymousClass81 = c8h.A13.get(i);
                    if (!anonymousClass81.onInterceptTouchEvent(c8h, motionEvent)) {
                        c = '\n';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (action == 3) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    anonymousClass81 = anonymousClass81;
                    c8h.A0h = anonymousClass81;
                    z = true;
                    c = '\t';
                    break;
                case '\t':
                    return z;
                case '\n':
                    i++;
                    c = 5;
                    break;
                case 11:
                    z = false;
                    c = '\t';
                    break;
            }
        }
    }

    private boolean A10(View view, View view2, int i) {
        C8H c8h = this;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean zA11 = true;
        char c = view2 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    view2 = view2;
                    if (view2 != c8h) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z2 = false;
                    zA11 = false;
                    c = 4;
                    break;
                case 4:
                    return zA11;
                case 5:
                    view = view;
                    if (view == null) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (i == 2) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i != zA11) {
                        c = 20;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    if (c8h.A06.A0d() != zA11) {
                        c = 18;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z = zA11;
                    c = '\n';
                    break;
                case '\n':
                    if (i != 2) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    z2 = zA11;
                    c = '\f';
                    break;
                case '\f':
                    if (!(z2 ^ z)) {
                        c = 17;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    i2 = 66;
                    c = 14;
                    break;
                case 14:
                    c8h = c8h;
                    view = view;
                    view2 = view2;
                    if (!c8h.A11(view, view2, i2)) {
                        c = 15;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 15:
                    if (i != 2) {
                        c = 19;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c8h = c8h;
                    view = view;
                    view2 = view2;
                    zA11 = c8h.A11(view, view2, 130);
                    c = 4;
                    break;
                case 17:
                    i2 = 17;
                    c = 14;
                    break;
                case 18:
                    z2 = false;
                    z = false;
                    c = '\n';
                    break;
                case 19:
                    c8h = c8h;
                    view = view;
                    view2 = view2;
                    zA11 = c8h.A11(view, view2, 33);
                    c = 4;
                    break;
                case 20:
                    c8h = c8h;
                    view = view;
                    view2 = view2;
                    zA11 = c8h.A11(view, view2, i);
                    c = 4;
                    break;
            }
        }
    }

    private boolean A11(View view, View view2, int i) {
        char c;
        C8H c8h = this;
        boolean z = true;
        c8h.A0p.set(0, 0, view.getWidth(), view.getHeight());
        c8h.A0z.set(0, 0, view2.getWidth(), view2.getHeight());
        c8h.offsetDescendantRectToMyCoords(view, c8h.A0p);
        c8h.offsetDescendantRectToMyCoords(view2, c8h.A0z);
        switch (i) {
            case 17:
                c = 15;
                break;
            case 33:
                c = 7;
                break;
            case 66:
                c = 11;
                break;
            case 130:
                c = 3;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A08(459, 37, 69) + i + c8h.A1B());
                case 3:
                    c8h = c8h;
                    if (c8h.A0p.top < c8h.A0z.top) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    if (c8h.A0p.bottom > c8h.A0z.top) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (c8h.A0p.bottom < c8h.A0z.bottom) {
                        c = 18;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = false;
                    c = 18;
                    break;
                case 7:
                    c8h = c8h;
                    if (c8h.A0p.bottom > c8h.A0z.bottom) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    if (c8h.A0p.top < c8h.A0z.bottom) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    if (c8h.A0p.top > c8h.A0z.top) {
                        c = 18;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    z = false;
                    c = 18;
                    break;
                case 11:
                    c8h = c8h;
                    if (c8h.A0p.left < c8h.A0z.left) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    if (c8h.A0p.right > c8h.A0z.left) {
                        c = 14;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    if (c8h.A0p.right < c8h.A0z.right) {
                        c = 18;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    z = false;
                    c = 18;
                    break;
                case 15:
                    c8h = c8h;
                    if (c8h.A0p.right > c8h.A0z.right) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c8h = c8h;
                    if (c8h.A0p.left < c8h.A0z.right) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    if (c8h.A0p.left <= c8h.A0z.left) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    return z;
                case 19:
                    z = false;
                    c = 18;
                    break;
            }
        }
    }

    private final boolean A12(AccessibilityEvent accessibilityEvent) {
        C8H c8h = this;
        boolean z = false;
        int iA00 = 0;
        char c = c8h.A1n() ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    accessibilityEvent = accessibilityEvent;
                    iA00 = 0;
                    if (accessibilityEvent == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    accessibilityEvent = accessibilityEvent;
                    iA00 = C6J.A00(accessibilityEvent);
                    c = 4;
                    break;
                case 4:
                    if (iA00 != 0) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    iA00 = 0;
                    c = 6;
                    break;
                case 6:
                    c8h = c8h;
                    c8h.A0P |= iA00;
                    z = true;
                    c = 7;
                    break;
                case 7:
                    return z;
                case '\b':
                    z = false;
                    c = 7;
                    break;
            }
        }
    }

    public final int A15(View view) {
        int iA0I = 0;
        C8G c8gA05 = A05(view);
        char c = c8gA05 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    iA0I = c8gA05.A0I();
                    c = 3;
                    break;
                case 3:
                    return iA0I;
                case 4:
                    iA0I = -1;
                    c = 3;
                    break;
            }
        }
    }

    public final int A16(C8G c8g) {
        C8H c8h = this;
        int iA0E = 0;
        char c = !c8g.A0k(524) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (!c8g.A0a()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    iA0E = -1;
                    c = 4;
                    break;
                case 4:
                    return iA0E;
                case 5:
                    c8h = c8h;
                    c8g = c8g;
                    iA0E = c8h.A00.A0E(c8g.A03);
                    c = 4;
                    break;
            }
        }
    }

    public final Rect A17(View view) {
        C8H c8h = this;
        Rect rect = null;
        int i = 0;
        int size = 0;
        boolean z = false;
        C7L c7l = (C7L) view.getLayoutParams();
        char c = !c7l.A01 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7l = c7l;
                    rect = c7l.A03;
                    c = 3;
                    break;
                case 3:
                    return rect;
                case 4:
                    c8h = c8h;
                    if (!c8h.A0s.A07()) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c7l = c7l;
                    if (!c7l.A01()) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    c7l = c7l;
                    if (!c7l.A03()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c7l = c7l;
                    rect = c7l.A03;
                    c = 3;
                    break;
                case '\b':
                    c8h = c8h;
                    c7l = c7l;
                    z = false;
                    rect = c7l.A03;
                    rect.set(0, 0, 0, 0);
                    size = c8h.A0v.size();
                    i = 0;
                    c = '\t';
                    break;
                case '\t':
                    if (i >= size) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    view = view;
                    rect = rect;
                    c8h.A0p.set(z ? 1 : 0, z ? 1 : 0, z ? 1 : 0, z ? 1 : 0);
                    c8h.A0v.get(i).A05(c8h.A0p, view, c8h, c8h.A0s);
                    rect.left += c8h.A0p.left;
                    rect.top += c8h.A0p.top;
                    rect.right += c8h.A0p.right;
                    rect.bottom += c8h.A0p.bottom;
                    i++;
                    c = '\t';
                    break;
                case 11:
                    c7l = c7l;
                    c7l.A01 = z;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public final View A18(View view) {
        Object obj = this;
        Object parent = view.getParent();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    parent = (ViewParent) parent;
                    if (parent == null) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    obj = (C8H) obj;
                    parent = (ViewParent) parent;
                    if (parent == obj) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    parent = (ViewParent) parent;
                    if (!(parent instanceof View)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    view = (View) ((ViewParent) parent);
                    parent = view.getParent();
                    c = 2;
                    break;
                case 6:
                    obj = (C8H) obj;
                    parent = (ViewParent) parent;
                    if (parent != obj) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    return view;
                case '\b':
                    view = null;
                    c = 7;
                    break;
            }
        }
    }

    public final C8G A19(int i, boolean z) {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA06 = c8h.A01.A06();
        C8G c8g = null;
        int i2 = 0;
        int i3 = 2;
        while (true) {
            switch (i3) {
                case 2:
                    if (i2 >= iA06) {
                        i3 = 11;
                        break;
                    } else {
                        i3 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i2));
                    if (c8gA05 == null) {
                        i3 = 7;
                        break;
                    } else {
                        i3 = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0c()) {
                        i3 = 5;
                        break;
                    } else {
                        i3 = 7;
                        break;
                    }
                case 5:
                    if (!z) {
                        i3 = 8;
                        break;
                    } else {
                        i3 = 6;
                        break;
                    }
                case 6:
                    c8gA05 = c8gA05;
                    if (c8gA05.A03 == i) {
                        i3 = 9;
                        break;
                    } else {
                        i3 = 7;
                        break;
                    }
                case 7:
                    i2++;
                    i3 = 2;
                    break;
                case 8:
                    c8gA05 = c8gA05;
                    if (c8gA05.A0I() != i) {
                        i3 = 7;
                        break;
                    } else {
                        i3 = 9;
                        break;
                    }
                case 9:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    if (!c8h.A01.A0K(c8gA05.A0H)) {
                        i3 = 12;
                        break;
                    } else {
                        i3 = 10;
                        break;
                    }
                case 10:
                    c8gA05 = c8gA05;
                    c8g = c8gA05;
                    i3 = 7;
                    break;
                case 11:
                    c8gA05 = c8g;
                    i3 = 12;
                    break;
                case 12:
                    return c8gA05;
            }
        }
    }

    public final C8G A1A(View view) {
        ViewParent parent = this;
        ViewParent parent2 = view.getParent();
        char c = parent2 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    parent = (C8H) parent;
                    parent2 = parent2;
                    if (parent2 == parent) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalArgumentException(A08(704, 5, 13) + view + A08(46, 26, 112) + ((C8H) parent));
                case 4:
                    return A05(view);
            }
        }
    }

    public final String A1B() {
        return A08(787, 1, 97) + super.toString() + A08(709, 10, 123) + this.A04 + A08(1294, 9, 10) + this.A06 + A08(732, 10, 72) + getContext();
    }

    public final void A1C() {
        C8H c8h = this;
        char c = c8h.A0D ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0C) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    C02804y.A01(A08(1445, 17, 116));
                    c8h.A0O();
                    C02804y.A00();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c8h = c8h;
                    if (!c8h.A00.A0J()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (!c8h.A00.A0L(4)) {
                        c = '\r';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    if (!c8h.A00.A0L(11)) {
                        c = '\b';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    C02804y.A01(A08(684, 20, 69));
                    c8h.A1D();
                    c8h.A1E();
                    c8h.A00.A0H();
                    if (!c8h.A0J) {
                        c = '\t';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    if (!c8h.A0s()) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    c8h.A0O();
                    c = 11;
                    break;
                case 11:
                    c8h = c8h;
                    c8h.A1k(true);
                    c8h.A1F();
                    C02804y.A00();
                    c = 4;
                    break;
                case '\f':
                    c8h = c8h;
                    c8h.A00.A0F();
                    c = 11;
                    break;
                case '\r':
                    c8h = c8h;
                    if (!c8h.A00.A0J()) {
                        c = 4;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c8h = c8h;
                    C02804y.A01(A08(1445, 17, 116));
                    c8h.A0O();
                    C02804y.A00();
                    c = 4;
                    break;
            }
        }
    }

    public final void A1D() {
        C8H c8h = this;
        c8h.A0O++;
        char c = c8h.A0O == 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A0J = false;
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A1E() {
        this.A0U++;
    }

    public final void A1F() {
        A1j(true);
    }

    public final void A1G() {
        C8H c8h = this;
        char c = !c8h.A0K ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0F) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    C02985s.A0C(c8h, c8h.A0k);
                    c8h.A0K = true;
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A1H() {
        C8H c8h = this;
        char c = c8h.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A05.A0C();
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    if (c8h.A06 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A06.A1N(c8h.A0r);
                    c8h.A06.A1L(c8h.A0r);
                    c = 5;
                    break;
                case 5:
                    c8h.A0r.A0P();
                    return;
            }
        }
    }

    public final void A1I() {
        C8H c8h = this;
        int left = 0;
        View shadowingView = null;
        C8G c8gA1A = null;
        View view = null;
        int left2 = 0;
        int iA05 = c8h.A01.A05();
        int i = 0;
        int i2 = 2;
        while (true) {
            switch (i2) {
                case 2:
                    if (i >= iA05) {
                        i2 = 9;
                        break;
                    } else {
                        i2 = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    shadowingView = c8h.A01.A09(i);
                    c8gA1A = c8h.A1A(shadowingView);
                    if (c8gA1A == null) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 4;
                        break;
                    }
                case 4:
                    c8gA1A = c8gA1A;
                    if (c8gA1A.A07 == null) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 5;
                        break;
                    }
                case 5:
                    shadowingView = shadowingView;
                    c8gA1A = c8gA1A;
                    view = c8gA1A.A07.A0H;
                    left2 = shadowingView.getLeft();
                    left = shadowingView.getTop();
                    if (left2 != view.getLeft()) {
                        i2 = 7;
                        break;
                    } else {
                        i2 = 6;
                        break;
                    }
                case 6:
                    view = view;
                    if (left == view.getTop()) {
                        i2 = 8;
                        break;
                    } else {
                        i2 = 7;
                        break;
                    }
                case 7:
                    view = view;
                    view.layout(left2, left, view.getWidth() + left2, view.getHeight() + left);
                    i2 = 8;
                    break;
                case 8:
                    i++;
                    i2 = 2;
                    break;
                case 9:
                    return;
            }
        }
    }

    public final void A1J() {
        this.A0C = true;
        A0X();
    }

    public final void A1K() {
        setScrollState(0);
        A0L();
    }

    public final void A1L(int i) {
        if (this.A06 == null) {
            return;
        }
        this.A06.A1y(i);
        awakenScrollBars();
    }

    public final void A1M(int i) {
        C8H c8h = this;
        int iA05 = c8h.A01.A05();
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= iA05) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A01.A09(i2).offsetLeftAndRight(i);
                    i2++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A1N(int i) {
        C8H c8h = this;
        int iA05 = c8h.A01.A05();
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= iA05) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A01.A09(i2).offsetTopAndBottom(i);
                    i2++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A1O(int i) {
        C8H c8h = this;
        char c = c8h.A0I ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A1K();
                    if (c8h.A06 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    Log.e(A08(341, 12, 39), A08(788, 94, 57));
                    c = 2;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A06.A1y(i);
                    c8h.awakenScrollBars();
                    c = 2;
                    break;
            }
        }
    }

    public final void A1P(int i) {
        C8H c8h = this;
        char c = c8h.A0I ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    if (c8h.A06 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    Log.e(A08(341, 12, 39), A08(362, 97, 109));
                    c = 2;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A06.A26(c8h, c8h.A0s, i);
                    c = 2;
                    break;
            }
        }
    }

    public final void A1Q(int i) {
        getScrollingChildHelper().A03(i);
    }

    public final void A1R(int i, int i2) {
        C8H c8h = this;
        char c = i < 0 ? (char) 2 : (char) 11;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0R();
                    c8h.A0a.onAbsorb(-i);
                    c = 3;
                    break;
                case 3:
                    if (i2 >= 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0T();
                    c8h.A0c.onAbsorb(-i2);
                    c = 5;
                    break;
                case 5:
                    if (i != 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (i2 == 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    C02985s.A07(c8h);
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    if (i2 <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    c8h.A0Q();
                    c8h.A0Z.onAbsorb(i2);
                    c = 5;
                    break;
                case 11:
                    if (i <= 0) {
                        c = 3;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    c8h.A0S();
                    c8h.A0b.onAbsorb(i);
                    c = 3;
                    break;
            }
        }
    }

    public final void A1S(int i, int i2) {
        C8H c8h = this;
        boolean zIsFinished = false;
        char c = c8h.A0a != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0a.isFinished()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    if (i <= 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0a.onRelease();
                    zIsFinished = c8h.A0a.isFinished();
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    if (c8h.A0b == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (!c8h.A0b.isFinished()) {
                        c = 7;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 7:
                    if (i >= 0) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    c8h.A0b.onRelease();
                    zIsFinished |= c8h.A0b.isFinished();
                    c = '\t';
                    break;
                case '\t':
                    c8h = c8h;
                    if (c8h.A0c == null) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    if (!c8h.A0c.isFinished()) {
                        c = 11;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case 11:
                    if (i2 <= 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    c8h.A0c.onRelease();
                    zIsFinished |= c8h.A0c.isFinished();
                    c = '\r';
                    break;
                case '\r':
                    c8h = c8h;
                    if (c8h.A0Z == null) {
                        c = 17;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c8h = c8h;
                    if (!c8h.A0Z.isFinished()) {
                        c = 15;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 15:
                    if (i2 >= 0) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c8h = c8h;
                    c8h.A0Z.onRelease();
                    zIsFinished |= c8h.A0Z.isFinished();
                    c = 17;
                    break;
                case 17:
                    if (!zIsFinished) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c8h = c8h;
                    C02985s.A07(c8h);
                    c = 19;
                    break;
                case 19:
                    return;
            }
        }
    }

    public final void A1T(int i, int i2) {
        setMeasuredDimension(C7N.A00(i, getPaddingLeft() + getPaddingRight(), C02985s.A03(this)), C7N.A00(i2, getPaddingTop() + getPaddingBottom(), C02985s.A02(this)));
    }

    public final void A1U(int scrollX, int scrollY) {
        C8H c8h = this;
        int size = 0;
        c8h.A0N++;
        int scrollX2 = c8h.getScrollX();
        int scrollY2 = c8h.getScrollY();
        c8h.onScrollChanged(scrollX2, scrollY2, scrollX2, scrollY2);
        c8h.A0c(scrollX, scrollY);
        char c = c8h.A0i != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0i.A0V(c8h, scrollX, scrollY);
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    if (c8h.A0m == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    size = c8h.A0m.size() - 1;
                    c = 5;
                    break;
                case 5:
                    if (size < 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8h.A0m.get(size).A0V(c8h, scrollX, scrollY);
                    size--;
                    c = 5;
                    break;
                case 7:
                    C8H c8h2 = c8h;
                    c8h2.A0N--;
                    return;
            }
        }
    }

    public final void A1V(int i, int i2) {
        C8H c8h = this;
        C8G c8gA05 = null;
        int iA06 = c8h.A01.A06();
        int i3 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i3 >= iA06) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i3));
                    if (c8gA05 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    c8gA05 = c8gA05;
                    if (c8gA05.A03 < i) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8gA05.A0W(i2, false);
                    c8h.A0s.A0D = true;
                    c = 7;
                    break;
                case 7:
                    i3++;
                    c = 2;
                    break;
                case '\b':
                    C8H c8h2 = c8h;
                    c8h2.A0r.A0R(i, i2);
                    c8h2.requestLayout();
                    return;
            }
        }
    }

    public final void A1W(int end, int i) {
        C8H c8h = this;
        C8G c8gA05 = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int iA06 = c8h.A01.A06();
        int start = end < i ? 2 : 13;
        while (true) {
            switch (start) {
                case 2:
                    i3 = end;
                    i4 = i;
                    i5 = -1;
                    start = 3;
                    break;
                case 3:
                    i2 = 0;
                    start = 4;
                    break;
                case 4:
                    if (i2 >= iA06) {
                        start = 14;
                        break;
                    } else {
                        start = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i2));
                    if (c8gA05 == null) {
                        start = 8;
                        break;
                    } else {
                        start = 6;
                        break;
                    }
                case 6:
                    c8gA05 = c8gA05;
                    int start2 = c8gA05.A03;
                    if (start2 < i3) {
                        start = 8;
                        break;
                    } else {
                        start = 7;
                        break;
                    }
                case 7:
                    c8gA05 = c8gA05;
                    if (c8gA05.A03 <= i4) {
                        start = 9;
                        break;
                    } else {
                        start = 8;
                        break;
                    }
                case 8:
                    i2++;
                    start = 4;
                    break;
                case 9:
                    c8gA05 = c8gA05;
                    if (c8gA05.A03 != end) {
                        start = 12;
                        break;
                    } else {
                        start = 10;
                        break;
                    }
                case 10:
                    c8gA05 = c8gA05;
                    c8gA05.A0W(i - end, false);
                    start = 11;
                    break;
                case 11:
                    c8h = c8h;
                    c8h.A0s.A0D = true;
                    start = 8;
                    break;
                case 12:
                    c8gA05 = c8gA05;
                    c8gA05.A0W(i5, false);
                    start = 11;
                    break;
                case 13:
                    i3 = i;
                    i4 = end;
                    i5 = 1;
                    start = 3;
                    break;
                case 14:
                    C8H c8h2 = c8h;
                    c8h2.A0r.A0S(end, i);
                    c8h2.requestLayout();
                    return;
            }
        }
    }

    public final void A1X(int i, int i2) {
        A0d(i, i2, null);
    }

    public final void A1Y(int childCount, int i, Object obj) {
        C8H c8h = this;
        C8G c8gA05 = null;
        View viewA0A = null;
        int iA06 = c8h.A01.A06();
        int i2 = childCount + i;
        int i3 = 0;
        int positionEnd = 2;
        while (true) {
            switch (positionEnd) {
                case 2:
                    if (i3 >= iA06) {
                        positionEnd = 9;
                        break;
                    } else {
                        positionEnd = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    viewA0A = c8h.A01.A0A(i3);
                    c8gA05 = A05(viewA0A);
                    if (c8gA05 == null) {
                        positionEnd = 5;
                        break;
                    } else {
                        positionEnd = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        positionEnd = 6;
                        break;
                    } else {
                        positionEnd = 5;
                        break;
                    }
                case 5:
                    i3++;
                    positionEnd = 2;
                    break;
                case 6:
                    c8gA05 = c8gA05;
                    int positionEnd2 = c8gA05.A03;
                    if (positionEnd2 < childCount) {
                        positionEnd = 5;
                        break;
                    } else {
                        positionEnd = 7;
                        break;
                    }
                case 7:
                    c8gA05 = c8gA05;
                    int positionEnd3 = c8gA05.A03;
                    if (positionEnd3 >= i2) {
                        positionEnd = 5;
                        break;
                    } else {
                        positionEnd = 8;
                        break;
                    }
                case 8:
                    obj = obj;
                    viewA0A = viewA0A;
                    c8gA05 = c8gA05;
                    c8gA05.A0T(2);
                    c8gA05.A0Y(obj);
                    ((C7L) viewA0A.getLayoutParams()).A01 = true;
                    positionEnd = 5;
                    break;
                case 9:
                    c8h.A0r.A0T(childCount, i);
                    return;
            }
        }
    }

    public final void A1Z(int i, int i2, boolean z) {
        C8H c8h = this;
        C8G c8gA05 = null;
        int i3 = i + i2;
        int iA06 = c8h.A01.A06();
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i4 >= iA06) {
                        c = '\n';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = A05(c8h.A01.A0A(i4));
                    if (c8gA05 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    c8gA05 = c8gA05;
                    if (c8gA05.A03 < i3) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8gA05.A0W(-i2, z);
                    c8h.A0s.A0D = true;
                    c = 7;
                    break;
                case 7:
                    i4++;
                    c = 2;
                    break;
                case '\b':
                    c8gA05 = c8gA05;
                    if (c8gA05.A03 < i) {
                        c = 7;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8gA05.A0V(i - 1, -i2, z);
                    c8h.A0s.A0D = true;
                    c = 7;
                    break;
                case '\n':
                    C8H c8h2 = c8h;
                    c8h2.A0r.A0U(i, i2, z);
                    c8h2.requestLayout();
                    return;
            }
        }
    }

    public final void A1a(View view) {
        C8H c8h = this;
        int size = 0;
        C8G c8gA05 = A05(view);
        c8h.A0g(view);
        char c = c8h.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    if (c8gA05 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8h.A04.A0A(c8gA05);
                    c = 4;
                    break;
                case 4:
                    c8h = c8h;
                    if (c8h.A0l == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    size = c8h.A0l.size() - 1;
                    c = 6;
                    break;
                case 6:
                    if (size < 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    view = view;
                    c8h.A0l.get(size).onChildViewAttachedToWindow(view);
                    size--;
                    c = 6;
                    break;
                case '\b':
                    return;
            }
        }
    }

    public final void A1b(View view) {
        C8H c8h = this;
        int size = 0;
        C8G c8gA05 = A05(view);
        c8h.A0h(view);
        char c = c8h.A04 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    if (c8gA05 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8gA05 = c8gA05;
                    c8h.A04.A0B(c8gA05);
                    c = 4;
                    break;
                case 4:
                    c8h = c8h;
                    if (c8h.A0l == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    size = c8h.A0l.size() - 1;
                    c = 6;
                    break;
                case 6:
                    if (size < 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    view = view;
                    c8h.A0l.get(size).onChildViewDetachedFromWindow(view);
                    size--;
                    c = 6;
                    break;
                case '\b':
                    return;
            }
        }
    }

    public final void A1c(AnonymousClass82 anonymousClass82) {
        if (this.A0m == null) {
            this.A0m = new ArrayList();
        }
        this.A0m.add(anonymousClass82);
    }

    public final void A1d(AnonymousClass82 anonymousClass82) {
        if (this.A0m != null) {
            this.A0m.remove(anonymousClass82);
        }
    }

    public final void A1e(C8D c8d) {
        C8H c8h = this;
        char c = c8h.getScrollState() == 2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8d = c8d;
                    OverScroller overScroller = c8h.A08.A01;
                    c8d.A06 = overScroller.getFinalX() - overScroller.getCurrX();
                    c8d.A07 = overScroller.getFinalY() - overScroller.getCurrY();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8d = c8d;
                    c8d.A06 = 0;
                    c8d.A07 = 0;
                    c = 3;
                    break;
            }
        }
    }

    public final void A1f(C8G c8g, C03507t c03507t) {
        C8H c8h = this;
        c8g.A0U(0, 8192);
        char c = c8h.A0s.A0E ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c8g = c8g;
                    if (!c8g.A0f()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8g = c8g;
                    if (!c8g.A0c()) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    c8g = c8g;
                    if (!c8g.A0h()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8g = c8g;
                    c8h.A0t.A08(c8h.A01(c8g), c8g);
                    c = 6;
                    break;
                case 6:
                    c8h.A0t.A0F(c8g, c03507t);
                    return;
            }
        }
    }

    public final void A1g(@NonNull C8G c8g, @Nullable C03507t c03507t, @NonNull C03507t c03507t2) {
        c8g.A0Z(false);
        if (this.A05.A0I(c8g, c03507t, c03507t2)) {
            A1G();
        }
    }

    public final void A1h(@NonNull C8G c8g, @NonNull C03507t c03507t, @Nullable C03507t c03507t2) {
        A0l(c8g);
        c8g.A0Z(false);
        if (this.A05.A0J(c8g, c03507t, c03507t2)) {
            A1G();
        }
    }

    public final void A1i(String str) {
        C8H c8h = this;
        char c = c8h.A1n() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (str != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalStateException(A08(1742, 77, 8) + c8h.A1B());
                case 4:
                    throw new IllegalStateException(str);
                case 5:
                    c8h = c8h;
                    if (c8h.A0N <= 0) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    Log.w(A08(341, 12, 39), A08(1462, 280, 120), new IllegalStateException(A08(1294, 0, 119) + c8h.A1B()));
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }

    public final void A1j(boolean z) {
        C8H c8h = this;
        c8h.A0U--;
        char c = c8h.A0U < 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0U = 0;
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A0A();
                    c8h.A0P();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A1k(boolean z) {
        C8H c8h = this;
        boolean z2 = false;
        char c = c8h.A0O < 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0O = 1;
                    c = 3;
                    break;
                case 3:
                    if (!z) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    z2 = false;
                    c8h.A0J = false;
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    if (c8h.A0O != 1) {
                        c = 14;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (!z) {
                        c = '\f';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    if (!c8h.A0J) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = '\t';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    if (c8h.A06 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8h = c8h;
                    c8h.A0O();
                    c = '\f';
                    break;
                case '\f':
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = '\r';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    c8h.A0J = z2;
                    c = 14;
                    break;
                case 14:
                    C8H c8h2 = c8h;
                    c8h2.A0O--;
                    return;
            }
        }
    }

    public final boolean A1l() {
        C8H c8h = this;
        boolean z = false;
        char c = c8h.A10 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A10.isEnabled()) {
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

    public final boolean A1m() {
        C8H c8h = this;
        boolean z = false;
        char c = c8h.A0D ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0C) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    if (!c8h.A00.A0J()) {
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
                    return z;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public final boolean A1n() {
        boolean z = false;
        char c = this.A0U > 0 ? (char) 2 : (char) 4;
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

    public final boolean A1o(int i) {
        return getScrollingChildHelper().A09(i);
    }

    public final boolean A1p(int i, int i2) {
        return getScrollingChildHelper().A0B(i, i2);
    }

    public final boolean A1q(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().A0D(i, i2, i3, i4, iArr, i5);
    }

    public final boolean A1r(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().A0F(i, i2, iArr, iArr2, i3);
    }

    public final boolean A1s(View view) {
        C8H c8h = this;
        boolean z = false;
        c8h.A1D();
        boolean zA0L = c8h.A01.A0L(view);
        char c = zA0L ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    view = view;
                    C8G c8gA05 = A05(view);
                    c8h.A0r.A0c(c8gA05);
                    c8h.A0r.A0b(c8gA05);
                    c = 3;
                    break;
                case 3:
                    if (!zA0L) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    c8h.A1k(z);
                    return zA0L;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    public final boolean A1t(C8G c8g) {
        C8H c8h = this;
        boolean z = false;
        char c = c8h.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8g = c8g;
                    if (!c8h.A05.A0G(c8g, c8g.A0L())) {
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

    @VisibleForTesting
    public final boolean A1u(C8G c8g, int i) {
        C8H c8h = this;
        boolean z = false;
        char c = c8h.A1n() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8g = c8g;
                    c8g.A02 = i;
                    c8h.A0w.add(c8g);
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    c8g = c8g;
                    C02985s.A09(c8g.A0H, i);
                    z = true;
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C8H c8h = this;
        char c = c8h.A06 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    arrayList = arrayList;
                    if (!c8h.A06.A1l(c8h, arrayList, i, i2)) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    arrayList = arrayList;
                    super.addFocusables(arrayList, i, i2);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        C8H c8h = this;
        boolean z = false;
        char c = layoutParams instanceof C7L ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    layoutParams = layoutParams;
                    if (!c8h.A06.A1h((C7L) layoutParams)) {
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
    public final int computeHorizontalScrollExtent() {
        C8H c8h = this;
        int iA1o = 0;
        char c = c8h.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA1o;
                case 3:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    iA1o = c8h.A06.A1o(c8h.A0s);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        C8H c8h = this;
        int iA1p = 0;
        char c = c8h.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA1p;
                case 3:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    iA1p = c8h.A06.A1p(c8h.A0s);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        C8H c8h = this;
        int iA1q = 0;
        char c = c8h.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA1q;
                case 3:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    iA1q = c8h.A06.A1q(c8h.A0s);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        C8H c8h = this;
        int iA1r = 0;
        char c = c8h.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA1r;
                case 3:
                    c8h = c8h;
                    if (!c8h.A06.A2A()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    iA1r = c8h.A06.A1r(c8h.A0s);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        C8H c8h = this;
        int iA1s = 0;
        char c = c8h.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA1s;
                case 3:
                    c8h = c8h;
                    if (!c8h.A06.A2A()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    iA1s = c8h.A06.A1s(c8h.A0s);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        C8H c8h = this;
        int iA1t = 0;
        char c = c8h.A06 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return iA1t;
                case 3:
                    c8h = c8h;
                    if (!c8h.A06.A2A()) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    iA1t = c8h.A06.A1t(c8h.A0s);
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().A08(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().A07(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().A0E(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().A0C(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        dispatchThawSelfOnly(container);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        dispatchFreezeSelfOnly(container);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Canvas canvas2 = canvas;
        C8H c8h = this;
        int paddingTop = 0;
        int restore = 0;
        int width = 0;
        int paddingBottom = 0;
        int i = 0;
        int iSave = 0;
        int iSave2 = 0;
        int iSave3 = 0;
        int i2 = 0;
        int iSave4 = 0;
        int i3 = 1;
        super.draw(canvas2);
        int size = c8h.A0v.size();
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i4 >= size) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    canvas2 = canvas2;
                    c8h.A0v.get(i4).A04(canvas2, c8h, c8h.A0s);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    c8h = c8h;
                    restore = 0;
                    if (c8h.A0a == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (!c8h.A0a.isFinished()) {
                        c = 6;
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case 6:
                    c8h = c8h;
                    canvas2 = canvas2;
                    iSave = canvas2.save();
                    if (!c8h.A0B) {
                        c = '1';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    paddingBottom = c8h.getPaddingBottom();
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    canvas2 = canvas2;
                    canvas2.rotate(270.0f);
                    canvas2.translate((-c8h.getHeight()) + paddingBottom, 0.0f);
                    if (c8h.A0a == null) {
                        c = '0';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    canvas2 = canvas2;
                    if (!c8h.A0a.draw(canvas2)) {
                        c = '0';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    restore = i3;
                    c = 11;
                    break;
                case 11:
                    canvas2 = canvas2;
                    canvas2.restoreToCount(iSave);
                    c = '\f';
                    break;
                case '\f':
                    c8h = c8h;
                    if (c8h.A0c == null) {
                        c = 20;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    if (!c8h.A0c.isFinished()) {
                        c = 14;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 14:
                    c8h = c8h;
                    canvas2 = canvas2;
                    iSave2 = canvas2.save();
                    boolean needsInvalidate = c8h.A0B;
                    if (!needsInvalidate) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c8h = c8h;
                    canvas2 = canvas2;
                    canvas2.translate(c8h.getPaddingLeft(), c8h.getPaddingTop());
                    c = 16;
                    break;
                case 16:
                    c8h = c8h;
                    if (c8h.A0c == null) {
                        c = '/';
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    canvas2 = canvas2;
                    if (!c8h.A0c.draw(canvas2)) {
                        c = '/';
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    i = i3;
                    c = 19;
                    break;
                case 19:
                    canvas2 = canvas2;
                    restore |= i;
                    canvas2.restoreToCount(iSave2);
                    c = 20;
                    break;
                case 20:
                    c8h = c8h;
                    if (c8h.A0b == null) {
                        c = 28;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    if (!c8h.A0b.isFinished()) {
                        c = 22;
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 22:
                    c8h = c8h;
                    canvas2 = canvas2;
                    iSave3 = canvas2.save();
                    width = c8h.getWidth();
                    if (!c8h.A0B) {
                        c = '.';
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    c8h = c8h;
                    paddingTop = c8h.getPaddingTop();
                    c = 24;
                    break;
                case 24:
                    c8h = c8h;
                    canvas2 = canvas2;
                    canvas2.rotate(90.0f);
                    canvas2.translate(-paddingTop, -width);
                    if (c8h.A0b == null) {
                        c = '-';
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    c8h = c8h;
                    canvas2 = canvas2;
                    if (!c8h.A0b.draw(canvas2)) {
                        c = '-';
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    i2 = i3;
                    c = 27;
                    break;
                case 27:
                    canvas2 = canvas2;
                    restore |= i2;
                    canvas2.restoreToCount(iSave3);
                    c = 28;
                    break;
                case 28:
                    c8h = c8h;
                    if (c8h.A0Z == null) {
                        c = '#';
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    c8h = c8h;
                    if (!c8h.A0Z.isFinished()) {
                        c = 30;
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case 30:
                    c8h = c8h;
                    canvas2 = canvas2;
                    iSave4 = canvas2.save();
                    canvas2.rotate(180.0f);
                    if (!c8h.A0B) {
                        c = ',';
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 31:
                    c8h = c8h;
                    canvas2 = canvas2;
                    canvas2.translate((-c8h.getWidth()) + c8h.getPaddingRight(), (-c8h.getHeight()) + c8h.getPaddingBottom());
                    c = ' ';
                    break;
                case ' ':
                    c8h = c8h;
                    if (c8h.A0Z == null) {
                        c = '+';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    c8h = c8h;
                    canvas2 = canvas2;
                    if (!c8h.A0Z.draw(canvas2)) {
                        c = '+';
                        break;
                    } else {
                        c = '\"';
                        break;
                    }
                case '\"':
                    canvas2 = canvas2;
                    restore |= i3;
                    canvas2.restoreToCount(iSave4);
                    c = '#';
                    break;
                case '#':
                    if (restore != 0) {
                        c = '(';
                        break;
                    } else {
                        c = '$';
                        break;
                    }
                case '$':
                    c8h = c8h;
                    if (c8h.A05 == null) {
                        c = '(';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    c8h = c8h;
                    if (c8h.A0v.size() <= 0) {
                        c = '(';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    c8h = c8h;
                    if (!c8h.A05.A0F()) {
                        c = '(';
                        break;
                    } else {
                        c = '\'';
                        break;
                    }
                case '\'':
                    restore = 1;
                    c = '(';
                    break;
                case '(':
                    if (restore == 0) {
                        c = '*';
                        break;
                    } else {
                        c = ')';
                        break;
                    }
                case ')':
                    c8h = c8h;
                    C02985s.A07(c8h);
                    c = '*';
                    break;
                case '*':
                    return;
                case '+':
                    i3 = 0;
                    c = '\"';
                    break;
                case ',':
                    c8h = c8h;
                    canvas2 = canvas2;
                    canvas2.translate(-c8h.getWidth(), -c8h.getHeight());
                    c = ' ';
                    break;
                case '-':
                    i2 = 0;
                    c = 27;
                    break;
                case '.':
                    paddingTop = 0;
                    c = 24;
                    break;
                case '/':
                    i = 0;
                    c = 19;
                    break;
                case '0':
                    restore = 0;
                    c = 11;
                    break;
                case '1':
                    paddingBottom = 0;
                    c = '\b';
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        int i2 = i;
        View viewFocusSearch = view;
        C8H c8h = this;
        boolean needsFocusFailureLayout = false;
        int i3 = 0;
        boolean z = false;
        FocusFinder focusFinder = null;
        boolean z2 = false;
        int i4 = 0;
        boolean z3 = false;
        View viewA1w = null;
        View viewFocusSearch2 = null;
        View viewA0x = c8h.A06.A0x(viewFocusSearch, i2);
        char c = viewA0x != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    viewA0x = viewA0x;
                    viewFocusSearch = viewA0x;
                    c = 3;
                    break;
                case 3:
                    return viewFocusSearch;
                case 4:
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = '(';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (c8h.A06 == null) {
                        c = '(';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (!c8h.A1n()) {
                        c = 7;
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case 7:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = '\b';
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '\b':
                    needsFocusFailureLayout = true;
                    c = '\t';
                    break;
                case '\t':
                    focusFinder = FocusFinder.getInstance();
                    if (!needsFocusFailureLayout) {
                        c = ')';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (i2 == 2) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    if (i2 != 1) {
                        c = ')';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    z = false;
                    if (!c8h.A06.A2A()) {
                        c = 19;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    if (i2 != 2) {
                        c = '\'';
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    i4 = 130;
                    c = 15;
                    break;
                case 15:
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    focusFinder = focusFinder;
                    View result = focusFinder.findNextFocus(c8h, viewFocusSearch, i4);
                    if (result != null) {
                        c = '&';
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    z = true;
                    c = 17;
                    break;
                case 17:
                    if (!A1E) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    i2 = i4;
                    c = 19;
                    break;
                case 19:
                    if (!z) {
                        c = 20;
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 20:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        c = 31;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    if (c8h.A06.A0d() != 1) {
                        c = '%';
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    z2 = true;
                    c = 23;
                    break;
                case 23:
                    if (i2 != 2) {
                        c = '$';
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    z3 = true;
                    c = 25;
                    break;
                case 25:
                    if (!(z3 ^ z2)) {
                        c = '#';
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    i3 = 66;
                    c = 27;
                    break;
                case 27:
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    focusFinder = focusFinder;
                    View result2 = focusFinder.findNextFocus(c8h, viewFocusSearch, i3);
                    if (result2 != null) {
                        c = '\"';
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    z = true;
                    c = 29;
                    break;
                case 29:
                    if (!A1E) {
                        c = 31;
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    i2 = i3;
                    c = 31;
                    break;
                case 31:
                    if (!z) {
                        c = '/';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    c8h.A1C();
                    View focusedItemView = c8h.A18(viewFocusSearch);
                    if (focusedItemView != null) {
                        c = '.';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    viewFocusSearch = null;
                    c = 3;
                    break;
                case '\"':
                    z = false;
                    c = 29;
                    break;
                case '#':
                    i3 = 17;
                    c = 27;
                    break;
                case '$':
                    z3 = false;
                    c = 25;
                    break;
                case '%':
                    z2 = false;
                    c = 23;
                    break;
                case '&':
                    z = false;
                    c = 17;
                    break;
                case '\'':
                    i4 = 33;
                    c = 15;
                    break;
                case '(':
                    needsFocusFailureLayout = false;
                    c = '\t';
                    break;
                case ')':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    focusFinder = focusFinder;
                    viewA1w = focusFinder.findNextFocus(c8h, viewFocusSearch, i2);
                    if (viewA1w != null) {
                        c = '0';
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case '*':
                    if (!needsFocusFailureLayout) {
                        c = '0';
                        break;
                    } else {
                        c = '+';
                        break;
                    }
                case '+':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    c8h.A1C();
                    View result3 = c8h.A18(viewFocusSearch);
                    if (result3 != null) {
                        c = '-';
                        break;
                    } else {
                        c = ',';
                        break;
                    }
                case ',':
                    viewFocusSearch = null;
                    c = 3;
                    break;
                case '-':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    c8h.A1D();
                    viewA1w = c8h.A06.A1w(viewFocusSearch, i2, c8h.A0r, c8h.A0s);
                    c8h.A1k(false);
                    c = '0';
                    break;
                case '.':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    c8h.A1D();
                    c8h.A06.A1w(viewFocusSearch, i2, c8h.A0r, c8h.A0s);
                    c8h.A1k(false);
                    c = '/';
                    break;
                case '/':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    focusFinder = focusFinder;
                    viewA1w = focusFinder.findNextFocus(c8h, viewFocusSearch, i2);
                    c = '0';
                    break;
                case '0':
                    viewA1w = viewA1w;
                    if (viewA1w == null) {
                        c = '5';
                        break;
                    } else {
                        c = '1';
                        break;
                    }
                case '1':
                    viewA1w = viewA1w;
                    if (!viewA1w.hasFocusable()) {
                        c = '2';
                        break;
                    } else {
                        c = '5';
                        break;
                    }
                case '2':
                    c8h = c8h;
                    View result4 = c8h.getFocusedChild();
                    if (result4 != null) {
                        c = '4';
                        break;
                    } else {
                        c = '3';
                        break;
                    }
                case '3':
                    c8h = c8h;
                    viewFocusSearch = super.focusSearch(viewFocusSearch, i2);
                    c = 3;
                    break;
                case '4':
                    c8h = c8h;
                    viewA1w = viewA1w;
                    c8h.A0j(viewA1w, null);
                    c = 3;
                    break;
                case '5':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    viewA1w = viewA1w;
                    if (!c8h.A10(viewFocusSearch, viewA1w, i2)) {
                        c = '8';
                        break;
                    } else {
                        c = '6';
                        break;
                    }
                case '6':
                    viewA1w = viewA1w;
                    viewFocusSearch2 = viewA1w;
                    c = '7';
                    break;
                case '7':
                    viewFocusSearch2 = viewFocusSearch2;
                    viewFocusSearch = viewFocusSearch2;
                    c = 3;
                    break;
                case '8':
                    c8h = c8h;
                    viewFocusSearch = viewFocusSearch;
                    viewFocusSearch2 = super.focusSearch(viewFocusSearch, i2);
                    c = '7';
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.A06 == null) {
            throw new IllegalStateException(A08(1860, 33, 41) + A1B());
        }
        return this.A06.A1x();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.A06 == null) {
            throw new IllegalStateException(A08(1860, 33, 41) + A1B());
        }
        return this.A06.A0y(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.A06 == null) {
            throw new IllegalStateException(A08(1860, 33, 41) + A1B());
        }
        return this.A06.A0z(layoutParams);
    }

    public AbstractC02102g getAdapter() {
        return this.A04;
    }

    @Override // android.view.View
    public int getBaseline() {
        C8H c8h = this;
        int iA0Y = 0;
        char c = c8h.A06 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    iA0Y = c8h.A06.A0Y();
                    c = 3;
                    break;
                case 3:
                    return iA0Y;
                case 4:
                    c8h = c8h;
                    iA0Y = super.getBaseline();
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        C8H c8h = this;
        int childDrawingOrder = 0;
        char c = c8h.A0e == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    childDrawingOrder = super.getChildDrawingOrder(i, i2);
                    c = 3;
                    break;
                case 3:
                    return childDrawingOrder;
                case 4:
                    c8h = c8h;
                    childDrawingOrder = c8h.A0e.onGetChildDrawingOrder(i, i2);
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.A0B;
    }

    public C8J getCompatAccessibilityDelegate() {
        return this.A09;
    }

    public C7B getItemAnimator() {
        return this.A05;
    }

    public C7N getLayoutManager() {
        return this.A06;
    }

    public int getMaxFlingVelocity() {
        return this.A0x;
    }

    public int getMinFlingVelocity() {
        return this.A0y;
    }

    public long getNanoTime() {
        long jNanoTime = 0;
        char c = A1D ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jNanoTime = System.nanoTime();
                    c = 3;
                    break;
                case 3:
                    return jNanoTime;
                case 4:
                    jNanoTime = 0;
                    c = 3;
                    break;
            }
        }
    }

    @Nullable
    public AbstractC03347d getOnFlingListener() {
        return this.A0g;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.A0o;
    }

    public AnonymousClass84 getRecycledViewPool() {
        return this.A0r.A0H();
    }

    public int getScrollState() {
        return this.A0W;
    }

    private C5Q getScrollingChildHelper() {
        if (this.A0d == null) {
            this.A0d = new C5Q(this);
        }
        return this.A0d;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().A05();
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.A0F;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().A06();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        C8H c8h = this;
        float refreshRate = 0.0f;
        Display displayA04 = null;
        float f = 0.0f;
        boolean z = true;
        super.onAttachedToWindow();
        c8h.A0U = 0;
        c8h.A0F = true;
        float displayRefreshRate = c8h.A0D ? 2.8E-45f : 2.0E-44f;
        while (true) {
            switch (displayRefreshRate) {
                case 2.8E-45f:
                    c8h = c8h;
                    if (!c8h.isLayoutRequested()) {
                        displayRefreshRate = 4.2E-45f;
                        break;
                    } else {
                        displayRefreshRate = 2.0E-44f;
                        break;
                    }
                case 4.2E-45f:
                    c8h = c8h;
                    c8h.A0D = z;
                    if (c8h.A06 == null) {
                        displayRefreshRate = 7.0E-45f;
                        break;
                    } else {
                        displayRefreshRate = 5.6E-45f;
                        break;
                    }
                case 5.6E-45f:
                    c8h = c8h;
                    c8h.A06.A1S(c8h);
                    displayRefreshRate = 7.0E-45f;
                    break;
                case 7.0E-45f:
                    c8h = c8h;
                    c8h.A0K = false;
                    if (!A1D) {
                        displayRefreshRate = 1.8E-44f;
                        break;
                    } else {
                        displayRefreshRate = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    c8h = c8h;
                    c8h.A03 = C7I.A06.get();
                    if (c8h.A03 != null) {
                        displayRefreshRate = 1.7E-44f;
                        break;
                    } else {
                        displayRefreshRate = 9.8E-45f;
                        break;
                    }
                case 9.8E-45f:
                    c8h = c8h;
                    c8h.A03 = new C7I();
                    displayA04 = C02985s.A04(c8h);
                    f = 60.0f;
                    if (!c8h.isInEditMode()) {
                        displayRefreshRate = 1.1E-44f;
                        break;
                    } else {
                        displayRefreshRate = 1.5E-44f;
                        break;
                    }
                case 1.1E-44f:
                    displayA04 = displayA04;
                    if (displayA04 == null) {
                        displayRefreshRate = 1.5E-44f;
                        break;
                    } else {
                        displayRefreshRate = 1.3E-44f;
                        break;
                    }
                case 1.3E-44f:
                    displayA04 = displayA04;
                    refreshRate = displayA04.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        displayRefreshRate = 1.5E-44f;
                        break;
                    } else {
                        displayRefreshRate = 1.4E-44f;
                        break;
                    }
                case 1.4E-44f:
                    f = refreshRate;
                    displayRefreshRate = 1.5E-44f;
                    break;
                case 1.5E-44f:
                    c8h = c8h;
                    c8h.A03.A00 = (long) (1.0E9f / f);
                    C7I.A06.set(c8h.A03);
                    displayRefreshRate = 1.7E-44f;
                    break;
                case 1.7E-44f:
                    c8h = c8h;
                    c8h.A03.A09(c8h);
                    displayRefreshRate = 1.8E-44f;
                    break;
                case 1.8E-44f:
                    return;
                case 2.0E-44f:
                    z = false;
                    displayRefreshRate = 4.2E-45f;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C8H c8h = this;
        super.onDetachedFromWindow();
        char c = c8h.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A05.A0C();
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    c8h.A1K();
                    c8h.A0F = false;
                    if (c8h.A06 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A06.A1Z(c8h, c8h.A0r);
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A0w.clear();
                    c8h.removeCallbacks(c8h.A0k);
                    c8h.A0t.A07();
                    if (!A1D) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    if (c8h.A03 == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    c8h.A03.A0A(c8h);
                    c8h.A03 = null;
                    c = '\b';
                    break;
                case '\b':
                    return;
            }
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        C8H c8h = this;
        super.onDraw(canvas);
        int size = c8h.A0v.size();
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= size) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    canvas = canvas;
                    c8h.A0v.get(i).A03(canvas, c8h, c8h.A0s);
                    i++;
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        C8H c8h = this;
        float f = 0.0f;
        float axisValue = 0.0f;
        float axisValue2 = 0.0f;
        float f2 = 0.0f;
        float vScroll = c8h.A06 == null ? 2.8E-45f : 4.2E-45f;
        while (true) {
            switch (vScroll) {
                case 2.8E-45f:
                    return false;
                case 4.2E-45f:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        vScroll = 5.6E-45f;
                        break;
                    } else {
                        vScroll = 2.8E-45f;
                        break;
                    }
                case 5.6E-45f:
                    motionEvent = motionEvent;
                    if (motionEvent.getAction() != 8) {
                        vScroll = 2.8E-45f;
                        break;
                    } else {
                        vScroll = 7.0E-45f;
                        break;
                    }
                case 7.0E-45f:
                    motionEvent = motionEvent;
                    if ((motionEvent.getSource() & 2) == 0) {
                        vScroll = 2.1E-44f;
                        break;
                    } else {
                        vScroll = 8.4E-45f;
                        break;
                    }
                case 8.4E-45f:
                    c8h = c8h;
                    if (!c8h.A06.A2A()) {
                        vScroll = 2.0E-44f;
                        break;
                    } else {
                        vScroll = 9.8E-45f;
                        break;
                    }
                case 9.8E-45f:
                    motionEvent = motionEvent;
                    f = -motionEvent.getAxisValue(9);
                    vScroll = 1.1E-44f;
                    break;
                case 1.1E-44f:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        vScroll = 1.8E-44f;
                        break;
                    } else {
                        vScroll = 1.3E-44f;
                        break;
                    }
                case 1.3E-44f:
                    motionEvent = motionEvent;
                    axisValue = motionEvent.getAxisValue(10);
                    vScroll = 1.4E-44f;
                    break;
                case 1.4E-44f:
                    f2 = 0.0f;
                    if (f != 0.0f) {
                        vScroll = 1.7E-44f;
                        break;
                    } else {
                        vScroll = 1.5E-44f;
                        break;
                    }
                case 1.5E-44f:
                    if (axisValue == f2) {
                        vScroll = 2.8E-45f;
                        break;
                    } else {
                        vScroll = 1.7E-44f;
                        break;
                    }
                case 1.7E-44f:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    c8h.A0x((int) (c8h.A0L * axisValue), (int) (c8h.A0M * f), motionEvent);
                    vScroll = 2.8E-45f;
                    break;
                case 1.8E-44f:
                    axisValue = 0.0f;
                    vScroll = 1.4E-44f;
                    break;
                case 2.0E-44f:
                    f = 0.0f;
                    vScroll = 1.1E-44f;
                    break;
                case 2.1E-44f:
                    motionEvent = motionEvent;
                    if ((motionEvent.getSource() & AccessibilityEventCompat.TYPE_WINDOWS_CHANGED) == 0) {
                        vScroll = 2.9E-44f;
                        break;
                    } else {
                        vScroll = 2.24E-44f;
                        break;
                    }
                case 2.24E-44f:
                    c8h = c8h;
                    motionEvent = motionEvent;
                    axisValue2 = motionEvent.getAxisValue(26);
                    if (!c8h.A06.A2A()) {
                        vScroll = 2.5E-44f;
                        break;
                    } else {
                        vScroll = 2.4E-44f;
                        break;
                    }
                case 2.4E-44f:
                    f = -axisValue2;
                    axisValue = 0.0f;
                    vScroll = 1.4E-44f;
                    break;
                case 2.5E-44f:
                    c8h = c8h;
                    if (!c8h.A06.A29()) {
                        vScroll = 2.8E-44f;
                        break;
                    } else {
                        vScroll = 2.7E-44f;
                        break;
                    }
                case 2.7E-44f:
                    f = 0.0f;
                    axisValue = axisValue2;
                    vScroll = 1.4E-44f;
                    break;
                case 2.8E-44f:
                    f = 0.0f;
                    axisValue = 0.0f;
                    vScroll = 1.4E-44f;
                    break;
                case 2.9E-44f:
                    f = 0.0f;
                    axisValue = 0.0f;
                    vScroll = 1.4E-44f;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        C8H c8h = this;
        boolean z = false;
        int i = 0;
        boolean zA29 = false;
        int dx = 0;
        int dy = 0;
        int i2 = 0;
        int nestedScrollAxis = 0;
        int i3 = 0;
        int x = 0;
        boolean zA2A = false;
        int actionIndex = 0;
        char c = c8h.A0I ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = false;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    if (!c8h.A0z(motionEvent2)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8h.A09();
                    z = true;
                    c = 3;
                    break;
                case 6:
                    c8h = c8h;
                    if (c8h.A06 != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = false;
                    c = 3;
                    break;
                case '\b':
                    c8h = c8h;
                    zA29 = c8h.A06.A29();
                    zA2A = c8h.A06.A2A();
                    if (c8h.A0Y != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    c8h.A0Y = VelocityTracker.obtain();
                    c = '\n';
                    break;
                case '\n':
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0Y.addMovement(motionEvent2);
                    int actionMasked = motionEvent2.getActionMasked();
                    actionIndex = motionEvent2.getActionIndex();
                    switch (actionMasked) {
                        case 0:
                            c = 28;
                            break;
                        case 1:
                            c = 14;
                            break;
                        case 2:
                            c = 16;
                            break;
                        case 3:
                            c = '\r';
                            break;
                        case 4:
                            c = 11;
                            break;
                        case 5:
                            c = 27;
                            break;
                        case 6:
                            c = 15;
                            break;
                        default:
                            c = 11;
                            break;
                    }
                case 11:
                    c8h = c8h;
                    if (c8h.A0W != 1) {
                        c = '%';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    z = true;
                    c = 3;
                    break;
                case '\r':
                    c8h = c8h;
                    c8h.A09();
                    c = 11;
                    break;
                case 14:
                    c8h = c8h;
                    c8h.A0Y.clear();
                    c8h.A1Q(0);
                    c = 11;
                    break;
                case 15:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0f(motionEvent2);
                    c = 11;
                    break;
                case 16:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    dy = motionEvent2.findPointerIndex(c8h.A0V);
                    if (dy >= 0) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    Log.e(A08(341, 12, 39), A08(0, 46, 1) + c8h.A0V + A08(742, 45, 76));
                    z = false;
                    c = 3;
                    break;
                case 18:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    nestedScrollAxis = (int) (motionEvent2.getX(dy) + 0.5f);
                    x = (int) (motionEvent2.getY(dy) + 0.5f);
                    if (c8h.A0W == 1) {
                        c = 11;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c8h = c8h;
                    i3 = nestedScrollAxis - c8h.A0Q;
                    i = x - c8h.A0R;
                    dx = 0;
                    if (!zA29) {
                        c = 22;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    c8h = c8h;
                    if (Math.abs(i3) <= c8h.A0X) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    c8h.A0S = nestedScrollAxis;
                    dx = 1;
                    c = 22;
                    break;
                case 22:
                    if (!zA2A) {
                        c = 25;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    c8h = c8h;
                    if (Math.abs(i) <= c8h.A0X) {
                        c = 25;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c8h = c8h;
                    c8h.A0T = x;
                    dx = 1;
                    c = 25;
                    break;
                case 25:
                    if (dx == 0) {
                        c = 11;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    c8h = c8h;
                    c8h.setScrollState(1);
                    c = 11;
                    break;
                case 27:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0V = motionEvent2.getPointerId(actionIndex);
                    int x2 = (int) (motionEvent2.getX(actionIndex) + 0.5f);
                    c8h.A0S = x2;
                    c8h.A0Q = x2;
                    int y = (int) (motionEvent2.getY(actionIndex) + 0.5f);
                    c8h.A0T = y;
                    c8h.A0R = y;
                    c = 11;
                    break;
                case 28:
                    c8h = c8h;
                    if (!c8h.A0n) {
                        c = 30;
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    c8h = c8h;
                    c8h.A0n = false;
                    c = 30;
                    break;
                case 30:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0V = motionEvent2.getPointerId(0);
                    int x3 = (int) (motionEvent2.getX() + 0.5f);
                    c8h.A0S = x3;
                    c8h.A0Q = x3;
                    int y2 = (int) (motionEvent2.getY() + 0.5f);
                    c8h.A0T = y2;
                    c8h.A0R = y2;
                    if (c8h.A0W != 2) {
                        c = ' ';
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 31:
                    c8h = c8h;
                    c8h.getParent().requestDisallowInterceptTouchEvent(true);
                    c8h.setScrollState(1);
                    c = ' ';
                    break;
                case ' ':
                    c8h = c8h;
                    int[] iArr = c8h.A15;
                    c8h.A15[1] = 0;
                    iArr[0] = 0;
                    i2 = 0;
                    if (!zA29) {
                        c = '\"';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    i2 = 0 | 1;
                    c = '\"';
                    break;
                case '\"':
                    if (!zA2A) {
                        c = '$';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    i2 |= 2;
                    c = '$';
                    break;
                case '$':
                    c8h = c8h;
                    c8h.A1p(i2, 0);
                    c = 11;
                    break;
                case '%':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C02804y.A01(A08(330, 11, 9));
        A0O();
        C02804y.A00();
        this.A0D = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        C8H c8h = this;
        int mode = 0;
        boolean z = false;
        char c = c8h.A06 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A1T(i, i2);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8h = c8h;
                    if (!c8h.A06.A06) {
                        c = 14;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    int mode2 = View.MeasureSpec.getMode(i);
                    mode = View.MeasureSpec.getMode(i2);
                    if (mode2 != 1073741824) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (mode != 1073741824) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    z = true;
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    c8h.A06.A1O(c8h.A0r, c8h.A0s, i, i2);
                    if (!z) {
                        c = '\t';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = 3;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    if (c8h.A0s.A04 != 1) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    c8h = c8h;
                    c8h.A0B();
                    c = '\f';
                    break;
                case '\f':
                    c8h = c8h;
                    c8h.A06.A15(i, i2);
                    c8h.A0s.A0A = true;
                    c8h.A0C();
                    c8h.A06.A16(i, i2);
                    if (!c8h.A06.A28()) {
                        c = 3;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    c8h = c8h;
                    c8h.A06.A15(View.MeasureSpec.makeMeasureSpec(c8h.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(c8h.getMeasuredHeight(), 1073741824));
                    c8h.A0s.A0A = true;
                    c8h.A0C();
                    c8h.A06.A16(i, i2);
                    c = 3;
                    break;
                case 14:
                    c8h = c8h;
                    if (!c8h.A0E) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c8h = c8h;
                    c8h.A06.A1O(c8h.A0r, c8h.A0s, i, i2);
                    c = 3;
                    break;
                case 16:
                    c8h = c8h;
                    if (!c8h.A0A) {
                        c = 25;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c8h = c8h;
                    c8h.A1D();
                    c8h.A1E();
                    c8h.A0F();
                    c8h.A1F();
                    if (!c8h.A0s.A0B) {
                        c = 24;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    c8h = c8h;
                    c8h.A0s.A09 = true;
                    c = 19;
                    break;
                case 19:
                    c8h = c8h;
                    c8h.A0A = z;
                    c8h.A1k(z);
                    c = 20;
                    break;
                case 20:
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = 23;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    c8h.A0s.A03 = c8h.A04.A03();
                    c = 22;
                    break;
                case 22:
                    c8h = c8h;
                    c8h.A1D();
                    c8h.A06.A1O(c8h.A0r, c8h.A0s, i, i2);
                    c8h.A1k(z);
                    c8h.A0s.A09 = z;
                    c = 3;
                    break;
                case 23:
                    c8h = c8h;
                    c8h.A0s.A03 = z ? 1 : 0;
                    c = 22;
                    break;
                case 24:
                    c8h = c8h;
                    z = false;
                    c8h.A00.A0G();
                    c8h.A0s.A09 = false;
                    c = 19;
                    break;
                case 25:
                    c8h = c8h;
                    if (!c8h.A0s.A0B) {
                        c = 20;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 26:
                    c8h = c8h;
                    c8h.setMeasuredDimension(c8h.getMeasuredWidth(), c8h.getMeasuredHeight());
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        C8H c8h = this;
        boolean zOnRequestFocusInDescendants = false;
        char c = c8h.A1n() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    zOnRequestFocusInDescendants = false;
                    c = 3;
                    break;
                case 3:
                    return zOnRequestFocusInDescendants;
                case 4:
                    c8h = c8h;
                    rect = rect;
                    zOnRequestFocusInDescendants = super.onRequestFocusInDescendants(i, rect);
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        C8H c8h = this;
        char c = !(parcelable instanceof RecyclerView$SavedState) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    parcelable = parcelable;
                    super.onRestoreInstanceState(parcelable);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8h = c8h;
                    parcelable = parcelable;
                    c8h.A0j = (RecyclerView$SavedState) parcelable;
                    super.onRestoreInstanceState(c8h.A0j.A02());
                    if (c8h.A06 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (c8h.A0j.A00 == null) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8h.A06.A21(c8h.A0j.A00);
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C8H c8h = this;
        RecyclerView$SavedState recyclerView$SavedState = new RecyclerView$SavedState(super.onSaveInstanceState());
        char c = c8h.A0j != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    recyclerView$SavedState = recyclerView$SavedState;
                    recyclerView$SavedState.A03(c8h.A0j);
                    c = 3;
                    break;
                case 3:
                    return recyclerView$SavedState;
                case 4:
                    c8h = c8h;
                    if (c8h.A06 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    recyclerView$SavedState = recyclerView$SavedState;
                    recyclerView$SavedState.A00 = c8h.A06.A1u();
                    c = 3;
                    break;
                case 6:
                    recyclerView$SavedState = recyclerView$SavedState;
                    recyclerView$SavedState.A00 = null;
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        C8H c8h = this;
        super.onSizeChanged(i, i2, i3, i4);
        char c = i == i3 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 == i4) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A0V();
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        C8H c8h = this;
        boolean z = false;
        boolean zA29 = false;
        MotionEvent motionEventObtain = null;
        int y = 0;
        int action = 0;
        int actionIndex = 0;
        float f = 0.0f;
        int i = 0;
        boolean eventAddedToVelocityTracker = false;
        boolean zA2A = false;
        int x = 0;
        float f2 = 0.0f;
        int iFindPointerIndex = 0;
        int i2 = 0;
        int i3 = 0;
        int y2 = 0;
        int i4 = 0;
        int i5 = 0;
        char c = !c8h.A0I ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0n) {
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
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    if (!c8h.A0y(motionEvent2)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8h.A09();
                    z = true;
                    c = 4;
                    break;
                case 7:
                    c8h = c8h;
                    if (c8h.A06 != null) {
                        c = '\t';
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
                    c8h = c8h;
                    zA29 = c8h.A06.A29();
                    zA2A = c8h.A06.A2A();
                    if (c8h.A0Y != null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c8h = c8h;
                    c8h.A0Y = VelocityTracker.obtain();
                    c = 11;
                    break;
                case 11:
                    motionEvent2 = motionEvent2;
                    eventAddedToVelocityTracker = false;
                    motionEventObtain = MotionEvent.obtain(motionEvent2);
                    action = motionEvent2.getActionMasked();
                    actionIndex = motionEvent2.getActionIndex();
                    if (action != 0) {
                        c = '\r';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\f':
                    c8h = c8h;
                    int[] iArr = c8h.A15;
                    c8h.A15[1] = 0;
                    iArr[0] = 0;
                    c = '\r';
                    break;
                case '\r':
                    c8h = c8h;
                    motionEventObtain = motionEventObtain;
                    motionEventObtain.offsetLocation(c8h.A15[0], c8h.A15[1]);
                    switch (action) {
                        case 0:
                            c = '?';
                            break;
                        case 1:
                            c = 18;
                            break;
                        case 2:
                            c = 30;
                            break;
                        case 3:
                            c = 17;
                            break;
                        case 4:
                            c = 14;
                            break;
                        case 5:
                            c = '>';
                            break;
                        case 6:
                            c = 29;
                            break;
                        default:
                            c = 14;
                            break;
                    }
                case 14:
                    if (!eventAddedToVelocityTracker) {
                        c = 15;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 15:
                    c8h = c8h;
                    motionEventObtain = motionEventObtain;
                    c8h.A0Y.addMovement(motionEventObtain);
                    c = 16;
                    break;
                case 16:
                    motionEventObtain = motionEventObtain;
                    motionEventObtain.recycle();
                    z = true;
                    c = 4;
                    break;
                case 17:
                    c8h = c8h;
                    c8h.A09();
                    c = 14;
                    break;
                case 18:
                    c8h = c8h;
                    motionEventObtain = motionEventObtain;
                    c8h.A0Y.addMovement(motionEventObtain);
                    eventAddedToVelocityTracker = true;
                    c8h.A0Y.computeCurrentVelocity(1000, c8h.A0x);
                    if (!zA29) {
                        c = 28;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c8h = c8h;
                    f2 = -c8h.A0Y.getXVelocity(c8h.A0V);
                    c = 20;
                    break;
                case 20:
                    if (!zA2A) {
                        c = 27;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c8h = c8h;
                    f = -c8h.A0Y.getYVelocity(c8h.A0V);
                    c = 22;
                    break;
                case 22:
                    if (f2 != 0.0f) {
                        c = 24;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    if (f == 0.0f) {
                        c = 25;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    c8h = c8h;
                    if (!c8h.A0w((int) f2, (int) f)) {
                        c = 25;
                        break;
                    } else {
                        c = 26;
                        break;
                    }
                case 25:
                    c8h = c8h;
                    c8h.setScrollState(0);
                    c = 26;
                    break;
                case 26:
                    c8h = c8h;
                    c8h.A0J();
                    c = 14;
                    break;
                case 27:
                    f = 0.0f;
                    c = 22;
                    break;
                case 28:
                    f2 = 0.0f;
                    c = 20;
                    break;
                case 29:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0f(motionEvent2);
                    c = 14;
                    break;
                case 30:
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    iFindPointerIndex = motionEvent2.findPointerIndex(c8h.A0V);
                    if (iFindPointerIndex >= 0) {
                        c = ' ';
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 31:
                    c8h = c8h;
                    Log.e(A08(341, 12, 39), A08(0, 46, 1) + c8h.A0V + A08(742, 45, 76));
                    z = false;
                    c = 4;
                    break;
                case ' ':
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    x = (int) (motionEvent2.getX(iFindPointerIndex) + 0.5f);
                    y = (int) (motionEvent2.getY(iFindPointerIndex) + 0.5f);
                    i = c8h.A0S - x;
                    i3 = c8h.A0T - y;
                    if (!c8h.A1r(i, i3, c8h.A16, c8h.A17, 0)) {
                        c = '\"';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    c8h = c8h;
                    motionEventObtain = motionEventObtain;
                    i -= c8h.A16[0];
                    i3 -= c8h.A16[1];
                    motionEventObtain.offsetLocation(c8h.A17[0], c8h.A17[1]);
                    int[] iArr2 = c8h.A15;
                    iArr2[0] = iArr2[0] + c8h.A17[0];
                    int[] iArr3 = c8h.A15;
                    iArr3[1] = iArr3[1] + c8h.A17[1];
                    c = '\"';
                    break;
                case '\"':
                    c8h = c8h;
                    if (c8h.A0W == 1) {
                        c = '/';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    y2 = 0;
                    if (!zA29) {
                        c = '(';
                        break;
                    } else {
                        c = '$';
                        break;
                    }
                case '$':
                    c8h = c8h;
                    if (Math.abs(i) <= c8h.A0X) {
                        c = '(';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    if (i <= 0) {
                        c = '=';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    c8h = c8h;
                    i -= c8h.A0X;
                    c = '\'';
                    break;
                case '\'':
                    y2 = 1;
                    c = '(';
                    break;
                case '(':
                    if (!zA2A) {
                        c = '-';
                        break;
                    } else {
                        c = ')';
                        break;
                    }
                case ')':
                    c8h = c8h;
                    if (Math.abs(i3) <= c8h.A0X) {
                        c = '-';
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case '*':
                    if (i3 <= 0) {
                        c = '<';
                        break;
                    } else {
                        c = '+';
                        break;
                    }
                case '+':
                    c8h = c8h;
                    i3 -= c8h.A0X;
                    c = ',';
                    break;
                case ',':
                    y2 = 1;
                    c = '-';
                    break;
                case '-':
                    if (y2 == 0) {
                        c = '/';
                        break;
                    } else {
                        c = '.';
                        break;
                    }
                case '.':
                    c8h = c8h;
                    c8h.setScrollState(1);
                    c = '/';
                    break;
                case '/':
                    c8h = c8h;
                    if (c8h.A0W != 1) {
                        c = 14;
                        break;
                    } else {
                        c = '0';
                        break;
                    }
                case '0':
                    c8h = c8h;
                    c8h.A0S = x - c8h.A17[0];
                    c8h.A0T = y - c8h.A17[1];
                    if (!zA29) {
                        c = ';';
                        break;
                    } else {
                        c = '1';
                        break;
                    }
                case '1':
                    i4 = i;
                    c = '2';
                    break;
                case '2':
                    if (!zA2A) {
                        c = ':';
                        break;
                    } else {
                        c = '3';
                        break;
                    }
                case '3':
                    i5 = i3;
                    c = '4';
                    break;
                case '4':
                    c8h = c8h;
                    motionEventObtain = motionEventObtain;
                    if (!c8h.A0x(i4, i5, motionEventObtain)) {
                        c = '6';
                        break;
                    } else {
                        c = '5';
                        break;
                    }
                case '5':
                    c8h = c8h;
                    c8h.getParent().requestDisallowInterceptTouchEvent(true);
                    c = '6';
                    break;
                case '6':
                    c8h = c8h;
                    if (c8h.A03 == null) {
                        c = 14;
                        break;
                    } else {
                        c = '7';
                        break;
                    }
                case '7':
                    if (i != 0) {
                        c = '9';
                        break;
                    } else {
                        c = '8';
                        break;
                    }
                case '8':
                    if (i3 == 0) {
                        c = 14;
                        break;
                    } else {
                        c = '9';
                        break;
                    }
                case '9':
                    c8h = c8h;
                    c8h.A03.A0B(c8h, i, i3);
                    c = 14;
                    break;
                case ':':
                    i5 = 0;
                    c = '4';
                    break;
                case ';':
                    i4 = 0;
                    c = '2';
                    break;
                case '<':
                    c8h = c8h;
                    i3 += c8h.A0X;
                    c = ',';
                    break;
                case '=':
                    c8h = c8h;
                    i += c8h.A0X;
                    c = '\'';
                    break;
                case '>':
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0V = motionEvent2.getPointerId(actionIndex);
                    int x2 = (int) (motionEvent2.getX(actionIndex) + 0.5f);
                    c8h.A0S = x2;
                    c8h.A0Q = x2;
                    int y3 = (int) (motionEvent2.getY(actionIndex) + 0.5f);
                    c8h.A0T = y3;
                    c8h.A0R = y3;
                    c = 14;
                    break;
                case '?':
                    c8h = c8h;
                    motionEvent2 = motionEvent2;
                    c8h.A0V = motionEvent2.getPointerId(0);
                    int x3 = (int) (motionEvent2.getX() + 0.5f);
                    c8h.A0S = x3;
                    c8h.A0Q = x3;
                    int y4 = (int) (motionEvent2.getY() + 0.5f);
                    c8h.A0T = y4;
                    c8h.A0R = y4;
                    i2 = 0;
                    if (!zA29) {
                        c = 'A';
                        break;
                    } else {
                        c = '@';
                        break;
                    }
                case '@':
                    i2 = 0 | 1;
                    c = 'A';
                    break;
                case 'A':
                    if (!zA2A) {
                        c = 'C';
                        break;
                    } else {
                        c = 'B';
                        break;
                    }
                case 'B':
                    i2 |= 2;
                    c = 'C';
                    break;
                case 'C':
                    c8h = c8h;
                    c8h.A1p(i2, 0);
                    c = 14;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        C8G c8gA05 = A05(view);
        char c = c8gA05 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0e()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8gA05 = c8gA05;
                    c8gA05.A0P();
                    c = 4;
                    break;
                case 4:
                    C8H c8h = this;
                    View view2 = view;
                    view2.clearAnimation();
                    c8h.A1b(view2);
                    super.removeDetachedView(view2, z);
                    return;
                case 5:
                    c8gA05 = c8gA05;
                    if (!c8gA05.A0h()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 6:
                    throw new IllegalArgumentException(A08(72, 75, 4) + c8gA05 + A1B());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        C8H c8h = this;
        char c = !c8h.A06.A1k(c8h, c8h.A0s, view, view2) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    view2 = view2;
                    if (view2 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    view = view;
                    view2 = view2;
                    c8h.A0j(view, view2);
                    c = 4;
                    break;
                case 4:
                    super.requestChildFocus(view, view2);
                    return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.A06.A1i(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        C8H c8h = this;
        int size = c8h.A13.size();
        int i = 0;
        int listenerCount = 2;
        while (true) {
            switch (listenerCount) {
                case 2:
                    if (i >= size) {
                        listenerCount = 4;
                        break;
                    } else {
                        listenerCount = 3;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    c8h.A13.get(i).onRequestDisallowInterceptTouchEvent(z);
                    i++;
                    listenerCount = 2;
                    break;
                case 4:
                    super.requestDisallowInterceptTouchEvent(z);
                    return;
            }
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        C8H c8h = this;
        char c = c8h.A0O == 0 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    c8h = c8h;
                    super.requestLayout();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c8h = c8h;
                    c8h.A0J = true;
                    c = 4;
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        C8H c8h = this;
        boolean zA29 = false;
        boolean zA2A = false;
        char c = c8h.A06 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    Log.e(A08(341, 12, 39), A08(240, 90, 111));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c8h = c8h;
                    if (!c8h.A0I) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    zA29 = c8h.A06.A29();
                    zA2A = c8h.A06.A2A();
                    if (!zA29) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    if (!zA2A) {
                        c = 3;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (!zA29) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (!zA2A) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    c8h = c8h;
                    c8h.A0x(i, i2, null);
                    c = 3;
                    break;
                case '\n':
                    i2 = 0;
                    c = '\t';
                    break;
                case 11:
                    i = 0;
                    c = '\b';
                    break;
            }
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w(A08(341, 12, 39), A08(147, 93, 107));
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (A12(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C8J c8j) {
        this.A09 = c8j;
        C02985s.A0A(this, this.A09);
    }

    public void setAdapter(AbstractC02102g abstractC02102g) {
        setLayoutFrozen(false);
        A0k(abstractC02102g, false, true);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC03467p interfaceC03467p) {
        C8H c8h = this;
        boolean z = false;
        char c = interfaceC03467p == c8h.A0e ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    interfaceC03467p = interfaceC03467p;
                    c8h.A0e = interfaceC03467p;
                    if (c8h.A0e == null) {
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
                    c8h = c8h;
                    c8h.setChildrenDrawingOrderEnabled(z);
                    c = 2;
                    break;
                case 6:
                    z = false;
                    c = 5;
                    break;
            }
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        C8H c8h = this;
        char c = z != c8h.A0B ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A0V();
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    c8h.A0B = z;
                    super.setClipToPadding(z);
                    if (!c8h.A0D) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.requestLayout();
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public void setHasFixedSize(boolean z) {
        this.A0E = z;
    }

    public void setItemAnimator(C7B c7b) {
        C8H c8h = this;
        char c = c8h.A05 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A05.A0C();
                    c8h.A05.A0A(null);
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    c7b = c7b;
                    c8h.A05 = c7b;
                    if (c8h.A05 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A05.A0A(c8h.A0f);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    public void setItemViewCacheSize(int i) {
        this.A0r.A0Q(i);
    }

    public void setLayoutFrozen(boolean z) {
        C8H c8h = this;
        boolean z2 = false;
        char c = z != c8h.A0I ? (char) 2 : '\b';
        while (true) {
            switch (c) {
                case 2:
                    c8h = c8h;
                    c8h.A1i(A08(882, 42, 58));
                    if (!z) {
                        c = 3;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case 3:
                    c8h = c8h;
                    z2 = false;
                    c8h.A0I = false;
                    if (!c8h.A0J) {
                        c = 7;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    if (c8h.A06 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    if (c8h.A04 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c8h = c8h;
                    c8h.requestLayout();
                    c = 7;
                    break;
                case 7:
                    c8h = c8h;
                    c8h.A0J = z2;
                    c = '\b';
                    break;
                case '\b':
                    return;
                case '\t':
                    c8h = c8h;
                    z2 = false;
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent cancelEvent = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    c8h.onTouchEvent(cancelEvent);
                    c8h.A0I = true;
                    c8h.A0n = true;
                    c8h.A1K();
                    c = '\b';
                    break;
            }
        }
    }

    public void setLayoutManager(C7N c7n) {
        C8H c8h = this;
        char c = c7n == c8h.A06 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A1K();
                    if (c8h.A06 == null) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    if (c8h.A05 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c8h = c8h;
                    c8h.A05.A0C();
                    c = 6;
                    break;
                case 6:
                    c8h = c8h;
                    c8h.A06.A1N(c8h.A0r);
                    c8h.A06.A1L(c8h.A0r);
                    c8h.A0r.A0P();
                    if (!c8h.A0F) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c8h = c8h;
                    c8h.A06.A1Z(c8h, c8h.A0r);
                    c = '\b';
                    break;
                case '\b':
                    c8h = c8h;
                    c8h.A06.A1U(null);
                    c8h.A06 = null;
                    c = '\t';
                    break;
                case '\t':
                    c8h = c8h;
                    c7n = c7n;
                    c8h.A01.A0B();
                    c8h.A06 = c7n;
                    if (c7n == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7n = c7n;
                    if (c7n.A03 == null) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    C7N c7n2 = c7n;
                    throw new IllegalArgumentException(A08(1893, 14, 94) + c7n2 + A08(1212, 39, 79) + c7n2.A03.A1B());
                case '\f':
                    c8h = c8h;
                    c8h.A0r.A0P();
                    c = '\t';
                    break;
                case '\r':
                    c8h = c8h;
                    c8h.A06.A1U(c8h);
                    if (!c8h.A0F) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c8h = c8h;
                    c8h.A06.A1S(c8h);
                    c = 15;
                    break;
                case 15:
                    c8h = c8h;
                    c8h.A0r.A0O();
                    c8h.requestLayout();
                    c = 2;
                    break;
            }
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().A04(z);
    }

    public void setOnFlingListener(@Nullable AbstractC03347d abstractC03347d) {
        this.A0g = abstractC03347d;
    }

    @Deprecated
    public void setOnScrollListener(AnonymousClass82 anonymousClass82) {
        this.A0i = anonymousClass82;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.A0o = z;
    }

    public void setRecycledViewPool(AnonymousClass84 anonymousClass84) {
        this.A0r.A0Z(anonymousClass84);
    }

    public void setRecyclerListener(AnonymousClass86 anonymousClass86) {
        this.A07 = anonymousClass86;
    }

    public void setScrollState(int i) {
        C8H c8h = this;
        char c = i == c8h.A0W ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c8h = c8h;
                    c8h.A0W = i;
                    if (i == 2) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c8h = c8h;
                    c8h.A0L();
                    c = 5;
                    break;
                case 5:
                    c8h = c8h;
                    c8h.A0a(i);
                    c = 2;
                    break;
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        char c;
        C8H c8h = this;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(c8h.getContext());
        switch (i) {
            case 0:
                c = 3;
                break;
            case 1:
                c = 5;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    Log.w(A08(341, 12, 39), A08(1054, 47, 100) + i + A08(1907, 21, 124));
                    c = 3;
                    break;
                case 3:
                    c8h = c8h;
                    viewConfiguration = viewConfiguration;
                    c8h.A0X = viewConfiguration.getScaledTouchSlop();
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c8h = c8h;
                    viewConfiguration = viewConfiguration;
                    c8h.A0X = viewConfiguration.getScaledPagingTouchSlop();
                    c = 4;
                    break;
            }
        }
    }

    public void setViewCacheExtension(C8E c8e) {
        this.A0r.A0a(c8e);
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().A0A(i);
    }

    @Override // android.view.View, com.facebook.ads.redexgen.X.C5O
    public final void stopNestedScroll() {
        getScrollingChildHelper().A02();
    }
}
