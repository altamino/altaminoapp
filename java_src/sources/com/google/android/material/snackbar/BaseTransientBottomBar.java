package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.u;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    static final int ANIMATION_DURATION = 250;
    static final int ANIMATION_FADE_DURATION = 180;
    private static final int ANIMATION_FADE_IN_DURATION = 150;
    private static final int ANIMATION_FADE_OUT_DURATION = 75;
    public static final int ANIMATION_MODE_FADE = 1;
    public static final int ANIMATION_MODE_SLIDE = 0;
    private static final float ANIMATION_SCALE_FROM_VALUE = 0.8f;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    static final int MSG_DISMISS = 1;
    static final int MSG_SHOW = 0;

    @Nullable
    private final AccessibilityManager accessibilityManager;

    @Nullable
    private q anchor;
    private Behavior behavior;
    private List<r<B>> callbacks;

    @NonNull
    private final com.google.android.material.snackbar.a contentViewCallback;
    private final Context context;
    private int duration;
    private int extraBottomMarginAnchorView;
    private int extraBottomMarginGestureInset;
    private int extraBottomMarginWindowInset;
    private int extraLeftMarginWindowInset;
    private int extraRightMarginWindowInset;
    private boolean gestureInsetBottomIgnored;
    private boolean pendingShowingView;

    @NonNull
    private final ViewGroup targetParent;

    @NonNull
    protected final t view;
    private static final boolean USE_OFFSET_API = false;
    private static final int[] SNACKBAR_STYLE_ATTR = {d3.b.snackbarStyle};
    private static final String TAG = BaseTransientBottomBar.class.getSimpleName();

    @NonNull
    static final Handler handler = new Handler(Looper.getMainLooper(), new h());
    private boolean anchorViewLayoutListenerEnabled = false;

    @RequiresApi
    private final Runnable bottomMarginGestureInsetRunnable = new i();

    @NonNull
    com.google.android.material.snackbar.c.b managerCallback = new l();

    public static class Behavior extends SwipeDismissBehavior<View> {

        @NonNull
        private final s delegate = new s(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void k(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.delegate.c(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean a(View view) {
            return this.delegate.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.delegate.b(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ int val$event;

        a(int i10) {
            this.val$event = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.K(this.val$event);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.view.setScaleX(fFloatValue);
            BaseTransientBottomBar.this.view.setScaleY(fFloatValue);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.L();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.contentViewCallback.a(70, BaseTransientBottomBar.ANIMATION_FADE_DURATION);
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {
        private int previousAnimatedIntValue;
        final /* synthetic */ int val$translationYBottom;

        e(int i10) {
            this.val$translationYBottom = i10;
            this.previousAnimatedIntValue = i10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.USE_OFFSET_API) {
                ViewCompat.e0(BaseTransientBottomBar.this.view, iIntValue - this.previousAnimatedIntValue);
            } else {
                BaseTransientBottomBar.this.view.setTranslationY(iIntValue);
            }
            this.previousAnimatedIntValue = iIntValue;
        }
    }

    class f extends AnimatorListenerAdapter {
        final /* synthetic */ int val$event;

        f(int i10) {
            this.val$event = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.K(this.val$event);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.contentViewCallback.b(0, BaseTransientBottomBar.ANIMATION_FADE_DURATION);
        }
    }

    class g implements ValueAnimator.AnimatorUpdateListener {
        private int previousAnimatedIntValue = 0;

        g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.USE_OFFSET_API) {
                ViewCompat.e0(BaseTransientBottomBar.this.view, iIntValue - this.previousAnimatedIntValue);
            } else {
                BaseTransientBottomBar.this.view.setTranslationY(iIntValue);
            }
            this.previousAnimatedIntValue = iIntValue;
        }
    }

    class h implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                ((BaseTransientBottomBar) message.obj).S();
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).E(message.arg1);
            return true;
        }

        h() {
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iZ;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.view == null || baseTransientBottomBar.context == null || (iZ = (BaseTransientBottomBar.this.z() - BaseTransientBottomBar.this.C()) + ((int) BaseTransientBottomBar.this.view.getTranslationY())) >= BaseTransientBottomBar.this.extraBottomMarginGestureInset) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.view.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.TAG, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.extraBottomMarginGestureInset - iZ;
            BaseTransientBottomBar.this.view.requestLayout();
        }
    }

    class j implements OnApplyWindowInsetsListener {
        j() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.extraBottomMarginWindowInset = windowInsetsCompat.j();
            BaseTransientBottomBar.this.extraLeftMarginWindowInset = windowInsetsCompat.k();
            BaseTransientBottomBar.this.extraRightMarginWindowInset = windowInsetsCompat.l();
            BaseTransientBottomBar.this.Y();
            return windowInsetsCompat;
        }
    }

    class k extends AccessibilityDelegateCompat {
        k() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 1048576) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            BaseTransientBottomBar.this.s();
            return true;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.a(1048576);
            accessibilityNodeInfoCompat.k0(true);
        }
    }

    class l implements com.google.android.material.snackbar.c.b {
        l() {
        }

        @Override // com.google.android.material.snackbar.c.b
        public void a(int i10) {
            Handler handler = BaseTransientBottomBar.handler;
            handler.sendMessage(handler.obtainMessage(1, i10, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.c.b
        public void show() {
            Handler handler = BaseTransientBottomBar.handler;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar.this.K(3);
        }
    }

    class n implements SwipeDismissBehavior.c {
        n() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void b(int i10) {
            if (i10 == 0) {
                com.google.android.material.snackbar.c.c().k(BaseTransientBottomBar.this.managerCallback);
            } else if (i10 == 1 || i10 == 2) {
                com.google.android.material.snackbar.c.c().j(BaseTransientBottomBar.this.managerCallback);
            }
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void a(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.t(0);
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t tVar = BaseTransientBottomBar.this.view;
            if (tVar == null) {
                return;
            }
            if (tVar.getParent() != null) {
                BaseTransientBottomBar.this.view.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.view.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.U();
            } else {
                BaseTransientBottomBar.this.W();
            }
        }
    }

    class p extends AnimatorListenerAdapter {
        p() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.L();
        }
    }

    static class q implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        @NonNull
        private final WeakReference<View> anchorView;

        @NonNull
        private final WeakReference<BaseTransientBottomBar> transientBottomBar;

        private boolean c() {
            if (this.transientBottomBar.get() != null) {
                return false;
            }
            b();
            return true;
        }

        @Nullable
        View a() {
            return this.anchorView.get();
        }

        void b() {
            if (this.anchorView.get() != null) {
                this.anchorView.get().removeOnAttachStateChangeListener(this);
                u.i(this.anchorView.get(), this);
            }
            this.anchorView.clear();
            this.transientBottomBar.clear();
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!c() && this.transientBottomBar.get().anchorViewLayoutListenerEnabled) {
                this.transientBottomBar.get().M();
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (c()) {
                return;
            }
            u.a(view, this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (c()) {
                return;
            }
            u.i(view, this);
        }
    }

    public static abstract class r<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        public void a(B b7, int i10) {
        }

        public void b(B b7) {
        }
    }

    @RestrictTo
    public static class s {
        private com.google.android.material.snackbar.c.b managerCallback;

        public boolean a(View view) {
            return view instanceof t;
        }

        public void c(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.managerCallback = baseTransientBottomBar.managerCallback;
        }

        public s(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.g(0.1f);
            swipeDismissBehavior.e(0.6f);
            swipeDismissBehavior.h(0);
        }

        public void b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    com.google.android.material.snackbar.c.c().k(this.managerCallback);
                    return;
                }
                return;
            }
            if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                com.google.android.material.snackbar.c.c().j(this.managerCallback);
            }
        }
    }

    @RestrictTo
    protected static class t extends FrameLayout {
        private static final View.OnTouchListener consumeAllTouchListener = new a();
        private final float actionTextColorAlpha;
        private boolean addingToTargetParent;
        private int animationMode;
        private final float backgroundOverlayColorAlpha;
        private ColorStateList backgroundTint;
        private PorterDuff.Mode backgroundTintMode;

        @Nullable
        private BaseTransientBottomBar<?> baseTransientBottomBar;
        private final int maxInlineActionWidth;
        private final int maxWidth;

        @Nullable
        private Rect originalMargins;

        protected t(@NonNull Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.baseTransientBottomBar = baseTransientBottomBar;
        }

        void c(ViewGroup viewGroup) {
            this.addingToTargetParent = true;
            viewGroup.addView(this);
            this.addingToTargetParent = false;
        }

        float getActionTextColorAlpha() {
            return this.actionTextColorAlpha;
        }

        int getAnimationMode() {
            return this.animationMode;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.backgroundOverlayColorAlpha;
        }

        int getMaxInlineActionWidth() {
            return this.maxInlineActionWidth;
        }

        int getMaxWidth() {
            return this.maxWidth;
        }

        void setAnimationMode(int i10) {
            this.animationMode = i10;
        }

        class a implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }

            a() {
            }
        }

        protected t(@NonNull Context context, AttributeSet attributeSet) {
            super(r3.a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, d3.l.SnackbarLayout);
            int i10 = d3.l.SnackbarLayout_elevation;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                ViewCompat.C0(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(i10, 0));
            }
            this.animationMode = typedArrayObtainStyledAttributes.getInt(d3.l.SnackbarLayout_animationMode, 0);
            this.backgroundOverlayColorAlpha = typedArrayObtainStyledAttributes.getFloat(d3.l.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(com.google.android.material.resources.c.a(context2, typedArrayObtainStyledAttributes, d3.l.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(u.h(typedArrayObtainStyledAttributes.getInt(d3.l.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.actionTextColorAlpha = typedArrayObtainStyledAttributes.getFloat(d3.l.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.maxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(d3.l.SnackbarLayout_android_maxWidth, -1);
            this.maxInlineActionWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(d3.l.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(consumeAllTouchListener);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.y0(this, d());
            }
        }

        private void e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.originalMargins = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.backgroundTint != null) {
                drawable = DrawableCompat.r(drawable.mutate());
                DrawableCompat.o(drawable, this.backgroundTint);
                DrawableCompat.p(drawable, this.backgroundTintMode);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.backgroundTint = colorStateList;
            if (getBackground() != null) {
                Drawable drawableR = DrawableCompat.r(getBackground().mutate());
                DrawableCompat.o(drawableR, colorStateList);
                DrawableCompat.p(drawableR, this.backgroundTintMode);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.backgroundTintMode = mode;
            if (getBackground() != null) {
                Drawable drawableR = DrawableCompat.r(getBackground().mutate());
                DrawableCompat.p(drawableR, mode);
                if (drawableR != getBackground()) {
                    super.setBackgroundDrawable(drawableR);
                }
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : consumeAllTouchListener);
            super.setOnClickListener(onClickListener);
        }

        @NonNull
        private Drawable d() {
            float dimension = getResources().getDimension(d3.d.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(i3.a.i(this, d3.b.colorSurface, d3.b.colorOnSurface, getBackgroundOverlayColorAlpha()));
            if (this.backgroundTint != null) {
                Drawable drawableR = DrawableCompat.r(gradientDrawable);
                DrawableCompat.o(drawableR, this.backgroundTint);
                return drawableR;
            }
            return DrawableCompat.r(gradientDrawable);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.H();
            }
            ViewCompat.q0(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.I();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
            super.onLayout(z6, i10, i11, i12, i13);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.J();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (this.maxWidth > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = this.maxWidth;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (!this.addingToTargetParent && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                e((ViewGroup.MarginLayoutParams) layoutParams);
                BaseTransientBottomBar<?> baseTransientBottomBar = this.baseTransientBottomBar;
                if (baseTransientBottomBar != null) {
                    baseTransientBottomBar.Y();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int C() {
        int[] iArr = new int[2];
        this.view.getLocationOnScreen(iArr);
        return iArr[1] + this.view.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        ValueAnimator valueAnimatorU = u(0.0f, 1.0f);
        ValueAnimator valueAnimatorY = y(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorU, valueAnimatorY);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new p());
        animatorSet.start();
    }

    private void V(int i10) {
        ValueAnimator valueAnimatorU = u(1.0f, 0.0f);
        valueAnimatorU.setDuration(75L);
        valueAnimatorU.addListener(new a(i10));
        valueAnimatorU.start();
    }

    @NonNull
    public B N(int i10) {
        this.duration = i10;
        return this;
    }

    public void s() {
        t(3);
    }

    public int w() {
        return this.duration;
    }

    private int B() {
        int height = this.view.getHeight();
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    private boolean G() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).f() instanceof SwipeDismissBehavior);
    }

    private void O(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehaviorX = this.behavior;
        if (swipeDismissBehaviorX == null) {
            swipeDismissBehaviorX = x();
        }
        if (swipeDismissBehaviorX instanceof Behavior) {
            ((Behavior) swipeDismissBehaviorX).k(this);
        }
        swipeDismissBehaviorX.f(new n());
        layoutParams.o(swipeDismissBehaviorX);
        if (v() == null) {
            layoutParams.insetEdge = 80;
        }
    }

    private boolean Q() {
        return this.extraBottomMarginGestureInset > 0 && !this.gestureInsetBottomIgnored && G();
    }

    private void X(int i10) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, B());
        valueAnimator.setInterpolator(e3.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new f(i10));
        valueAnimator.addUpdateListener(new g());
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.view.originalMargins == null) {
            Log.w(TAG, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (this.view.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = this.view.originalMargins.bottom + (v() != null ? this.extraBottomMarginAnchorView : this.extraBottomMarginWindowInset);
        marginLayoutParams.leftMargin = this.view.originalMargins.left + this.extraLeftMarginWindowInset;
        marginLayoutParams.rightMargin = this.view.originalMargins.right + this.extraRightMarginWindowInset;
        marginLayoutParams.topMargin = this.view.originalMargins.top;
        this.view.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !Q()) {
            return;
        }
        this.view.removeCallbacks(this.bottomMarginGestureInsetRunnable);
        this.view.post(this.bottomMarginGestureInsetRunnable);
    }

    private void q(int i10) {
        if (this.view.getAnimationMode() == 1) {
            V(i10);
        } else {
            X(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    public int z() {
        WindowManager windowManager = (WindowManager) this.context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    protected boolean D() {
        TypedArray typedArrayObtainStyledAttributes = this.context.obtainStyledAttributes(SNACKBAR_STYLE_ATTR);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    void H() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.view.getRootWindowInsets()) == null) {
            return;
        }
        this.extraBottomMarginGestureInset = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        Y();
    }

    void J() {
        if (this.pendingShowingView) {
            T();
            this.pendingShowingView = false;
        }
    }

    boolean P() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    final void S() {
        if (this.view.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                O((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.view.c(this.targetParent);
            M();
            this.view.setVisibility(4);
        }
        if (ViewCompat.X(this.view)) {
            T();
        } else {
            this.pendingShowingView = true;
        }
    }

    void p() {
        this.view.post(new o());
    }

    @Nullable
    public View v() {
        q qVar = this.anchor;
        if (qVar == null) {
            return null;
        }
        return qVar.a();
    }

    @NonNull
    protected SwipeDismissBehavior<? extends View> x() {
        return new Behavior();
    }

    protected BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.a aVar) {
        if (viewGroup != null) {
            if (view != null) {
                if (aVar != null) {
                    this.targetParent = viewGroup;
                    this.contentViewCallback = aVar;
                    this.context = context;
                    com.google.android.material.internal.s.a(context);
                    t tVar = (t) LayoutInflater.from(context).inflate(A(), viewGroup, false);
                    this.view = tVar;
                    tVar.setBaseTransientBottomBar(this);
                    if (view instanceof SnackbarContentLayout) {
                        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                        snackbarContentLayout.c(tVar.getActionTextColorAlpha());
                        snackbarContentLayout.setMaxInlineActionWidth(tVar.getMaxInlineActionWidth());
                    }
                    tVar.addView(view);
                    ViewCompat.w0(tVar, 1);
                    ViewCompat.F0(tVar, 1);
                    ViewCompat.D0(tVar, true);
                    ViewCompat.L0(tVar, new j());
                    ViewCompat.u0(tVar, new k());
                    this.accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
                    return;
                }
                throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
            }
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        this.extraBottomMarginAnchorView = r();
        Y();
    }

    private void T() {
        if (P()) {
            p();
            return;
        }
        if (this.view.getParent() != null) {
            this.view.setVisibility(0);
        }
        L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        int iB = B();
        if (USE_OFFSET_API) {
            ViewCompat.e0(this.view, iB);
        } else {
            this.view.setTranslationY(iB);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iB, 0);
        valueAnimator.setInterpolator(e3.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new d());
        valueAnimator.addUpdateListener(new e(iB));
        valueAnimator.start();
    }

    private int r() {
        if (v() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        v().getLocationOnScreen(iArr);
        int i10 = iArr[1];
        int[] iArr2 = new int[2];
        this.targetParent.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.targetParent.getHeight()) - i10;
    }

    private ValueAnimator u(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(e3.a.LINEAR_INTERPOLATOR);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    private ValueAnimator y(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(e3.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimatorOfFloat.addUpdateListener(new c());
        return valueAnimatorOfFloat;
    }

    @LayoutRes
    protected int A() {
        if (D()) {
            return d3.h.mtrl_layout_snackbar;
        }
        return d3.h.design_layout_snackbar;
    }

    final void E(int i10) {
        if (P() && this.view.getVisibility() == 0) {
            q(i10);
        } else {
            K(i10);
        }
    }

    public boolean F() {
        return com.google.android.material.snackbar.c.c().e(this.managerCallback);
    }

    void I() {
        if (F()) {
            handler.post(new m());
        }
    }

    void K(int i10) {
        com.google.android.material.snackbar.c.c().h(this.managerCallback);
        List<r<B>> list = this.callbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).a(this, i10);
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    void L() {
        com.google.android.material.snackbar.c.c().i(this.managerCallback);
        List<r<B>> list = this.callbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).b(this);
            }
        }
    }

    public void R() {
        com.google.android.material.snackbar.c.c().m(w(), this.managerCallback);
    }

    protected void t(int i10) {
        com.google.android.material.snackbar.c.c().b(this.managerCallback, i10);
    }
}
