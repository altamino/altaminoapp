package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.s;
import d3.k;
import d3.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    private static final int DEF_STYLE_RES = k.Widget_Design_AppBarLayout;
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    private Behavior behavior;
    private int currentOffset;
    private int downPreScrollRange;
    private int downScrollRange;

    @Nullable
    private ValueAnimator elevationOverlayAnimator;
    private boolean haveChildWithInterpolator;

    @Nullable
    private WindowInsetsCompat lastInsets;
    private boolean liftOnScroll;
    private final List<g> liftOnScrollListeners;

    @Nullable
    private WeakReference<View> liftOnScrollTargetView;

    @IdRes
    private int liftOnScrollTargetViewId;
    private boolean liftable;
    private boolean liftableOverride;
    private boolean lifted;
    private List<c> listeners;
    private int pendingAction;

    @Nullable
    private Drawable statusBarForeground;
    private int[] tmpStatesArray;
    private int totalScrollRange;

    protected static class BaseBehavior<T extends AppBarLayout> extends com.google.android.material.appbar.f<T> {
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        private boolean coordinatorLayoutA11yScrollable;

        @Nullable
        private WeakReference<View> lastNestedScrollingChildRef;
        private int lastStartedType;
        private ValueAnimator offsetAnimator;
        private int offsetDelta;
        private e onDragCallback;
        private SavedState savedState;

        class a implements ValueAnimator.AnimatorUpdateListener {
            final /* synthetic */ AppBarLayout val$child;
            final /* synthetic */ CoordinatorLayout val$coordinatorLayout;

            a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.val$coordinatorLayout = coordinatorLayout;
                this.val$child = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                BaseBehavior.this.setHeaderTopBottomOffset(this.val$coordinatorLayout, this.val$child, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        class b extends AccessibilityDelegateCompat {
            b() {
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.F0(BaseBehavior.this.coordinatorLayoutA11yScrollable);
                accessibilityNodeInfoCompat.e0(ScrollView.class.getName());
            }
        }

        class c implements AccessibilityViewCommand {
            final /* synthetic */ AppBarLayout val$appBarLayout;
            final /* synthetic */ CoordinatorLayout val$coordinatorLayout;
            final /* synthetic */ int val$dy;
            final /* synthetic */ View val$scrollingView;

            c(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
                this.val$coordinatorLayout = coordinatorLayout;
                this.val$appBarLayout = appBarLayout;
                this.val$scrollingView = view;
                this.val$dy = i10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                BaseBehavior.this.onNestedPreScroll(this.val$coordinatorLayout, this.val$appBarLayout, this.val$scrollingView, 0, this.val$dy, new int[]{0, 0}, 1);
                return true;
            }
        }

        class d implements AccessibilityViewCommand {
            final /* synthetic */ AppBarLayout val$appBarLayout;
            final /* synthetic */ boolean val$expand;

            d(AppBarLayout appBarLayout, boolean z6) {
                this.val$appBarLayout = appBarLayout;
                this.val$expand = z6;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                this.val$appBarLayout.setExpanded(this.val$expand);
                return true;
            }
        }

        public static abstract class e<T extends AppBarLayout> {
            public abstract boolean a(@NonNull T t5);
        }

        public BaseBehavior() {
        }

        private static boolean checkFlag(int i10, int i11) {
            return (i10 & i11) == i11;
        }

        void A(@Nullable SavedState savedState, boolean z6) {
            if (this.savedState == null || z6) {
                this.savedState = savedState;
            }
        }

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyExpanded;
            boolean fullyScrolled;

            class a implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                @Nullable
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
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

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.fullyExpanded = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i10) {
                super.writeToParcel(parcel, i10);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.fullyExpanded ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        private void F(CoordinatorLayout coordinatorLayout, @NonNull T t5) {
            View viewN;
            ViewCompat.n0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.b());
            ViewCompat.n0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.b());
            if (t5.getTotalScrollRange() == 0 || (viewN = n(coordinatorLayout)) == null || !j(t5)) {
                return;
            }
            if (!ViewCompat.R(coordinatorLayout)) {
                ViewCompat.u0(coordinatorLayout, new b());
            }
            this.coordinatorLayoutA11yScrollable = c(coordinatorLayout, t5, viewN);
        }

        private void d(CoordinatorLayout coordinatorLayout, @NonNull T t5, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, boolean z6) {
            ViewCompat.p0(coordinatorLayout, accessibilityActionCompat, null, new d(t5, z6));
        }

        private int g(int i10, int i11, int i12) {
            return i10 < (i11 + i12) / 2 ? i11 : i12;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.f
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean canDragView(T t5) {
            e eVar = this.onDragCallback;
            if (eVar != null) {
                return eVar.a(t5);
            }
            WeakReference<View> weakReference = this.lastNestedScrollingChildRef;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t5, View view, int i10, int i11, int[] iArr, int i12) {
            int i13;
            int downNestedPreScrollRange;
            if (i11 != 0) {
                if (i11 < 0) {
                    i13 = -t5.getTotalScrollRange();
                    downNestedPreScrollRange = t5.getDownNestedPreScrollRange() + i13;
                } else {
                    i13 = -t5.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i14 = i13;
                int i15 = downNestedPreScrollRange;
                if (i14 != i15) {
                    iArr[1] = scroll(coordinatorLayout, t5, i11, i14, i15);
                }
            }
            if (t5.n()) {
                t5.w(t5.z(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t5, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            if (i13 < 0) {
                iArr[1] = scroll(coordinatorLayout, t5, i13, -t5.getDownNestedScrollRange(), 0);
            }
            if (i13 == 0) {
                F(coordinatorLayout, t5);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                A((SavedState) parcelable, true);
                super.onRestoreInstanceState(coordinatorLayout, t5, this.savedState.getSuperState());
            } else {
                super.onRestoreInstanceState(coordinatorLayout, t5, parcelable);
                this.savedState = null;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, @NonNull View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            boolean z6 = (i10 & 2) != 0 && (t5.n() || i(coordinatorLayout, t5, view));
            if (z6 && (valueAnimator = this.offsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.lastNestedScrollingChildRef = null;
            this.lastStartedType = i11;
            return z6;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t5, View view, int i10) {
            if (this.lastStartedType == 0 || i10 == 1) {
                E(coordinatorLayout, t5);
                if (t5.n()) {
                    t5.w(t5.z(view));
                }
            }
            this.lastNestedScrollingChildRef = new WeakReference<>(view);
        }

        private boolean D(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5) {
            List<View> dependents = coordinatorLayout.getDependents(t5);
            int size = dependents.size();
            for (int i10 = 0; i10 < size; i10++) {
                CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) dependents.get(i10).getLayoutParams()).f();
                if (behaviorF instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) behaviorF).getOverlayTop() == 0) {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        }

        private void E(CoordinatorLayout coordinatorLayout, @NonNull T t5) {
            int topInset = t5.getTopInset() + t5.getPaddingTop();
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling() - topInset;
            int iM = m(t5, topBottomOffsetForScrollingSibling);
            if (iM >= 0) {
                View childAt = t5.getChildAt(iM);
                f fVar = (f) childAt.getLayoutParams();
                int iC = fVar.c();
                if ((iC & 17) == 17) {
                    int topInset2 = -childAt.getTop();
                    int iE = -childAt.getBottom();
                    if (iM == 0 && ViewCompat.A(t5) && ViewCompat.A(childAt)) {
                        topInset2 -= t5.getTopInset();
                    }
                    if (checkFlag(iC, 2)) {
                        iE += ViewCompat.E(childAt);
                    } else if (checkFlag(iC, 5)) {
                        int iE2 = ViewCompat.E(childAt) + iE;
                        if (topBottomOffsetForScrollingSibling < iE2) {
                            topInset2 = iE2;
                        } else {
                            iE = iE2;
                        }
                    }
                    if (checkFlag(iC, 32)) {
                        topInset2 += ((LinearLayout.LayoutParams) fVar).topMargin;
                        iE -= ((LinearLayout.LayoutParams) fVar).bottomMargin;
                    }
                    e(coordinatorLayout, t5, MathUtils.b(g(topBottomOffsetForScrollingSibling, iE, topInset2) + topInset, -t5.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void G(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, int i10, int i11, boolean z6) {
            View viewL = l(t5, i10);
            boolean z10 = false;
            if (viewL != null) {
                int iC = ((f) viewL.getLayoutParams()).c();
                if ((iC & 1) != 0) {
                    int iE = ViewCompat.E(viewL);
                    if (i11 <= 0 || (iC & 12) == 0 ? !((iC & 2) == 0 || (-i10) < (viewL.getBottom() - iE) - t5.getTopInset()) : (-i10) >= (viewL.getBottom() - iE) - t5.getTopInset()) {
                        z10 = true;
                    }
                }
            }
            if (t5.n()) {
                z10 = t5.z(k(coordinatorLayout));
            }
            boolean zW = t5.w(z10);
            if (z6 || (zW && D(coordinatorLayout, t5))) {
                t5.jumpDrawablesToCurrentState();
            }
        }

        private boolean c(CoordinatorLayout coordinatorLayout, @NonNull T t5, @NonNull View view) {
            boolean z6 = false;
            if (getTopBottomOffsetForScrollingSibling() != (-t5.getTotalScrollRange())) {
                d(coordinatorLayout, t5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD, false);
                z6 = true;
            }
            if (getTopBottomOffsetForScrollingSibling() != 0) {
                if (view.canScrollVertically(-1)) {
                    int i10 = -t5.getDownNestedPreScrollRange();
                    if (i10 != 0) {
                        ViewCompat.p0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, null, new c(coordinatorLayout, t5, view, i10));
                        return true;
                    }
                } else {
                    d(coordinatorLayout, t5, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, true);
                    return true;
                }
            }
            return z6;
        }

        private void e(CoordinatorLayout coordinatorLayout, @NonNull T t5, int i10, float f) {
            int height;
            int iAbs = Math.abs(getTopBottomOffsetForScrollingSibling() - i10);
            float fAbs = Math.abs(f);
            if (fAbs > 0.0f) {
                height = Math.round((iAbs / fAbs) * 1000.0f) * 3;
            } else {
                height = (int) (((iAbs / t5.getHeight()) + 1.0f) * 150.0f);
            }
            f(coordinatorLayout, t5, i10, height);
        }

        private void f(CoordinatorLayout coordinatorLayout, T t5, int i10, int i11) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i10) {
                ValueAnimator valueAnimator = this.offsetAnimator;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.offsetAnimator.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.offsetAnimator;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.offsetAnimator = valueAnimator3;
                valueAnimator3.setInterpolator(e3.a.DECELERATE_INTERPOLATOR);
                this.offsetAnimator.addUpdateListener(new a(coordinatorLayout, t5));
            } else {
                valueAnimator2.cancel();
            }
            this.offsetAnimator.setDuration(Math.min(i11, 600));
            this.offsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i10);
            this.offsetAnimator.start();
        }

        private boolean i(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, @NonNull View view) {
            if (t5.l() && coordinatorLayout.getHeight() - view.getHeight() <= t5.getHeight()) {
                return true;
            }
            return false;
        }

        private boolean j(AppBarLayout appBarLayout) {
            int childCount = appBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (((f) appBarLayout.getChildAt(i10).getLayoutParams()).scrollFlags != 0) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        private View k(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        private static View l(@NonNull AppBarLayout appBarLayout, int i10) {
            int iAbs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int m(@NonNull T t5, int i10) {
            int childCount = t5.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = t5.getChildAt(i11);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                f fVar = (f) childAt.getLayoutParams();
                if (checkFlag(fVar.c(), 32)) {
                    top -= ((LinearLayout.LayoutParams) fVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) fVar).bottomMargin;
                }
                int i12 = -i10;
                if (top <= i12 && bottom >= i12) {
                    return i11;
                }
            }
            return -1;
        }

        @Nullable
        private View n(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).f() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        private int q(@NonNull T t5, int i10) {
            int iAbs = Math.abs(i10);
            int childCount = t5.getChildCount();
            int topInset = 0;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = t5.getChildAt(i11);
                f fVar = (f) childAt.getLayoutParams();
                Interpolator interpolatorD = fVar.d();
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    if (interpolatorD == null) {
                        break;
                    }
                    int iC = fVar.c();
                    if ((iC & 1) != 0) {
                        topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) fVar).topMargin + ((LinearLayout.LayoutParams) fVar).bottomMargin;
                        if ((iC & 2) != 0) {
                            topInset -= ViewCompat.E(childAt);
                        }
                    }
                    if (ViewCompat.A(childAt)) {
                        topInset -= t5.getTopInset();
                    }
                    if (topInset <= 0) {
                        break;
                    }
                    float f = topInset;
                    return Integer.signum(i10) * (childAt.getTop() + Math.round(f * interpolatorD.getInterpolation((iAbs - childAt.getTop()) / f)));
                }
            }
            return i10;
        }

        @Nullable
        SavedState B(@Nullable Parcelable parcelable, @NonNull T t5) {
            boolean z6;
            boolean z10;
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t5.getChildCount();
            boolean z11 = false;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = t5.getChildAt(i10);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    if (topAndBottomOffset == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    savedState.fullyExpanded = z6;
                    if (!z6 && (-topAndBottomOffset) >= t5.getTotalScrollRange()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    savedState.fullyScrolled = z10;
                    savedState.firstVisibleChildIndex = i10;
                    if (bottom == ViewCompat.E(childAt) + t5.getTopInset()) {
                        z11 = true;
                    }
                    savedState.firstVisibleChildAtMinimumHeight = z11;
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.f
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, int i10, int i11, int i12) {
            int iQ;
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int i13 = 0;
            if (i11 != 0 && topBottomOffsetForScrollingSibling >= i11 && topBottomOffsetForScrollingSibling <= i12) {
                int iB = MathUtils.b(i10, i11, i12);
                if (topBottomOffsetForScrollingSibling != iB) {
                    if (t5.j()) {
                        iQ = q(t5, iB);
                    } else {
                        iQ = iB;
                    }
                    boolean topAndBottomOffset = setTopAndBottomOffset(iQ);
                    int i14 = topBottomOffsetForScrollingSibling - iB;
                    this.offsetDelta = iB - iQ;
                    int i15 = 1;
                    if (topAndBottomOffset) {
                        while (i13 < t5.getChildCount()) {
                            f fVar = (f) t5.getChildAt(i13).getLayoutParams();
                            d dVarB = fVar.b();
                            if (dVarB != null && (fVar.c() & 1) != 0) {
                                dVarB.a(t5, t5.getChildAt(i13), getTopAndBottomOffset());
                            }
                            i13++;
                        }
                    }
                    if (!topAndBottomOffset && t5.j()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t5);
                    }
                    t5.o(getTopAndBottomOffset());
                    if (iB < topBottomOffsetForScrollingSibling) {
                        i15 = -1;
                    }
                    G(coordinatorLayout, t5, iB, i15, false);
                    i13 = i14;
                }
            } else {
                this.offsetDelta = 0;
            }
            F(coordinatorLayout, t5);
            return i13;
        }

        @Override // com.google.android.material.appbar.f
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.offsetDelta;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.f
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public int getMaxDragOffset(@NonNull T t5) {
            return -t5.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.f
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public int getScrollRangeForDragFling(@NonNull T t5) {
            return t5.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.f
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5) {
            E(coordinatorLayout, t5);
            if (t5.n()) {
                t5.w(t5.z(k(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.h, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, int i10) {
            boolean z6;
            int iRound;
            boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, t5, i10);
            int pendingAction = t5.getPendingAction();
            SavedState savedState = this.savedState;
            if (savedState != null && (pendingAction & 8) == 0) {
                if (savedState.fullyScrolled) {
                    setHeaderTopBottomOffset(coordinatorLayout, t5, -t5.getTotalScrollRange());
                } else if (savedState.fullyExpanded) {
                    setHeaderTopBottomOffset(coordinatorLayout, t5, 0);
                } else {
                    View childAt = t5.getChildAt(savedState.firstVisibleChildIndex);
                    int i11 = -childAt.getBottom();
                    if (this.savedState.firstVisibleChildAtMinimumHeight) {
                        iRound = ViewCompat.E(childAt) + t5.getTopInset();
                    } else {
                        iRound = Math.round(childAt.getHeight() * this.savedState.firstVisibleChildPercentageShown);
                    }
                    setHeaderTopBottomOffset(coordinatorLayout, t5, i11 + iRound);
                }
            } else if (pendingAction != 0) {
                if ((pendingAction & 4) != 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if ((pendingAction & 2) != 0) {
                    int i12 = -t5.getUpNestedPreScrollRange();
                    if (z6) {
                        e(coordinatorLayout, t5, i12, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, t5, i12);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z6) {
                        e(coordinatorLayout, t5, 0, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, t5, 0);
                    }
                }
            }
            t5.s();
            this.savedState = null;
            setTopAndBottomOffset(MathUtils.b(getTopAndBottomOffset(), -t5.getTotalScrollRange(), 0));
            G(coordinatorLayout, t5, getTopAndBottomOffset(), 0, true);
            t5.o(getTopAndBottomOffset());
            F(coordinatorLayout, t5);
            return zOnLayoutChild;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5, int i10, int i11, int i12, int i13) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t5.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t5, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, t5, i10, i11, i12, i13);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t5) {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, t5);
            SavedState savedStateB = B(parcelableOnSaveInstanceState, t5);
            if (savedStateB != null) {
                return savedStateB;
            }
            return parcelableOnSaveInstanceState;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.appbar.h
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.f, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.f, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: s */
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i10) {
            return super.onLayoutChild(coordinatorLayout, appBarLayout, i10);
        }

        @Override // com.google.android.material.appbar.h
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i10) {
            return super.setTopAndBottomOffset(i10);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: t */
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i10, int i11, int i12, int i13) {
            return super.onMeasureChild(coordinatorLayout, appBarLayout, i10, i11, i12, i13);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: u */
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i10, i11, iArr, i12);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: v */
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, appBarLayout, view, i10, i11, i12, i13, i14, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: w */
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: x */
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: y */
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i10, int i11) {
            return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i10, i11);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: z */
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i10) {
            super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i10);
        }
    }

    public static class ScrollingViewBehavior extends com.google.android.material.appbar.g {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.ScrollingViewBehavior_Layout);
            setOverlayTop(typedArrayObtainStyledAttributes.getDimensionPixelSize(l.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        private void e(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.n()) {
                    appBarLayout.w(appBarLayout.z(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.g
        float getOverlapRatioForOffset(View view) {
            int i10;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iC = c(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iC > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iC / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.g
        int getScrollRange(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.getScrollRange(view);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.n0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.b());
                ViewCompat.n0(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.b());
                ViewCompat.u0(coordinatorLayout, null);
            }
        }

        private static int c(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).f();
            if (behaviorF instanceof BaseBehavior) {
                return ((BaseBehavior) behaviorF).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void d(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).f();
            if (behaviorF instanceof BaseBehavior) {
                ViewCompat.e0(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behaviorF).offsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.g
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AppBarLayout findFirstDependency(@NonNull List<View> list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            d(view, view2);
            e(view, view2);
            return false;
        }

        @Override // com.google.android.material.appbar.h, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
            return super.onLayoutChild(coordinatorLayout, view, i10);
        }

        @Override // com.google.android.material.appbar.g, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12, int i13) {
            return super.onMeasureChild(coordinatorLayout, view, i10, i11, i12, i13);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z6) {
            AppBarLayout appBarLayoutFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
            if (appBarLayoutFindFirstDependency != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.tempRect1;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutFindFirstDependency.t(false, !z6);
                    return true;
                }
            }
            return false;
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.p(windowInsetsCompat);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ com.google.android.material.shape.g val$background;

        b(com.google.android.material.shape.g gVar) {
            this.val$background = gVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.val$background.Y(fFloatValue);
            if (AppBarLayout.this.statusBarForeground instanceof com.google.android.material.shape.g) {
                ((com.google.android.material.shape.g) AppBarLayout.this.statusBarForeground).Y(fFloatValue);
            }
            Iterator it = AppBarLayout.this.liftOnScrollListeners.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(fFloatValue, this.val$background.A());
            }
        }
    }

    public interface c<T extends AppBarLayout> {
        void onOffsetChanged(T t5, int i10);
    }

    public static abstract class d {
        public abstract void a(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f);
    }

    public static class e extends d {
        private static final float COMPRESS_DISTANCE_FACTOR = 0.3f;
        private final Rect relativeRect = new Rect();
        private final Rect ghostRect = new Rect();

        @Override // com.google.android.material.appbar.AppBarLayout.d
        public void a(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f) {
            b(this.relativeRect, appBarLayout, view);
            float fAbs = this.relativeRect.top - Math.abs(f);
            if (fAbs > 0.0f) {
                ViewCompat.B0(view, null);
                view.setTranslationY(0.0f);
                return;
            }
            float fA = 1.0f - MathUtils.a(Math.abs(fAbs / this.relativeRect.height()), 0.0f, 1.0f);
            float fHeight = (-fAbs) - ((this.relativeRect.height() * 0.3f) * (1.0f - (fA * fA)));
            view.setTranslationY(fHeight);
            view.getDrawingRect(this.ghostRect);
            this.ghostRect.offset(0, (int) (-fHeight));
            ViewCompat.B0(view, this.ghostRect);
        }

        private static void b(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }
    }

    public interface g {
        void a(@Dimension float f, @ColorInt int i10);
    }

    public interface h extends c<AppBarLayout> {
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.liftOnScrollTargetViewId;
    }

    int getPendingAction() {
        return this.pendingAction;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.statusBarForeground;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    boolean j() {
        return this.haveChildWithInterpolator;
    }

    public boolean n() {
        return this.liftOnScroll;
    }

    void s() {
        this.pendingAction = 0;
    }

    public void setLiftOnScroll(boolean z6) {
        this.liftOnScroll = z6;
    }

    public void setLiftableOverrideEnabled(boolean z6) {
        this.liftableOverride = z6;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public void t(boolean z6, boolean z10) {
        u(z6, z10, true);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.appBarLayoutStyle);
    }

    private void e() {
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.liftOnScrollTargetView = null;
    }

    @Nullable
    private View f(@Nullable View view) {
        int i10;
        if (this.liftOnScrollTargetView == null && (i10 = this.liftOnScrollTargetViewId) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i10) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.liftOnScrollTargetViewId);
            }
            if (viewFindViewById != null) {
                this.liftOnScrollTargetView = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private void m() {
        Behavior behavior = this.behavior;
        BaseBehavior.SavedState savedStateB = (behavior == null || this.totalScrollRange == -1 || this.pendingAction != 0) ? null : behavior.B(AbsSavedState.EMPTY_STATE, this);
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
        if (savedStateB != null) {
            this.behavior.A(savedStateB, false);
        }
    }

    private void u(boolean z6, boolean z10, boolean z11) {
        this.pendingAction = (z6 ? 1 : 2) | (z10 ? 4 : 0) | (z11 ? 8 : 0);
        requestLayout();
    }

    private boolean v(boolean z6) {
        if (this.liftable == z6) {
            return false;
        }
        this.liftable = z6;
        refreshDrawableState();
        return true;
    }

    private boolean y() {
        return this.statusBarForeground != null && getTopInset() > 0;
    }

    public void c(@Nullable c cVar) {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        if (cVar == null || this.listeners.contains(cVar)) {
            return;
        }
        this.listeners.add(cVar);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public f generateDefaultLayoutParams() {
        return new f(-1, -2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.behavior = behavior;
        return behavior;
    }

    int getDownNestedPreScrollRange() {
        int iMin;
        int iE;
        int i10 = this.downPreScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            f fVar = (f) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = fVar.scrollFlags;
            if ((i12 & 5) != 5) {
                if (i11 > 0) {
                    break;
                }
            } else {
                int i13 = ((LinearLayout.LayoutParams) fVar).topMargin + ((LinearLayout.LayoutParams) fVar).bottomMargin;
                if ((i12 & 8) != 0) {
                    iE = ViewCompat.E(childAt);
                } else {
                    if ((i12 & 2) != 0) {
                        iE = measuredHeight - ViewCompat.E(childAt);
                    } else {
                        iMin = i13 + measuredHeight;
                    }
                    if (childCount == 0 && ViewCompat.A(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i11 += iMin;
                }
                iMin = i13 + iE;
                if (childCount == 0) {
                    iMin = Math.min(iMin, measuredHeight - getTopInset());
                }
                i11 += iMin;
            }
        }
        int iMax = Math.max(0, i11);
        this.downPreScrollRange = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i10 = this.downScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int iE = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) fVar).topMargin + ((LinearLayout.LayoutParams) fVar).bottomMargin;
            int i12 = fVar.scrollFlags;
            if ((i12 & 1) == 0) {
                break;
            }
            iE += measuredHeight;
            if ((i12 & 2) != 0) {
                iE -= ViewCompat.E(childAt);
                break;
            }
        }
        int iMax = Math.max(0, iE);
        this.downScrollRange = iMax;
        return iMax;
    }

    @VisibleForTesting
    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.m();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.totalScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int iE = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            f fVar = (f) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = fVar.scrollFlags;
            if ((i12 & 1) == 0) {
                break;
            }
            iE += measuredHeight + ((LinearLayout.LayoutParams) fVar).topMargin + ((LinearLayout.LayoutParams) fVar).bottomMargin;
            if (i11 == 0 && ViewCompat.A(childAt)) {
                iE -= getTopInset();
            }
            if ((i12 & 2) != 0) {
                iE -= ViewCompat.E(childAt);
                break;
            }
        }
        int iMax = Math.max(0, iE);
        this.totalScrollRange = iMax;
        return iMax;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public f generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new f((LinearLayout.LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new f((ViewGroup.MarginLayoutParams) layoutParams) : new f(layoutParams);
    }

    void o(int i10) {
        this.currentOffset = i10;
        if (!willNotDraw()) {
            ViewCompat.k0(this);
        }
        List<c> list = this.listeners;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                c cVar = this.listeners.get(i11);
                if (cVar != null) {
                    cVar.onOffsetChanged(this, i10);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        if (this.tmpStatesArray == null) {
            this.tmpStatesArray = new int[4];
        }
        int[] iArr = this.tmpStatesArray;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z6 = this.liftable;
        int i11 = d3.b.state_liftable;
        if (!z6) {
            i11 = -i11;
        }
        iArr[0] = i11;
        iArr[1] = (z6 && this.lifted) ? d3.b.state_lifted : -d3.b.state_lifted;
        int i12 = d3.b.state_collapsible;
        if (!z6) {
            i12 = -i12;
        }
        iArr[2] = i12;
        iArr[3] = (z6 && this.lifted) ? d3.b.state_collapsed : -d3.b.state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    public void q(@Nullable c cVar) {
        List<c> list = this.listeners;
        if (list == null || cVar == null) {
            return;
        }
        list.remove(cVar);
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i10) {
        this.liftOnScrollTargetViewId = i10;
        e();
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.statusBarForeground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.statusBarForeground = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.statusBarForeground.setState(getDrawableState());
                }
                DrawableCompat.m(this.statusBarForeground, ViewCompat.D(this));
                this.statusBarForeground.setVisible(getVisibility() == 0, false);
                this.statusBarForeground.setCallback(this);
            }
            C();
            ViewCompat.k0(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    boolean w(boolean z6) {
        return x(z6, !this.liftableOverride);
    }

    boolean x(boolean z6, boolean z10) {
        if (!z10 || this.lifted == z6) {
            return false;
        }
        this.lifted = z6;
        refreshDrawableState();
        if (!this.liftOnScroll || !(getBackground() instanceof com.google.android.material.shape.g)) {
            return true;
        }
        B((com.google.android.material.shape.g) getBackground(), z6);
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
        this.pendingAction = 0;
        this.liftOnScrollListeners = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        int i12 = Build.VERSION.SDK_INT;
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            j.a(this);
        }
        j.c(this, attributeSet, i10, i11);
        TypedArray typedArrayH = s.h(context2, attributeSet, l.AppBarLayout, i10, i11, new int[0]);
        ViewCompat.y0(this, typedArrayH.getDrawable(l.AppBarLayout_android_background));
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            com.google.android.material.shape.g gVar = new com.google.android.material.shape.g();
            gVar.Z(ColorStateList.valueOf(colorDrawable.getColor()));
            gVar.O(context2);
            ViewCompat.y0(this, gVar);
        }
        int i13 = l.AppBarLayout_expanded;
        if (typedArrayH.hasValue(i13)) {
            u(typedArrayH.getBoolean(i13, false), false, false);
        }
        int i14 = l.AppBarLayout_elevation;
        if (typedArrayH.hasValue(i14)) {
            j.b(this, typedArrayH.getDimensionPixelSize(i14, 0));
        }
        if (i12 >= 26) {
            int i15 = l.AppBarLayout_android_keyboardNavigationCluster;
            if (typedArrayH.hasValue(i15)) {
                setKeyboardNavigationCluster(typedArrayH.getBoolean(i15, false));
            }
            int i16 = l.AppBarLayout_android_touchscreenBlocksFocus;
            if (typedArrayH.hasValue(i16)) {
                setTouchscreenBlocksFocus(typedArrayH.getBoolean(i16, false));
            }
        }
        this.liftOnScroll = typedArrayH.getBoolean(l.AppBarLayout_liftOnScroll, false);
        this.liftOnScrollTargetViewId = typedArrayH.getResourceId(l.AppBarLayout_liftOnScrollTargetViewId, -1);
        setStatusBarForeground(typedArrayH.getDrawable(l.AppBarLayout_statusBarForeground));
        typedArrayH.recycle();
        ViewCompat.L0(this, new a());
    }

    private boolean A() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8 || ViewCompat.A(childAt)) {
            return false;
        }
        return true;
    }

    private void B(@NonNull com.google.android.material.shape.g gVar, boolean z6) {
        float f6;
        float dimension = getResources().getDimension(d3.d.design_appbar_elevation);
        if (z6) {
            f6 = 0.0f;
        } else {
            f6 = dimension;
        }
        if (!z6) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.elevationOverlayAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f6, dimension);
        this.elevationOverlayAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(d3.g.app_bar_elevation_anim_duration));
        this.elevationOverlayAnimator.setInterpolator(e3.a.LINEAR_INTERPOLATOR);
        this.elevationOverlayAnimator.addUpdateListener(new b(gVar));
        this.elevationOverlayAnimator.start();
    }

    private void C() {
        setWillNotDraw(!y());
    }

    private boolean k() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((f) getChildAt(i10).getLayoutParams()).e()) {
                return true;
            }
        }
        return false;
    }

    public void d(h hVar) {
        c(hVar);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (y()) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.currentOffset);
            this.statusBarForeground.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarForeground;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iE = ViewCompat.E(this);
        if (iE == 0) {
            int childCount = getChildCount();
            if (childCount >= 1) {
                iE = ViewCompat.E(getChildAt(childCount - 1));
            } else {
                iE = 0;
            }
            if (iE == 0) {
                return getHeight() / 3;
            }
        }
        return (iE * 2) + topInset;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean l() {
        if (getTotalScrollRange() != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.h.e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        boolean z10 = true;
        if (ViewCompat.A(this) && A()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.e0(getChildAt(childCount), topInset);
            }
        }
        m();
        this.haveChildWithInterpolator = false;
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            if (((f) getChildAt(i14).getLayoutParams()).d() != null) {
                this.haveChildWithInterpolator = true;
                break;
            }
        }
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.liftableOverride) {
            if (!this.liftOnScroll && !k()) {
                z10 = false;
            }
            v(z10);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824 && ViewCompat.A(this) && A()) {
            int measuredHeight = getMeasuredHeight();
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    measuredHeight += getTopInset();
                }
            } else {
                measuredHeight = MathUtils.b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i11));
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m();
    }

    WindowInsetsCompat p(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        if (ViewCompat.A(this)) {
            windowInsetsCompat2 = windowInsetsCompat;
        } else {
            windowInsetsCompat2 = null;
        }
        if (!ObjectsCompat.a(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            C();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    public void r(h hVar) {
        q(hVar);
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f6) {
        super.setElevation(f6);
        com.google.android.material.shape.h.d(this, f6);
    }

    public void setExpanded(boolean z6) {
        t(z6, ViewCompat.X(this));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i10) {
        setStatusBarForeground(AppCompatResources.b(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f6) {
        j.b(this, f6);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        boolean z6;
        super.setVisibility(i10);
        if (i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setVisible(z6, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.statusBarForeground) {
            return false;
        }
        return true;
    }

    boolean z(@Nullable View view) {
        View viewF = f(view);
        if (viewF != null) {
            view = viewF;
        }
        if (view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0)) {
            return true;
        }
        return false;
    }

    public static class f extends LinearLayout.LayoutParams {
        static final int COLLAPSIBLE_FLAGS = 10;
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        private static final int SCROLL_EFFECT_COMPRESS = 1;
        private static final int SCROLL_EFFECT_NONE = 0;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_NO_SCROLL = 0;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;
        private d scrollEffect;
        int scrollFlags;
        Interpolator scrollInterpolator;

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.scrollFlags = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.AppBarLayout_Layout);
            this.scrollFlags = typedArrayObtainStyledAttributes.getInt(l.AppBarLayout_Layout_layout_scrollFlags, 0);
            f(a(typedArrayObtainStyledAttributes.getInt(l.AppBarLayout_Layout_layout_scrollEffect, 0)));
            int i10 = l.AppBarLayout_Layout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                this.scrollInterpolator = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i10, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        @Nullable
        private d a(int i10) {
            if (i10 != 1) {
                return null;
            }
            return new e();
        }

        @Nullable
        public d b() {
            return this.scrollEffect;
        }

        public int c() {
            return this.scrollFlags;
        }

        public Interpolator d() {
            return this.scrollInterpolator;
        }

        boolean e() {
            int i10 = this.scrollFlags;
            return (i10 & 1) == 1 && (i10 & 10) != 0;
        }

        public void f(@Nullable d dVar) {
            this.scrollEffect = dVar;
        }

        public f(int i10, int i11) {
            super(i10, i11);
            this.scrollFlags = 1;
        }

        public f(int i10, int i11, float f) {
            super(i10, i11, f);
            this.scrollFlags = 1;
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi
        public f(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi
        public f(@NonNull f fVar) {
            super((LinearLayout.LayoutParams) fVar);
            this.scrollFlags = 1;
            this.scrollFlags = fVar.scrollFlags;
            this.scrollInterpolator = fVar.scrollInterpolator;
        }
    }
}
