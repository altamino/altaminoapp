package com.google.android.exoplayer2.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class v0 {
    private static final long ANIMATION_INTERVAL_MS = 2000;
    private static final long DURATION_FOR_HIDING_ANIMATION_MS = 250;
    private static final long DURATION_FOR_SHOWING_ANIMATION_MS = 250;
    private static final int UX_STATE_ALL_VISIBLE = 0;
    private static final int UX_STATE_ANIMATING_HIDE = 3;
    private static final int UX_STATE_ANIMATING_SHOW = 4;
    private static final int UX_STATE_NONE_VISIBLE = 2;
    private static final int UX_STATE_ONLY_PROGRESS_VISIBLE = 1;

    @Nullable
    private final ViewGroup basicControls;

    @Nullable
    private final ViewGroup bottomBar;

    @Nullable
    private final ViewGroup centerControls;

    @Nullable
    private final View controlsBackground;

    @Nullable
    private final ViewGroup extraControls;

    @Nullable
    private final ViewGroup extraControlsScrollView;
    private final AnimatorSet hideAllBarsAnimator;
    private final AnimatorSet hideMainBarAnimator;
    private final AnimatorSet hideProgressBarAnimator;
    private boolean isMinimalMode;

    @Nullable
    private final ViewGroup minimalControls;
    private boolean needToShowBars;
    private final ValueAnimator overflowHideAnimator;
    private final ValueAnimator overflowShowAnimator;

    @Nullable
    private final View overflowShowButton;
    private final c0 playerControlView;
    private final AnimatorSet showAllBarsAnimator;
    private final AnimatorSet showMainBarAnimator;

    @Nullable
    private final View timeBar;

    @Nullable
    private final ViewGroup timeView;
    private final Runnable showAllBarsRunnable = new Runnable() { // from class: com.google.android.exoplayer2.ui.i0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1324a.c0();
        }
    };
    private final Runnable hideAllBarsRunnable = new Runnable() { // from class: com.google.android.exoplayer2.ui.o0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1330a.D();
        }
    };
    private final Runnable hideProgressBarRunnable = new Runnable() { // from class: com.google.android.exoplayer2.ui.p0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1331a.H();
        }
    };
    private final Runnable hideMainBarRunnable = new Runnable() { // from class: com.google.android.exoplayer2.ui.q0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1332a.G();
        }
    };
    private final Runnable hideControllerRunnable = new Runnable() { // from class: com.google.android.exoplayer2.ui.r0
        @Override // java.lang.Runnable
        public final void run() {
            this.f1333a.E();
        }
    };
    private final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.s0
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f1334a.R(view, i10, i11, i12, i13, i14, i15, i16, i17);
        }
    };
    private boolean animationEnabled = true;
    private int uxState = 0;
    private final List<View> shownButtons = new ArrayList();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (v0.this.controlsBackground != null) {
                v0.this.controlsBackground.setVisibility(4);
            }
            if (v0.this.centerControls != null) {
                v0.this.centerControls.setVisibility(4);
            }
            if (v0.this.minimalControls != null) {
                v0.this.minimalControls.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (!(v0.this.timeBar instanceof com.google.android.exoplayer2.ui.h) || v0.this.isMinimalMode) {
                return;
            }
            ((com.google.android.exoplayer2.ui.h) v0.this.timeBar).g(250L);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (v0.this.controlsBackground != null) {
                v0.this.controlsBackground.setVisibility(0);
            }
            if (v0.this.centerControls != null) {
                v0.this.centerControls.setVisibility(0);
            }
            if (v0.this.minimalControls != null) {
                v0.this.minimalControls.setVisibility(v0.this.isMinimalMode ? 0 : 4);
            }
            if (!(v0.this.timeBar instanceof com.google.android.exoplayer2.ui.h) || v0.this.isMinimalMode) {
                return;
            }
            ((com.google.android.exoplayer2.ui.h) v0.this.timeBar).t(250L);
        }
    }

    class c extends AnimatorListenerAdapter {
        final /* synthetic */ c0 val$playerControlView;

        c(c0 c0Var) {
            this.val$playerControlView = c0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            v0.this.Z(1);
            if (v0.this.needToShowBars) {
                this.val$playerControlView.post(v0.this.showAllBarsRunnable);
                v0.this.needToShowBars = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            v0.this.Z(3);
        }
    }

    class d extends AnimatorListenerAdapter {
        final /* synthetic */ c0 val$playerControlView;

        d(c0 c0Var) {
            this.val$playerControlView = c0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            v0.this.Z(2);
            if (v0.this.needToShowBars) {
                this.val$playerControlView.post(v0.this.showAllBarsRunnable);
                v0.this.needToShowBars = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            v0.this.Z(3);
        }
    }

    class e extends AnimatorListenerAdapter {
        final /* synthetic */ c0 val$playerControlView;

        e(c0 c0Var) {
            this.val$playerControlView = c0Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            v0.this.Z(2);
            if (v0.this.needToShowBars) {
                this.val$playerControlView.post(v0.this.showAllBarsRunnable);
                v0.this.needToShowBars = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            v0.this.Z(3);
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            v0.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            v0.this.Z(4);
        }
    }

    class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            v0.this.Z(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            v0.this.Z(4);
        }
    }

    class h extends AnimatorListenerAdapter {
        h() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (v0.this.basicControls != null) {
                v0.this.basicControls.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (v0.this.extraControlsScrollView != null) {
                v0.this.extraControlsScrollView.setVisibility(0);
                v0.this.extraControlsScrollView.setTranslationX(v0.this.extraControlsScrollView.getWidth());
                v0.this.extraControlsScrollView.scrollTo(v0.this.extraControlsScrollView.getWidth(), 0);
            }
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (v0.this.extraControlsScrollView != null) {
                v0.this.extraControlsScrollView.setVisibility(4);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (v0.this.basicControls != null) {
                v0.this.basicControls.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        Z(2);
    }

    private static ObjectAnimator N(float f6, float f7, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f6, f7);
    }

    public void X(boolean z6) {
        this.animationEnabled = z6;
    }

    private static int B(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int width = view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return width;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return width + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        this.hideAllBarsAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        this.hideMainBarAnimator.start();
        U(this.hideProgressBarRunnable, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.hideProgressBarAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        int i10;
        if (this.basicControls == null || this.extraControls == null) {
            return;
        }
        int width = (this.playerControlView.getWidth() - this.playerControlView.getPaddingLeft()) - this.playerControlView.getPaddingRight();
        while (true) {
            if (this.extraControls.getChildCount() <= 1) {
                break;
            }
            int childCount = this.extraControls.getChildCount() - 2;
            View childAt = this.extraControls.getChildAt(childCount);
            this.extraControls.removeViewAt(childCount);
            this.basicControls.addView(childAt, 0);
        }
        View view = this.overflowShowButton;
        if (view != null) {
            view.setVisibility(8);
        }
        int iB = B(this.timeView);
        int childCount2 = this.basicControls.getChildCount() - 1;
        for (int i11 = 0; i11 < childCount2; i11++) {
            iB += B(this.basicControls.getChildAt(i11));
        }
        if (iB <= width) {
            ViewGroup viewGroup = this.extraControlsScrollView;
            if (viewGroup == null || viewGroup.getVisibility() != 0 || this.overflowHideAnimator.isStarted()) {
                return;
            }
            this.overflowShowAnimator.cancel();
            this.overflowHideAnimator.start();
            return;
        }
        View view2 = this.overflowShowButton;
        if (view2 != null) {
            view2.setVisibility(0);
            iB += B(this.overflowShowButton);
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = this.basicControls.getChildAt(i12);
            iB -= B(childAt2);
            arrayList.add(childAt2);
            if (iB <= width) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.basicControls.removeViews(0, arrayList.size());
        for (i10 = 0; i10 < arrayList.size(); i10++) {
            this.extraControls.addView((View) arrayList.get(i10), this.extraControls.getChildCount() - 1);
        }
    }

    private void U(Runnable runnable, long j6) {
        if (j6 >= 0) {
            this.playerControlView.postDelayed(runnable, j6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i10) {
        int i11 = this.uxState;
        this.uxState = i10;
        if (i10 == 2) {
            this.playerControlView.setVisibility(8);
        } else if (i11 == 2) {
            this.playerControlView.setVisibility(0);
        }
        if (i11 != i10) {
            this.playerControlView.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0() {
        if (!this.animationEnabled) {
            Z(0);
            W();
            return;
        }
        int i10 = this.uxState;
        if (i10 == 1) {
            this.showMainBarAnimator.start();
        } else if (i10 == 2) {
            this.showAllBarsAnimator.start();
        } else if (i10 == 3) {
            this.needToShowBars = true;
        } else if (i10 == 4) {
            return;
        }
        W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        ViewGroup viewGroup = this.minimalControls;
        if (viewGroup != null) {
            viewGroup.setVisibility(this.isMinimalMode ? 0 : 4);
        }
        if (this.timeBar != null) {
            int dimensionPixelSize = this.playerControlView.getResources().getDimensionPixelSize(m.exo_styled_progress_margin_bottom);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.timeBar.getLayoutParams();
            if (marginLayoutParams != null) {
                if (this.isMinimalMode) {
                    dimensionPixelSize = 0;
                }
                marginLayoutParams.bottomMargin = dimensionPixelSize;
                this.timeBar.setLayoutParams(marginLayoutParams);
            }
            View view = this.timeBar;
            if (view instanceof com.google.android.exoplayer2.ui.h) {
                com.google.android.exoplayer2.ui.h hVar = (com.google.android.exoplayer2.ui.h) view;
                if (this.isMinimalMode) {
                    hVar.h(true);
                } else {
                    int i10 = this.uxState;
                    if (i10 == 1) {
                        hVar.h(false);
                    } else if (i10 != 3) {
                        hVar.s();
                    }
                }
            }
        }
        for (View view2 : this.shownButtons) {
            view2.setVisibility((this.isMinimalMode && a0(view2)) ? 4 : 0);
        }
    }

    private boolean e0() {
        int width = (this.playerControlView.getWidth() - this.playerControlView.getPaddingLeft()) - this.playerControlView.getPaddingRight();
        int height = (this.playerControlView.getHeight() - this.playerControlView.getPaddingBottom()) - this.playerControlView.getPaddingTop();
        int iB = B(this.centerControls);
        ViewGroup viewGroup = this.centerControls;
        int paddingLeft = iB - (viewGroup != null ? viewGroup.getPaddingLeft() + this.centerControls.getPaddingRight() : 0);
        int iZ = z(this.centerControls);
        ViewGroup viewGroup2 = this.centerControls;
        return width <= Math.max(paddingLeft, B(this.timeView) + B(this.overflowShowButton)) || height <= (iZ - (viewGroup2 != null ? viewGroup2.getPaddingTop() + this.centerControls.getPaddingBottom() : 0)) + (z(this.bottomBar) * 2);
    }

    private void y(float f6) {
        ViewGroup viewGroup = this.extraControlsScrollView;
        if (viewGroup != null) {
            this.extraControlsScrollView.setTranslationX((int) (viewGroup.getWidth() * (1.0f - f6)));
        }
        ViewGroup viewGroup2 = this.timeView;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(1.0f - f6);
        }
        ViewGroup viewGroup3 = this.basicControls;
        if (viewGroup3 != null) {
            viewGroup3.setAlpha(1.0f - f6);
        }
    }

    private static int z(@Nullable View view) {
        if (view == null) {
            return 0;
        }
        int height = view.getHeight();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return height;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return height + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public boolean A(@Nullable View view) {
        return view != null && this.shownButtons.contains(view);
    }

    public void C() {
        int i10 = this.uxState;
        if (i10 == 3 || i10 == 2) {
            return;
        }
        V();
        if (!this.animationEnabled) {
            E();
        } else if (this.uxState == 1) {
            H();
        } else {
            D();
        }
    }

    public void F() {
        int i10 = this.uxState;
        if (i10 == 3 || i10 == 2) {
            return;
        }
        V();
        E();
    }

    public boolean I() {
        return this.uxState == 0 && this.playerControlView.h0();
    }

    public void O() {
        this.playerControlView.addOnLayoutChangeListener(this.onLayoutChangeListener);
    }

    public void P() {
        this.playerControlView.removeOnLayoutChangeListener(this.onLayoutChangeListener);
    }

    public void Q(boolean z6, int i10, int i11, int i12, int i13) {
        View view = this.controlsBackground;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    public void V() {
        this.playerControlView.removeCallbacks(this.hideControllerRunnable);
        this.playerControlView.removeCallbacks(this.hideAllBarsRunnable);
        this.playerControlView.removeCallbacks(this.hideMainBarRunnable);
        this.playerControlView.removeCallbacks(this.hideProgressBarRunnable);
    }

    public void W() {
        if (this.uxState == 3) {
            return;
        }
        V();
        int showTimeoutMs = this.playerControlView.getShowTimeoutMs();
        if (showTimeoutMs > 0) {
            if (!this.animationEnabled) {
                U(this.hideControllerRunnable, showTimeoutMs);
            } else if (this.uxState == 1) {
                U(this.hideProgressBarRunnable, 2000L);
            } else {
                U(this.hideMainBarRunnable, showTimeoutMs);
            }
        }
    }

    public void Y(@Nullable View view, boolean z6) {
        if (view == null) {
            return;
        }
        if (!z6) {
            view.setVisibility(8);
            this.shownButtons.remove(view);
            return;
        }
        if (this.isMinimalMode && a0(view)) {
            view.setVisibility(4);
        } else {
            view.setVisibility(0);
        }
        this.shownButtons.add(view);
    }

    public void b0() {
        if (!this.playerControlView.h0()) {
            this.playerControlView.setVisibility(0);
            this.playerControlView.s0();
            this.playerControlView.n0();
        }
        c0();
    }

    public v0(c0 c0Var) {
        this.playerControlView = c0Var;
        this.controlsBackground = c0Var.findViewById(p.exo_controls_background);
        this.centerControls = (ViewGroup) c0Var.findViewById(p.exo_center_controls);
        this.minimalControls = (ViewGroup) c0Var.findViewById(p.exo_minimal_controls);
        ViewGroup viewGroup = (ViewGroup) c0Var.findViewById(p.exo_bottom_bar);
        this.bottomBar = viewGroup;
        this.timeView = (ViewGroup) c0Var.findViewById(p.exo_time);
        View viewFindViewById = c0Var.findViewById(p.exo_progress);
        this.timeBar = viewFindViewById;
        this.basicControls = (ViewGroup) c0Var.findViewById(p.exo_basic_controls);
        this.extraControls = (ViewGroup) c0Var.findViewById(p.exo_extra_controls);
        this.extraControlsScrollView = (ViewGroup) c0Var.findViewById(p.exo_extra_controls_scroll_view);
        View viewFindViewById2 = c0Var.findViewById(p.exo_overflow_show);
        this.overflowShowButton = viewFindViewById2;
        View viewFindViewById3 = c0Var.findViewById(p.exo_overflow_hide);
        if (viewFindViewById2 != null && viewFindViewById3 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.t0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1335a.T(view);
                }
            });
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.t0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1335a.T(view);
                }
            });
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.u0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f1336a.J(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.j0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f1325a.K(valueAnimator);
            }
        });
        valueAnimatorOfFloat2.addListener(new b());
        Resources resources = c0Var.getResources();
        int i10 = m.exo_styled_bottom_bar_height;
        float dimension = resources.getDimension(i10) - resources.getDimension(m.exo_styled_progress_bar_height);
        float dimension2 = resources.getDimension(i10);
        AnimatorSet animatorSet = new AnimatorSet();
        this.hideMainBarAnimator = animatorSet;
        animatorSet.setDuration(250L);
        animatorSet.addListener(new c(c0Var));
        animatorSet.play(valueAnimatorOfFloat).with(N(0.0f, dimension, viewFindViewById)).with(N(0.0f, dimension, viewGroup));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.hideProgressBarAnimator = animatorSet2;
        animatorSet2.setDuration(250L);
        animatorSet2.addListener(new d(c0Var));
        animatorSet2.play(N(dimension, dimension2, viewFindViewById)).with(N(dimension, dimension2, viewGroup));
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.hideAllBarsAnimator = animatorSet3;
        animatorSet3.setDuration(250L);
        animatorSet3.addListener(new e(c0Var));
        animatorSet3.play(valueAnimatorOfFloat).with(N(0.0f, dimension2, viewFindViewById)).with(N(0.0f, dimension2, viewGroup));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.showMainBarAnimator = animatorSet4;
        animatorSet4.setDuration(250L);
        animatorSet4.addListener(new f());
        animatorSet4.play(valueAnimatorOfFloat2).with(N(dimension, 0.0f, viewFindViewById)).with(N(dimension, 0.0f, viewGroup));
        AnimatorSet animatorSet5 = new AnimatorSet();
        this.showAllBarsAnimator = animatorSet5;
        animatorSet5.setDuration(250L);
        animatorSet5.addListener(new g());
        animatorSet5.play(valueAnimatorOfFloat2).with(N(dimension2, 0.0f, viewFindViewById)).with(N(dimension2, 0.0f, viewGroup));
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.overflowShowAnimator = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(250L);
        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.m0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f1328a.L(valueAnimator);
            }
        });
        valueAnimatorOfFloat3.addListener(new h());
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.overflowHideAnimator = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(250L);
        valueAnimatorOfFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.n0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f1329a.M(valueAnimator);
            }
        });
        valueAnimatorOfFloat4.addListener(new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.controlsBackground;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.centerControls;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.minimalControls;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        View view = this.controlsBackground;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup = this.centerControls;
        if (viewGroup != null) {
            viewGroup.setAlpha(fFloatValue);
        }
        ViewGroup viewGroup2 = this.minimalControls;
        if (viewGroup2 != null) {
            viewGroup2.setAlpha(fFloatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(ValueAnimator valueAnimator) {
        y(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        boolean z6;
        boolean zE0 = e0();
        if (this.isMinimalMode != zE0) {
            this.isMinimalMode = zE0;
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.k0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1326a.d0();
                }
            });
        }
        if (i12 - i10 != i16 - i14) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!this.isMinimalMode && z6) {
            view.post(new Runnable() { // from class: com.google.android.exoplayer2.ui.l0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1327a.S();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(View view) {
        W();
        if (view.getId() == p.exo_overflow_show) {
            this.overflowShowAnimator.start();
        } else if (view.getId() == p.exo_overflow_hide) {
            this.overflowHideAnimator.start();
        }
    }

    private boolean a0(View view) {
        int id = view.getId();
        if (id != p.exo_bottom_bar && id != p.exo_prev && id != p.exo_next && id != p.exo_rew && id != p.exo_rew_with_amount && id != p.exo_ffwd && id != p.exo_ffwd_with_amount) {
            return false;
        }
        return true;
    }
}
