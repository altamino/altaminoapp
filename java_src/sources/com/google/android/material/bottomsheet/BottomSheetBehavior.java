package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.internal.u;
import d3.j;
import d3.k;
import d3.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final int CORNER_ANIMATION_DURATION = 500;
    private static final int DEF_STYLE_RES = k.Widget_Design_BottomSheet_Modal;
    private static final float HIDE_FRICTION = 0.1f;
    private static final float HIDE_THRESHOLD = 0.5f;
    private static final int NO_MAX_SIZE = -1;
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int SAVE_ALL = -1;
    public static final int SAVE_FIT_TO_CONTENTS = 2;
    public static final int SAVE_HIDEABLE = 4;
    public static final int SAVE_NONE = 0;
    public static final int SAVE_PEEK_HEIGHT = 1;
    public static final int SAVE_SKIP_COLLAPSED = 8;
    private static final int SIGNIFICANT_VEL_THRESHOLD = 500;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "BottomSheetBehavior";
    int activePointerId;

    @Nullable
    private ColorStateList backgroundTint;

    @NonNull
    private final ArrayList<f> callbacks;
    private int childHeight;
    int collapsedOffset;
    private final ViewDragHelper.Callback dragCallback;
    private boolean draggable;
    float elevation;
    private int expandHalfwayActionId;
    int expandedOffset;
    private boolean fitToContents;
    int fitToContentsOffset;
    private int gestureInsetBottom;
    private boolean gestureInsetBottomIgnored;
    int halfExpandedOffset;
    float halfExpandedRatio;
    boolean hideable;
    private boolean ignoreEvents;

    @Nullable
    private Map<View, Integer> importantForAccessibilityMap;
    private int initialY;
    private int insetBottom;
    private int insetTop;

    @Nullable
    private ValueAnimator interpolatorAnimator;
    private boolean isShapeExpanded;
    private int lastNestedScrollDy;
    int lastStableState;
    private boolean marginLeftSystemWindowInsets;
    private boolean marginRightSystemWindowInsets;
    private boolean marginTopSystemWindowInsets;
    private com.google.android.material.shape.g materialShapeDrawable;
    private int maxHeight;
    private int maxWidth;
    private float maximumVelocity;
    private boolean nestedScrolled;

    @Nullable
    WeakReference<View> nestedScrollingChildRef;
    private boolean paddingBottomSystemWindowInsets;
    private boolean paddingLeftSystemWindowInsets;
    private boolean paddingRightSystemWindowInsets;
    private boolean paddingTopSystemWindowInsets;
    int parentHeight;
    int parentWidth;
    private int peekHeight;
    private boolean peekHeightAuto;
    private int peekHeightGestureInsetBuffer;
    private int peekHeightMin;
    private int saveFlags;
    private com.google.android.material.shape.k shapeAppearanceModelDefault;
    private boolean skipCollapsed;
    int state;
    private final BottomSheetBehavior<V>.g stateSettlingTracker;
    boolean touchingScrollingChild;
    private boolean updateImportantForAccessibilityOnSiblings;

    @Nullable
    private VelocityTracker velocityTracker;

    @Nullable
    ViewDragHelper viewDragHelper;

    @Nullable
    WeakReference<V> viewRef;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }

            a() {
            }
        }

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.state;
            this.peekHeight = ((BottomSheetBehavior) bottomSheetBehavior).peekHeight;
            this.fitToContents = ((BottomSheetBehavior) bottomSheetBehavior).fitToContents;
            this.hideable = bottomSheetBehavior.hideable;
            this.skipCollapsed = ((BottomSheetBehavior) bottomSheetBehavior).skipCollapsed;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i10) {
            super(parcelable);
            this.state = i10;
        }
    }

    class a implements Runnable {
        final /* synthetic */ View val$child;
        final /* synthetic */ int val$finalState;

        a(View view, int i10) {
            this.val$child = view;
            this.val$finalState = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.h0(this.val$child, this.val$finalState, false);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.materialShapeDrawable != null) {
                BottomSheetBehavior.this.materialShapeDrawable.a0(fFloatValue);
            }
        }
    }

    class c implements u.e {
        final /* synthetic */ boolean val$shouldHandleGestureInsets;

        c(boolean z6) {
            this.val$shouldHandleGestureInsets = z6;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0080  */
        /* JADX WARN: Code duplicated, block: B:28:0x0092  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a4 A[DONT_INVERT] */
        @Override // com.google.android.material.internal.u.e
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, u.f fVar) {
            boolean z6;
            int i10;
            int i11;
            Insets insetsF = windowInsetsCompat.f(WindowInsetsCompat.Type.h());
            Insets insetsF2 = windowInsetsCompat.f(WindowInsetsCompat.Type.e());
            BottomSheetBehavior.this.insetTop = insetsF.top;
            boolean zG = u.g(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.paddingBottomSystemWindowInsets) {
                BottomSheetBehavior.this.insetBottom = windowInsetsCompat.j();
                paddingBottom = fVar.bottom + BottomSheetBehavior.this.insetBottom;
            }
            if (BottomSheetBehavior.this.paddingLeftSystemWindowInsets) {
                if (zG) {
                    i11 = fVar.end;
                } else {
                    i11 = fVar.start;
                }
                paddingLeft = i11 + insetsF.left;
            }
            if (BottomSheetBehavior.this.paddingRightSystemWindowInsets) {
                if (zG) {
                    i10 = fVar.start;
                } else {
                    i10 = fVar.end;
                }
                paddingRight = i10 + insetsF.right;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            boolean z10 = true;
            if (BottomSheetBehavior.this.marginLeftSystemWindowInsets) {
                int i12 = marginLayoutParams.leftMargin;
                int i13 = insetsF.left;
                if (i12 != i13) {
                    marginLayoutParams.leftMargin = i13;
                    z6 = true;
                } else {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
            if (BottomSheetBehavior.this.marginRightSystemWindowInsets) {
                int i14 = marginLayoutParams.rightMargin;
                int i15 = insetsF.right;
                if (i14 != i15) {
                    marginLayoutParams.rightMargin = i15;
                } else {
                    z10 = z6;
                }
            } else {
                z10 = z6;
            }
            if (BottomSheetBehavior.this.marginTopSystemWindowInsets) {
                int i16 = marginLayoutParams.topMargin;
                int i17 = insetsF.top;
                if (i16 != i17) {
                    marginLayoutParams.topMargin = i17;
                } else if (z10) {
                }
                view.setLayoutParams(marginLayoutParams);
            } else if (z10) {
                view.setLayoutParams(marginLayoutParams);
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.val$shouldHandleGestureInsets) {
                BottomSheetBehavior.this.gestureInsetBottom = insetsF2.bottom;
            }
            if (BottomSheetBehavior.this.paddingBottomSystemWindowInsets || this.val$shouldHandleGestureInsets) {
                BottomSheetBehavior.this.l0(false);
            }
            return windowInsetsCompat;
        }
    }

    class d extends ViewDragHelper.Callback {
        private long viewCapturedMillis;

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && BottomSheetBehavior.this.draggable) {
                BottomSheetBehavior.this.a0(1);
            }
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00a7  */
        /* JADX WARN: Code duplicated, block: B:6:0x0010  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f6) {
            int i10 = 6;
            if (f6 >= 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.hideable && bottomSheetBehavior.e0(view, f6)) {
                    if ((Math.abs(f) < Math.abs(f6) && f6 > 500.0f) || a(view)) {
                        i10 = 5;
                    } else if (BottomSheetBehavior.this.fitToContents || Math.abs(view.getTop() - BottomSheetBehavior.this.C()) < Math.abs(view.getTop() - BottomSheetBehavior.this.halfExpandedOffset)) {
                        i10 = 3;
                    }
                } else if (f6 == 0.0f || Math.abs(f) > Math.abs(f6)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.fitToContents) {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i11 = bottomSheetBehavior2.halfExpandedOffset;
                        if (top < i11) {
                            if (top < Math.abs(top - bottomSheetBehavior2.collapsedOffset)) {
                                i10 = 3;
                            } else if (BottomSheetBehavior.this.f0()) {
                                i10 = 4;
                            }
                        } else if (Math.abs(top - i11) >= Math.abs(top - BottomSheetBehavior.this.collapsedOffset) || BottomSheetBehavior.this.f0()) {
                            i10 = 4;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.fitToContentsOffset) < Math.abs(top - BottomSheetBehavior.this.collapsedOffset)) {
                        i10 = 3;
                    } else {
                        i10 = 4;
                    }
                } else if (BottomSheetBehavior.this.fitToContents) {
                    i10 = 4;
                } else {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - BottomSheetBehavior.this.halfExpandedOffset) >= Math.abs(top2 - BottomSheetBehavior.this.collapsedOffset) || BottomSheetBehavior.this.f0()) {
                        i10 = 4;
                    }
                }
            } else if (BottomSheetBehavior.this.fitToContents) {
                i10 = 3;
            } else {
                int top3 = view.getTop();
                long jCurrentTimeMillis = System.currentTimeMillis() - this.viewCapturedMillis;
                if (BottomSheetBehavior.this.f0()) {
                    BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior3.c0(jCurrentTimeMillis, (top3 * 100.0f) / bottomSheetBehavior3.parentHeight)) {
                        i10 = 4;
                    }
                } else if (top3 <= BottomSheetBehavior.this.halfExpandedOffset) {
                }
                i10 = 3;
            }
            BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
            bottomSheetBehavior4.h0(view, i10, bottomSheetBehavior4.g0());
        }

        d() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            int iC = BottomSheetBehavior.this.C();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.b(i10, iC, bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.hideable ? bottomSheetBehavior.parentHeight : bottomSheetBehavior.collapsedOffset;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            BottomSheetBehavior.this.y(i11);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i10) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i11 = bottomSheetBehavior.state;
            if (i11 == 1 || bottomSheetBehavior.touchingScrollingChild) {
                return false;
            }
            if (i11 == 3 && bottomSheetBehavior.activePointerId == i10) {
                WeakReference<View> weakReference = bottomSheetBehavior.nestedScrollingChildRef;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.viewCapturedMillis = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.viewRef;
            return weakReference2 != null && weakReference2.get() == view;
        }

        private boolean a(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (top > (bottomSheetBehavior.parentHeight + bottomSheetBehavior.C()) / 2) {
                return true;
            }
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            return view.getLeft();
        }
    }

    class e implements AccessibilityViewCommand {
        final /* synthetic */ int val$state;

        e(int i10) {
            this.val$state = i10;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.Z(this.val$state);
            return true;
        }
    }

    public static abstract class f {
        void onLayout(@NonNull View view) {
        }

        public abstract void onSlide(@NonNull View view, float f);

        public abstract void onStateChanged(@NonNull View view, int i10);
    }

    private class g {
        private final Runnable continueSettlingRunnable;
        private boolean isContinueSettlingRunnablePosted;
        private int targetState;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.isContinueSettlingRunnablePosted = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.viewDragHelper;
                if (viewDragHelper != null && viewDragHelper.n(true)) {
                    g gVar = g.this;
                    gVar.c(gVar.targetState);
                    return;
                }
                g gVar2 = g.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.state == 2) {
                    bottomSheetBehavior.a0(gVar2.targetState);
                }
            }
        }

        private g() {
            this.continueSettlingRunnable = new a();
        }

        void c(int i10) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.viewRef;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.targetState = i10;
            if (this.isContinueSettlingRunnablePosted) {
                return;
            }
            ViewCompat.l0(BottomSheetBehavior.this.viewRef.get(), this.continueSettlingRunnable);
            this.isContinueSettlingRunnablePosted = true;
        }

        /* synthetic */ g(BottomSheetBehavior bottomSheetBehavior, a aVar) {
            this();
        }
    }

    public BottomSheetBehavior() {
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new g(this, null);
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.lastStableState = 4;
        this.callbacks = new ArrayList<>();
        this.expandHalfwayActionId = -1;
        this.dragCallback = new d();
    }

    private int D(int i10) {
        if (i10 == 3) {
            return C();
        }
        if (i10 == 4) {
            return this.collapsedOffset;
        }
        if (i10 == 5) {
            return this.parentHeight;
        }
        if (i10 == 6) {
            return this.halfExpandedOffset;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i10);
    }

    private void I(V v5, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i10) {
        ViewCompat.p0(v5, accessibilityActionCompat, null, v(i10));
    }

    private void J() {
        this.activePointerId = -1;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    private boolean d0() {
        return this.viewDragHelper != null && (this.draggable || this.state == 1);
    }

    private void j0(int i10) {
        ValueAnimator valueAnimator;
        if (i10 == 2) {
            return;
        }
        boolean z6 = i10 == 3;
        if (this.isShapeExpanded != z6) {
            this.isShapeExpanded = z6;
            if (this.materialShapeDrawable == null || (valueAnimator = this.interpolatorAnimator) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.interpolatorAnimator.reverse();
                return;
            }
            float f6 = z6 ? 0.0f : 1.0f;
            this.interpolatorAnimator.setFloatValues(1.0f - f6, f6);
            this.interpolatorAnimator.start();
        }
    }

    private void t() {
        this.halfExpandedOffset = (int) (this.parentHeight * (1.0f - this.halfExpandedRatio));
    }

    private void x() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.interpolatorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.interpolatorAnimator.addUpdateListener(new b());
    }

    public boolean F() {
        return this.gestureInsetBottomIgnored;
    }

    @RestrictTo
    public boolean H() {
        return true;
    }

    public void N(boolean z6) {
        this.draggable = z6;
    }

    public void Q(boolean z6) {
        this.gestureInsetBottomIgnored = z6;
    }

    public void R(@FloatRange float f6) {
        if (f6 <= 0.0f || f6 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.halfExpandedRatio = f6;
        if (this.viewRef != null) {
            t();
        }
    }

    public void T(@Px int i10) {
        this.maxHeight = i10;
    }

    public void U(@Px int i10) {
        this.maxWidth = i10;
    }

    public void V(int i10) {
        W(i10, false);
    }

    public final void W(int i10, boolean z6) {
        if (i10 == -1) {
            if (this.peekHeightAuto) {
                return;
            } else {
                this.peekHeightAuto = true;
            }
        } else {
            if (!this.peekHeightAuto && this.peekHeight == i10) {
                return;
            }
            this.peekHeightAuto = false;
            this.peekHeight = Math.max(0, i10);
        }
        l0(z6);
    }

    public void X(int i10) {
        this.saveFlags = i10;
    }

    public void Y(boolean z6) {
        this.skipCollapsed = z6;
    }

    public void Z(int i10) {
        if (i10 == 1 || i10 == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i10 == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!this.hideable && i10 == 5) {
            Log.w(TAG, "Cannot set state: " + i10);
            return;
        }
        int i11 = (i10 == 6 && this.fitToContents && D(i10) <= this.fitToContentsOffset) ? 3 : i10;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || weakReference.get() == null) {
            a0(i10);
        } else {
            V v5 = this.viewRef.get();
            L(v5, new a(v5, i11));
        }
    }

    @RestrictTo
    public boolean c0(long j6, @FloatRange float f6) {
        return false;
    }

    @RestrictTo
    public boolean f0() {
        return false;
    }

    @RestrictTo
    public boolean g0() {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.nestedScrollingChildRef;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!H() || view == view2) {
            int top = v5.getTop();
            int i13 = top - i11;
            if (i11 > 0) {
                if (i13 < C()) {
                    int iC = top - C();
                    iArr[1] = iC;
                    ViewCompat.e0(v5, -iC);
                    a0(3);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.e0(v5, -i11);
                    a0(1);
                }
            } else if (i11 < 0 && !view.canScrollVertically(-1)) {
                int i14 = this.collapsedOffset;
                if (i13 > i14 && !this.hideable) {
                    int i15 = top - i14;
                    iArr[1] = i15;
                    ViewCompat.e0(v5, -i15);
                    a0(4);
                } else {
                    if (!this.draggable) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.e0(v5, -i11);
                    a0(1);
                }
            }
            y(v5.getTop());
            this.lastNestedScrollDy = i11;
            this.nestedScrolled = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, @NonNull View view2, int i10, int i11) {
        this.lastNestedScrollDy = 0;
        this.nestedScrolled = false;
        return (i10 & 2) != 0;
    }

    private float E() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        return this.velocityTracker.getYVelocity(this.activePointerId);
    }

    private void K(@NonNull SavedState savedState) {
        int i10 = this.saveFlags;
        if (i10 == 0) {
            return;
        }
        if (i10 == -1 || (i10 & 1) == 1) {
            this.peekHeight = savedState.peekHeight;
        }
        if (i10 == -1 || (i10 & 2) == 2) {
            this.fitToContents = savedState.fitToContents;
        }
        if (i10 == -1 || (i10 & 4) == 4) {
            this.hideable = savedState.hideable;
        }
        if (i10 == -1 || (i10 & 8) == 8) {
            this.skipCollapsed = savedState.skipCollapsed;
        }
    }

    private void b0(@NonNull View view) {
        boolean z6 = (Build.VERSION.SDK_INT < 29 || F() || this.peekHeightAuto) ? false : true;
        if (this.paddingBottomSystemWindowInsets || this.paddingLeftSystemWindowInsets || this.paddingRightSystemWindowInsets || this.marginLeftSystemWindowInsets || this.marginRightSystemWindowInsets || this.marginTopSystemWindowInsets || z6) {
            u.c(view, new c(z6));
        }
    }

    private void i0() {
        V v5;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v5 = weakReference.get()) == null) {
            return;
        }
        ViewCompat.n0(v5, 524288);
        ViewCompat.n0(v5, 262144);
        ViewCompat.n0(v5, 1048576);
        int i10 = this.expandHalfwayActionId;
        if (i10 != -1) {
            ViewCompat.n0(v5, i10);
        }
        if (!this.fitToContents && this.state != 6) {
            this.expandHalfwayActionId = r(v5, j.bottomsheet_action_expand_halfway, 6);
        }
        if (this.hideable && this.state != 5) {
            I(v5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i11 = this.state;
        if (i11 == 3) {
            I(v5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.fitToContents ? 4 : 6);
            return;
        }
        if (i11 == 4) {
            I(v5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.fitToContents ? 3 : 6);
        } else {
            if (i11 != 6) {
                return;
            }
            I(v5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            I(v5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void k0(boolean z6) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z6) {
                if (this.importantForAccessibilityMap != null) {
                    return;
                } else {
                    this.importantForAccessibilityMap = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.viewRef.get()) {
                    if (z6) {
                        this.importantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.updateImportantForAccessibilityOnSiblings) {
                            ViewCompat.F0(childAt, 4);
                        }
                    } else if (this.updateImportantForAccessibilityOnSiblings && (map = this.importantForAccessibilityMap) != null && map.containsKey(childAt)) {
                        ViewCompat.F0(childAt, this.importantForAccessibilityMap.get(childAt).intValue());
                    }
                }
            }
            if (!z6) {
                this.importantForAccessibilityMap = null;
            } else if (this.updateImportantForAccessibilityOnSiblings) {
                this.viewRef.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(boolean z6) {
        V v5;
        if (this.viewRef != null) {
            s();
            if (this.state != 4 || (v5 = this.viewRef.get()) == null) {
                return;
            }
            if (z6) {
                Z(4);
            } else {
                v5.requestLayout();
            }
        }
    }

    private int u() {
        int i10;
        if (this.peekHeightAuto) {
            return Math.min(Math.max(this.peekHeightMin, this.parentHeight - ((this.parentWidth * 9) / 16)), this.childHeight) + this.insetBottom;
        }
        return (this.gestureInsetBottomIgnored || this.paddingBottomSystemWindowInsets || (i10 = this.gestureInsetBottom) <= 0) ? this.peekHeight + this.insetBottom : Math.max(this.peekHeight, i10 + this.peekHeightGestureInsetBuffer);
    }

    private AccessibilityViewCommand v(int i10) {
        return new e(i10);
    }

    private void w(@NonNull Context context) {
        if (this.shapeAppearanceModelDefault == null) {
            return;
        }
        com.google.android.material.shape.g gVar = new com.google.android.material.shape.g(this.shapeAppearanceModelDefault);
        this.materialShapeDrawable = gVar;
        gVar.O(context);
        ColorStateList colorStateList = this.backgroundTint;
        if (colorStateList != null) {
            this.materialShapeDrawable.Z(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.materialShapeDrawable.setTint(typedValue.data);
    }

    public int C() {
        if (this.fitToContents) {
            return this.fitToContentsOffset;
        }
        return Math.max(this.expandedOffset, this.paddingTopSystemWindowInsets ? 0 : this.insetTop);
    }

    @Deprecated
    public void M(f fVar) {
        Log.w(TAG, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        this.callbacks.clear();
        if (fVar != null) {
            this.callbacks.add(fVar);
        }
    }

    public void O(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.expandedOffset = i10;
    }

    public void P(boolean z6) {
        if (this.fitToContents == z6) {
            return;
        }
        this.fitToContents = z6;
        if (this.viewRef != null) {
            s();
        }
        a0((this.fitToContents && this.state == 6) ? 3 : this.state);
        i0();
    }

    public void S(boolean z6) {
        if (this.hideable != z6) {
            this.hideable = z6;
            if (!z6 && this.state == 5) {
                Z(4);
            }
            i0();
        }
    }

    void a0(int i10) {
        V v5;
        if (this.state == i10) {
            return;
        }
        this.state = i10;
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.hideable && i10 == 5)) {
            this.lastStableState = i10;
        }
        WeakReference<V> weakReference = this.viewRef;
        if (weakReference == null || (v5 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            k0(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            k0(false);
        }
        j0(i10);
        for (int i11 = 0; i11 < this.callbacks.size(); i11++) {
            this.callbacks.get(i11).onStateChanged(v5, i10);
        }
        i0();
    }

    boolean e0(@NonNull View view, float f6) {
        if (this.skipCollapsed) {
            return true;
        }
        if (view.getTop() < this.collapsedOffset) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f6 * 0.1f)) - ((float) this.collapsedOffset)) / ((float) u()) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v5, savedState.getSuperState());
        K(savedState);
        int i10 = savedState.state;
        if (i10 == 1 || i10 == 2) {
            this.state = 4;
            this.lastStableState = 4;
        } else {
            this.state = i10;
            this.lastStableState = i10;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v5), (BottomSheetBehavior<?>) this);
    }

    void y(int i10) {
        float f6;
        float fC;
        V v5 = this.viewRef.get();
        if (v5 == null || this.callbacks.isEmpty()) {
            return;
        }
        int i11 = this.collapsedOffset;
        if (i10 > i11 || i11 == C()) {
            int i12 = this.collapsedOffset;
            f6 = i12 - i10;
            fC = this.parentHeight - i12;
        } else {
            int i13 = this.collapsedOffset;
            f6 = i13 - i10;
            fC = i13 - C();
        }
        float f7 = f6 / fC;
        for (int i14 = 0; i14 < this.callbacks.size(); i14++) {
            this.callbacks.get(i14).onSlide(v5, f7);
        }
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> A(@NonNull V v5) {
        ViewGroup.LayoutParams layoutParams = v5.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) layoutParams).f();
            if (behaviorF instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behaviorF;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    private int B(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode != 1073741824) {
            if (size != 0) {
                i12 = Math.min(size, i12);
            }
            return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
    }

    private boolean G(V v5) {
        ViewParent parent = v5.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.W(v5)) {
            return true;
        }
        return false;
    }

    private void L(V v5, Runnable runnable) {
        if (G(v5)) {
            v5.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(View view, int i10, boolean z6) {
        int iD = D(i10);
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null && (!z6 ? viewDragHelper.R(view, view.getLeft(), iD) : viewDragHelper.P(view.getLeft(), iD))) {
            a0(2);
            j0(i10);
            this.stateSettlingTracker.c(i10);
            return;
        }
        a0(i10);
    }

    private int r(V v5, @StringRes int i10, int i11) {
        return ViewCompat.c(v5, v5.getResources().getString(i10), v(i11));
    }

    private void s() {
        int iU = u();
        if (this.fitToContents) {
            this.collapsedOffset = Math.max(this.parentHeight - iU, this.fitToContentsOffset);
        } else {
            this.collapsedOffset = this.parentHeight - iU;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.viewRef = null;
        this.viewDragHelper = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
        boolean z6;
        View view;
        ViewDragHelper viewDragHelper;
        if (v5.isShown() && this.draggable) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                J();
            }
            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain();
            }
            this.velocityTracker.addMovement(motionEvent);
            View view2 = null;
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    this.touchingScrollingChild = false;
                    this.activePointerId = -1;
                    if (this.ignoreEvents) {
                        this.ignoreEvents = false;
                        return false;
                    }
                }
            } else {
                int x6 = (int) motionEvent.getX();
                this.initialY = (int) motionEvent.getY();
                if (this.state != 2) {
                    WeakReference<View> weakReference = this.nestedScrollingChildRef;
                    if (weakReference != null) {
                        view = weakReference.get();
                    } else {
                        view = null;
                    }
                    if (view != null && coordinatorLayout.isPointInChildBounds(view, x6, this.initialY)) {
                        this.activePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.touchingScrollingChild = true;
                    }
                }
                if (this.activePointerId == -1 && !coordinatorLayout.isPointInChildBounds(v5, x6, this.initialY)) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.ignoreEvents = z6;
            }
            if (!this.ignoreEvents && (viewDragHelper = this.viewDragHelper) != null && viewDragHelper.Q(motionEvent)) {
                return true;
            }
            WeakReference<View> weakReference2 = this.nestedScrollingChildRef;
            if (weakReference2 != null) {
                view2 = weakReference2.get();
            }
            if (actionMasked != 2 || view2 == null || this.ignoreEvents || this.state == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.viewDragHelper == null || Math.abs(this.initialY - motionEvent.getY()) <= this.viewDragHelper.A()) {
                return false;
            }
            return true;
        }
        this.ignoreEvents = true;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10) {
        boolean z6;
        float f6;
        if (ViewCompat.A(coordinatorLayout) && !ViewCompat.A(v5)) {
            v5.setFitsSystemWindows(true);
        }
        if (this.viewRef == null) {
            this.peekHeightMin = coordinatorLayout.getResources().getDimensionPixelSize(d3.d.design_bottom_sheet_peek_height_min);
            b0(v5);
            this.viewRef = new WeakReference<>(v5);
            com.google.android.material.shape.g gVar = this.materialShapeDrawable;
            if (gVar != null) {
                ViewCompat.y0(v5, gVar);
                com.google.android.material.shape.g gVar2 = this.materialShapeDrawable;
                float fY = this.elevation;
                if (fY == -1.0f) {
                    fY = ViewCompat.y(v5);
                }
                gVar2.Y(fY);
                if (this.state == 3) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.isShapeExpanded = z6;
                com.google.android.material.shape.g gVar3 = this.materialShapeDrawable;
                if (z6) {
                    f6 = 0.0f;
                } else {
                    f6 = 1.0f;
                }
                gVar3.a0(f6);
            } else {
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    ViewCompat.z0(v5, colorStateList);
                }
            }
            i0();
            if (ViewCompat.B(v5) == 0) {
                ViewCompat.F0(v5, 1);
            }
        }
        if (this.viewDragHelper == null) {
            this.viewDragHelper = ViewDragHelper.p(coordinatorLayout, this.dragCallback);
        }
        int top = v5.getTop();
        coordinatorLayout.onLayoutChild(v5, i10);
        this.parentWidth = coordinatorLayout.getWidth();
        this.parentHeight = coordinatorLayout.getHeight();
        int height = v5.getHeight();
        this.childHeight = height;
        int i11 = this.parentHeight;
        int i12 = i11 - height;
        int i13 = this.insetTop;
        if (i12 < i13) {
            if (this.paddingTopSystemWindowInsets) {
                this.childHeight = i11;
            } else {
                this.childHeight = i11 - i13;
            }
        }
        this.fitToContentsOffset = Math.max(0, i11 - this.childHeight);
        t();
        s();
        int i14 = this.state;
        if (i14 == 3) {
            ViewCompat.e0(v5, C());
        } else if (i14 == 6) {
            ViewCompat.e0(v5, this.halfExpandedOffset);
        } else if (this.hideable && i14 == 5) {
            ViewCompat.e0(v5, this.parentHeight);
        } else if (i14 == 4) {
            ViewCompat.e0(v5, this.collapsedOffset);
        } else if (i14 == 1 || i14 == 2) {
            ViewCompat.e0(v5, top - v5.getTop());
        }
        this.nestedScrollingChildRef = new WeakReference<>(z(v5));
        for (int i15 = 0; i15 < this.callbacks.size(); i15++) {
            this.callbacks.get(i15).onLayout(v5);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v5.getLayoutParams();
        v5.measure(B(i10, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, this.maxWidth, marginLayoutParams.width), B(i12, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, this.maxHeight, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, float f6, float f7) {
        WeakReference<View> weakReference;
        if (!H() || (weakReference = this.nestedScrollingChildRef) == null || view != weakReference.get()) {
            return false;
        }
        if (this.state == 3 && !super.onNestedPreFling(coordinatorLayout, v5, view, f6, f7)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a9  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull View view, int i10) {
        WeakReference<View> weakReference;
        int i11 = 3;
        if (v5.getTop() == C()) {
            a0(3);
            return;
        }
        if (H() && ((weakReference = this.nestedScrollingChildRef) == null || view != weakReference.get() || !this.nestedScrolled)) {
            return;
        }
        if (this.lastNestedScrollDy > 0) {
            if (!this.fitToContents && v5.getTop() > this.halfExpandedOffset) {
                i11 = 6;
            }
        } else if (this.hideable && e0(v5, E())) {
            i11 = 5;
        } else if (this.lastNestedScrollDy == 0) {
            int top = v5.getTop();
            if (this.fitToContents) {
                if (Math.abs(top - this.fitToContentsOffset) >= Math.abs(top - this.collapsedOffset)) {
                    i11 = 4;
                }
            } else {
                int i12 = this.halfExpandedOffset;
                if (top < i12) {
                    if (top >= Math.abs(top - this.collapsedOffset)) {
                        if (f0()) {
                            i11 = 4;
                        } else {
                            i11 = 6;
                        }
                    }
                } else if (Math.abs(top - i12) >= Math.abs(top - this.collapsedOffset)) {
                    i11 = 4;
                } else {
                    i11 = 6;
                }
            }
        } else {
            if (!this.fitToContents) {
                int top2 = v5.getTop();
                if (Math.abs(top2 - this.halfExpandedOffset) < Math.abs(top2 - this.collapsedOffset)) {
                    i11 = 6;
                }
            }
            i11 = 4;
        }
        h0(v5, i11, false);
        this.nestedScrolled = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
        if (!v5.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.state == 1 && actionMasked == 0) {
            return true;
        }
        if (d0()) {
            this.viewDragHelper.G(motionEvent);
        }
        if (actionMasked == 0) {
            J();
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (d0() && actionMasked == 2 && !this.ignoreEvents && Math.abs(this.initialY - motionEvent.getY()) > this.viewDragHelper.A()) {
            this.viewDragHelper.c(v5, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.ignoreEvents;
    }

    @Nullable
    @VisibleForTesting
    View z(View view) {
        if (ViewCompat.Y(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View viewZ = z(viewGroup.getChildAt(i10));
                if (viewZ != null) {
                    return viewZ;
                }
            }
            return null;
        }
        return null;
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.saveFlags = 0;
        this.fitToContents = true;
        this.updateImportantForAccessibilityOnSiblings = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.stateSettlingTracker = new g(this, null);
        this.halfExpandedRatio = 0.5f;
        this.elevation = -1.0f;
        this.draggable = true;
        this.state = 4;
        this.lastStableState = 4;
        this.callbacks = new ArrayList<>();
        this.expandHalfwayActionId = -1;
        this.dragCallback = new d();
        this.peekHeightGestureInsetBuffer = context.getResources().getDimensionPixelSize(d3.d.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.BottomSheetBehavior_Layout);
        int i11 = l.BottomSheetBehavior_Layout_backgroundTint;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.backgroundTint = com.google.android.material.resources.c.a(context, typedArrayObtainStyledAttributes, i11);
        }
        if (typedArrayObtainStyledAttributes.hasValue(l.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.shapeAppearanceModelDefault = com.google.android.material.shape.k.e(context, attributeSet, d3.b.bottomSheetStyle, DEF_STYLE_RES).m();
        }
        w(context);
        x();
        this.elevation = typedArrayObtainStyledAttributes.getDimension(l.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        int i12 = l.BottomSheetBehavior_Layout_android_maxWidth;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            U(typedArrayObtainStyledAttributes.getDimensionPixelSize(i12, -1));
        }
        int i13 = l.BottomSheetBehavior_Layout_android_maxHeight;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            T(typedArrayObtainStyledAttributes.getDimensionPixelSize(i13, -1));
        }
        int i14 = l.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i14);
        if (typedValuePeekValue != null && (i10 = typedValuePeekValue.data) == -1) {
            V(i10);
        } else {
            V(typedArrayObtainStyledAttributes.getDimensionPixelSize(i14, -1));
        }
        S(typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_behavior_hideable, false));
        Q(typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        P(typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        Y(typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        N(typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_behavior_draggable, true));
        X(typedArrayObtainStyledAttributes.getInt(l.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        R(typedArrayObtainStyledAttributes.getFloat(l.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        int i15 = l.BottomSheetBehavior_Layout_behavior_expandedOffset;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i15);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            O(typedValuePeekValue2.data);
        } else {
            O(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i15, 0));
        }
        this.paddingBottomSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.paddingLeftSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.paddingRightSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.paddingTopSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.marginLeftSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.marginRightSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.marginTopSystemWindowInsets = typedArrayObtainStyledAttributes.getBoolean(l.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        typedArrayObtainStyledAttributes.recycle();
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
