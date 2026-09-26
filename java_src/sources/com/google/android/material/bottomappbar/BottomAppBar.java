package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.s;
import com.google.android.material.internal.u;
import d3.k;
import d3.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    private static final long ANIMATION_DURATION = 300;
    private static final int DEF_STYLE_RES = k.Widget_MaterialComponents_BottomAppBar;
    public static final int FAB_ALIGNMENT_MODE_CENTER = 0;
    public static final int FAB_ALIGNMENT_MODE_END = 1;
    public static final int FAB_ANIMATION_MODE_SCALE = 0;
    public static final int FAB_ANIMATION_MODE_SLIDE = 1;
    private static final int NO_MENU_RES_ID = 0;
    private int animatingModeChangeCounter;
    private ArrayList<j> animationListeners;
    private Behavior behavior;
    private int bottomInset;
    private int fabAlignmentMode;

    @NonNull
    AnimatorListenerAdapter fabAnimationListener;
    private int fabAnimationMode;
    private boolean fabAttached;
    private final int fabOffsetEndMode;

    @NonNull
    e3.k<FloatingActionButton> fabTransformationCallback;
    private boolean hideOnScroll;
    private int leftInset;
    private final com.google.android.material.shape.g materialShapeDrawable;
    private boolean menuAnimatingWithFabAlignmentMode;

    @Nullable
    private Animator menuAnimator;

    @Nullable
    private Animator modeAnimator;

    @Nullable
    private Integer navigationIconTint;
    private final boolean paddingBottomSystemWindowInsets;
    private final boolean paddingLeftSystemWindowInsets;
    private final boolean paddingRightSystemWindowInsets;

    @MenuRes
    private int pendingMenuResId;
    private int rightInset;

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        @NonNull
        private final Rect fabContentRect;
        private final View.OnLayoutChangeListener fabLayoutListener;
        private int originalBottomMargin;
        private WeakReference<BottomAppBar> viewRef;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.viewRef.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.j(Behavior.this.fabContentRect);
                int iHeight = Behavior.this.fabContentRect.height();
                bottomAppBar.R0(iHeight);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.fabContentRect)));
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (Behavior.this.originalBottomMargin == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(d3.d.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                    if (u.g(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.fabOffsetEndMode;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.fabOffsetEndMode;
                    }
                }
            }
        }

        public Behavior() {
            this.fabLayoutListener = new a();
            this.fabContentRect = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i10) {
            this.viewRef = new WeakReference<>(bottomAppBar);
            View viewG0 = bottomAppBar.G0();
            if (viewG0 != null && !ViewCompat.X(viewG0)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) viewG0.getLayoutParams();
                layoutParams.anchorGravity = 49;
                this.originalBottomMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (viewG0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewG0;
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(d3.a.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(d3.a.mtrl_fab_hide_motion_spec);
                    }
                    floatingActionButton.addOnLayoutChangeListener(this.fabLayoutListener);
                    bottomAppBar.y0(floatingActionButton);
                }
                bottomAppBar.P0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i10);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i10);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i10, int i11) {
            if (bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i10, i11)) {
                return true;
            }
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.fabLayoutListener = new a();
            this.fabContentRect = new Rect();
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int fabAlignmentMode;
        boolean fabAttached;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.menuAnimatingWithFabAlignmentMode) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.K0(bottomAppBar.fabAlignmentMode, BottomAppBar.this.fabAttached);
        }
    }

    class b implements e3.k<FloatingActionButton> {
        b() {
        }

        @Override // e3.k
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.materialShapeDrawable.a0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // e3.k
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(@NonNull FloatingActionButton floatingActionButton) {
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().k() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().q(translationX);
                BottomAppBar.this.materialShapeDrawable.invalidateSelf();
            }
            float scaleY = 0.0f;
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().e() != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().l(fMax);
                BottomAppBar.this.materialShapeDrawable.invalidateSelf();
            }
            com.google.android.material.shape.g gVar = BottomAppBar.this.materialShapeDrawable;
            if (floatingActionButton.getVisibility() == 0) {
                scaleY = floatingActionButton.getScaleY();
            }
            gVar.a0(scaleY);
        }
    }

    class c implements u.e {
        c() {
        }

        @Override // com.google.android.material.internal.u.e
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull u.f fVar) {
            boolean z6;
            if (BottomAppBar.this.paddingBottomSystemWindowInsets) {
                BottomAppBar.this.bottomInset = windowInsetsCompat.j();
            }
            boolean z10 = false;
            if (BottomAppBar.this.paddingLeftSystemWindowInsets) {
                z6 = BottomAppBar.this.leftInset != windowInsetsCompat.k();
                BottomAppBar.this.leftInset = windowInsetsCompat.k();
            } else {
                z6 = false;
            }
            if (BottomAppBar.this.paddingRightSystemWindowInsets) {
                boolean z11 = BottomAppBar.this.rightInset != windowInsetsCompat.l();
                BottomAppBar.this.rightInset = windowInsetsCompat.l();
                z10 = z11;
            }
            if (z6 || z10) {
                BottomAppBar.this.z0();
                BottomAppBar.this.P0();
                BottomAppBar.this.O0();
            }
            return windowInsetsCompat;
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.D0();
            BottomAppBar.this.modeAnimator = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.E0();
        }
    }

    class e extends FloatingActionButton.b {
        final /* synthetic */ int val$targetMode;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.D0();
            }
        }

        e(int i10) {
            this.val$targetMode = i10;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.I0(this.val$targetMode));
            floatingActionButton.s(new a());
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.D0();
            BottomAppBar.this.menuAnimatingWithFabAlignmentMode = false;
            BottomAppBar.this.menuAnimator = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.E0();
        }
    }

    class g extends AnimatorListenerAdapter {
        public boolean cancelled;
        final /* synthetic */ ActionMenuView val$actionMenuView;
        final /* synthetic */ boolean val$targetAttached;
        final /* synthetic */ int val$targetMode;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.cancelled = true;
        }

        g(ActionMenuView actionMenuView, int i10, boolean z6) {
            this.val$actionMenuView = actionMenuView;
            this.val$targetMode = i10;
            this.val$targetAttached = z6;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.cancelled) {
                return;
            }
            boolean z6 = BottomAppBar.this.pendingMenuResId != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.N0(bottomAppBar.pendingMenuResId);
            BottomAppBar.this.T0(this.val$actionMenuView, this.val$targetMode, this.val$targetAttached, z6);
        }
    }

    class h implements Runnable {
        final /* synthetic */ ActionMenuView val$actionMenuView;
        final /* synthetic */ int val$fabAlignmentMode;
        final /* synthetic */ boolean val$fabAttached;

        h(ActionMenuView actionMenuView, int i10, boolean z6) {
            this.val$actionMenuView = actionMenuView;
            this.val$fabAlignmentMode = i10;
            this.val$fabAttached = z6;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuView actionMenuView = this.val$actionMenuView;
            actionMenuView.setTranslationX(BottomAppBar.this.H0(actionMenuView, this.val$fabAlignmentMode, this.val$fabAttached));
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.fabAnimationListener.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonF0 = BottomAppBar.this.F0();
            if (floatingActionButtonF0 != null) {
                floatingActionButtonF0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    interface j {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    private void S0(@NonNull ActionMenuView actionMenuView, int i10, boolean z6) {
        T0(actionMenuView, i10, z6, false);
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.bottomInset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.leftInset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.rightInset;
    }

    protected int H0(@NonNull ActionMenuView actionMenuView, int i10, boolean z6) {
        if (i10 != 1 || !z6) {
            return 0;
        }
        boolean zG = u.g(this);
        int measuredWidth = zG ? getMeasuredWidth() : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                measuredWidth = zG ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zG ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zG ? this.rightInset : -this.leftInset));
    }

    boolean R0(@Px int i10) {
        float f6 = i10;
        if (f6 == getTopEdgeTreatment().j()) {
            return false;
        }
        getTopEdgeTreatment().p(f6);
        this.materialShapeDrawable.invalidateSelf();
        return true;
    }

    public int getFabAlignmentMode() {
        return this.fabAlignmentMode;
    }

    public int getFabAnimationMode() {
        return this.fabAnimationMode;
    }

    public boolean getHideOnScroll() {
        return this.hideOnScroll;
    }

    public void setFabAlignmentMode(int i10) {
        Q0(i10, 0);
    }

    public void setFabAnimationMode(int i10) {
        this.fabAnimationMode = i10;
    }

    public void setHideOnScroll(boolean z6) {
        this.hideOnScroll = z6;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.bottomAppBarStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0() {
        ArrayList<j> arrayList;
        int i10 = this.animatingModeChangeCounter - 1;
        this.animatingModeChangeCounter = i10;
        if (i10 != 0 || (arrayList = this.animationListeners) == null) {
            return;
        }
        Iterator<j> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        ArrayList<j> arrayList;
        int i10 = this.animatingModeChangeCounter;
        this.animatingModeChangeCounter = i10 + 1;
        if (i10 != 0 || (arrayList = this.animationListeners) == null) {
            return;
        }
        Iterator<j> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    private void L0(int i10) {
        if (this.fabAlignmentMode == i10 || !ViewCompat.X(this)) {
            return;
        }
        Animator animator = this.modeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.fabAnimationMode == 1) {
            B0(i10, arrayList);
        } else {
            A0(i10, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.modeAnimator = animatorSet;
        animatorSet.addListener(new d());
        this.modeAnimator.start();
    }

    @Nullable
    private Drawable M0(@Nullable Drawable drawable) {
        if (drawable == null || this.navigationIconTint == null) {
            return drawable;
        }
        Drawable drawableR = DrawableCompat.r(drawable.mutate());
        DrawableCompat.n(drawableR, this.navigationIconTint.intValue());
        return drawableR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0(@NonNull ActionMenuView actionMenuView, int i10, boolean z6, boolean z10) {
        h hVar = new h(actionMenuView, i10, z6);
        if (z10) {
            actionMenuView.post(hVar);
        } else {
            hVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return I0(this.fabAlignmentMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public com.google.android.material.bottomappbar.a getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.a) this.materialShapeDrawable.E().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.e(this.fabAnimationListener);
        floatingActionButton.f(new i());
        floatingActionButton.g(this.fabTransformationCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0() {
        Animator animator = this.menuAnimator;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.modeAnimator;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    public void N0(@MenuRes int i10) {
        if (i10 != 0) {
            this.pendingMenuResId = 0;
            getMenu().clear();
            x(i10);
        }
    }

    public void Q0(int i10, @MenuRes int i11) {
        this.pendingMenuResId = i11;
        this.menuAnimatingWithFabAlignmentMode = true;
        K0(i10, this.fabAttached);
        L0(i10);
        this.fabAlignmentMode = i10;
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.materialShapeDrawable.G();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.behavior == null) {
            this.behavior = new Behavior();
        }
        return this.behavior;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.fabAlignmentMode = savedState.fabAlignmentMode;
        this.fabAttached = savedState.fabAttached;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.o(this.materialShapeDrawable, colorStateList);
    }

    @Override // android.view.View
    public void setElevation(float f6) {
        this.materialShapeDrawable.Y(f6);
        getBehavior().e(this, this.materialShapeDrawable.D() - this.materialShapeDrawable.C());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = DEF_STYLE_RES;
        super(r3.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        com.google.android.material.shape.g gVar = new com.google.android.material.shape.g();
        this.materialShapeDrawable = gVar;
        this.animatingModeChangeCounter = 0;
        this.pendingMenuResId = 0;
        this.menuAnimatingWithFabAlignmentMode = false;
        this.fabAttached = true;
        this.fabAnimationListener = new a();
        this.fabTransformationCallback = new b();
        Context context2 = getContext();
        TypedArray typedArrayH = s.h(context2, attributeSet, l.BottomAppBar, i10, i11, new int[0]);
        ColorStateList colorStateListA = com.google.android.material.resources.c.a(context2, typedArrayH, l.BottomAppBar_backgroundTint);
        int i12 = l.BottomAppBar_navigationIconTint;
        if (typedArrayH.hasValue(i12)) {
            setNavigationIconTint(typedArrayH.getColor(i12, -1));
        }
        int dimensionPixelSize = typedArrayH.getDimensionPixelSize(l.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayH.getDimensionPixelOffset(l.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayH.getDimensionPixelOffset(l.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayH.getDimensionPixelOffset(l.BottomAppBar_fabCradleVerticalOffset, 0);
        this.fabAlignmentMode = typedArrayH.getInt(l.BottomAppBar_fabAlignmentMode, 0);
        this.fabAnimationMode = typedArrayH.getInt(l.BottomAppBar_fabAnimationMode, 0);
        this.hideOnScroll = typedArrayH.getBoolean(l.BottomAppBar_hideOnScroll, false);
        this.paddingBottomSystemWindowInsets = typedArrayH.getBoolean(l.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.paddingLeftSystemWindowInsets = typedArrayH.getBoolean(l.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.paddingRightSystemWindowInsets = typedArrayH.getBoolean(l.BottomAppBar_paddingRightSystemWindowInsets, false);
        typedArrayH.recycle();
        this.fabOffsetEndMode = getResources().getDimensionPixelOffset(d3.d.mtrl_bottomappbar_fabOffsetEndMode);
        gVar.setShapeAppearanceModel(com.google.android.material.shape.k.a().y(new com.google.android.material.bottomappbar.a(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m());
        gVar.h0(2);
        gVar.c0(Paint.Style.FILL);
        gVar.O(context2);
        setElevation(dimensionPixelSize);
        DrawableCompat.o(gVar, colorStateListA);
        ViewCompat.y0(this, gVar);
        u.b(this, attributeSet, i10, i11, new c());
    }

    private void B0(int i10, @NonNull List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(F0(), "translationX", I0(i10));
        objectAnimatorOfFloat.setDuration(ANIMATION_DURATION);
        list.add(objectAnimatorOfFloat);
    }

    private void C0(int i10, boolean z6, @NonNull List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - H0(actionMenuView, i10, z6)) > 1.0f) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat.addListener(new g(actionMenuView, i10, z6));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
            return;
        }
        if (actionMenuView.getAlpha() < 1.0f) {
            list.add(animatorOfFloat);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton F0() {
        View viewG0 = G0();
        if (viewG0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewG0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public View G0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float I0(int i10) {
        int i11;
        boolean zG = u.g(this);
        int i12 = 1;
        if (i10 == 1) {
            if (zG) {
                i11 = this.leftInset;
            } else {
                i11 = this.rightInset;
            }
            int measuredWidth = (getMeasuredWidth() / 2) - (this.fabOffsetEndMode + i11);
            if (zG) {
                i12 = -1;
            }
            return measuredWidth * i12;
        }
        return 0.0f;
    }

    private boolean J0() {
        FloatingActionButton floatingActionButtonF0 = F0();
        if (floatingActionButtonF0 != null && floatingActionButtonF0.o()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0(int i10, boolean z6) {
        if (!ViewCompat.X(this)) {
            this.menuAnimatingWithFabAlignmentMode = false;
            N0(this.pendingMenuResId);
            return;
        }
        Animator animator = this.menuAnimator;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!J0()) {
            i10 = 0;
            z6 = false;
        }
        C0(i10, z6, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.menuAnimator = animatorSet;
        animatorSet.addListener(new f());
        this.menuAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null && this.menuAnimator == null) {
            actionMenuView.setAlpha(1.0f);
            if (!J0()) {
                S0(actionMenuView, 0, false);
            } else {
                S0(actionMenuView, this.fabAlignmentMode, this.fabAttached);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0() {
        float f6;
        getTopEdgeTreatment().q(getFabTranslationX());
        View viewG0 = G0();
        com.google.android.material.shape.g gVar = this.materialShapeDrawable;
        if (this.fabAttached && J0()) {
            f6 = 1.0f;
        } else {
            f6 = 0.0f;
        }
        gVar.a0(f6);
        if (viewG0 != null) {
            viewG0.setTranslationY(getFabTranslationY());
            viewG0.setTranslationX(getFabTranslationX());
        }
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().e();
    }

    protected void A0(int i10, List<Animator> list) {
        FloatingActionButton floatingActionButtonF0 = F0();
        if (floatingActionButtonF0 != null && !floatingActionButtonF0.n()) {
            E0();
            floatingActionButtonF0.l(new e(i10));
        }
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().e();
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().g();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().i();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.h.f(this, this.materialShapeDrawable);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6) {
            z0();
            P0();
        }
        O0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.fabAlignmentMode;
        savedState.fabAttached = this.fabAttached;
        return savedState;
    }

    public void setCradleVerticalOffset(@Dimension float f6) {
        if (f6 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().l(f6);
            this.materialShapeDrawable.invalidateSelf();
            P0();
        }
    }

    void setFabCornerSize(@Dimension float f6) {
        if (f6 != getTopEdgeTreatment().f()) {
            getTopEdgeTreatment().m(f6);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f6) {
        if (f6 != getFabCradleMargin()) {
            getTopEdgeTreatment().n(f6);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f6) {
        if (f6 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().o(f6);
            this.materialShapeDrawable.invalidateSelf();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(M0(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i10) {
        this.navigationIconTint = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }
}
