package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.n;
import com.google.android.material.shape.o;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
class d {
    static final int ANIM_STATE_HIDING = 1;
    static final int ANIM_STATE_NONE = 0;
    static final int ANIM_STATE_SHOWING = 2;
    static final long ELEVATION_ANIM_DELAY = 100;
    static final long ELEVATION_ANIM_DURATION = 100;
    private static final float HIDE_ICON_SCALE = 0.4f;
    private static final float HIDE_OPACITY = 0.0f;
    private static final float HIDE_SCALE = 0.4f;
    static final float SHADOW_MULTIPLIER = 1.5f;
    private static final float SHOW_ICON_SCALE = 1.0f;
    private static final float SHOW_OPACITY = 1.0f;
    private static final float SHOW_SCALE = 1.0f;
    private static final float SPEC_HIDE_ICON_SCALE = 0.0f;
    private static final float SPEC_HIDE_SCALE = 0.0f;

    @Nullable
    com.google.android.material.floatingactionbutton.c borderDrawable;

    @Nullable
    Drawable contentBackground;

    @Nullable
    private Animator currentAnimator;
    float elevation;
    boolean ensureMinTouchTargetSize;
    private ArrayList<Animator.AnimatorListener> hideListeners;

    @Nullable
    private e3.h hideMotionSpec;
    float hoveredFocusedTranslationZ;
    private int maxImageSize;
    int minTouchTargetSize;

    @Nullable
    private ViewTreeObserver.OnPreDrawListener preDrawListener;
    float pressedTranslationZ;

    @Nullable
    Drawable rippleDrawable;
    private float rotation;
    final q3.b shadowViewDelegate;

    @Nullable
    com.google.android.material.shape.k shapeAppearance;

    @Nullable
    com.google.android.material.shape.g shapeDrawable;
    private ArrayList<Animator.AnimatorListener> showListeners;

    @Nullable
    private e3.h showMotionSpec;

    @NonNull
    private final n stateListAnimator;
    private ArrayList<j> transformationCallbacks;
    final FloatingActionButton view;
    static final TimeInterpolator ELEVATION_ANIM_INTERPOLATOR = e3.a.FAST_OUT_LINEAR_IN_INTERPOLATOR;
    static final int[] PRESSED_ENABLED_STATE_SET = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] HOVERED_FOCUSED_ENABLED_STATE_SET = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] FOCUSED_ENABLED_STATE_SET = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] HOVERED_ENABLED_STATE_SET = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] ENABLED_STATE_SET = {R.attr.state_enabled};
    static final int[] EMPTY_STATE_SET = new int[0];
    boolean shadowPaddingEnabled = true;
    private float imageMatrixScale = 1.0f;
    private int animState = 0;
    private final Rect tmpRect = new Rect();
    private final RectF tmpRectF1 = new RectF();
    private final RectF tmpRectF2 = new RectF();
    private final Matrix tmpMatrix = new Matrix();

    class a extends AnimatorListenerAdapter {
        private boolean cancelled;
        final /* synthetic */ boolean val$fromUser;
        final /* synthetic */ k val$listener;

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.cancelled = true;
        }

        a(boolean z6, k kVar) {
            this.val$fromUser = z6;
            this.val$listener = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.animState = 0;
            d.this.currentAnimator = null;
            if (this.cancelled) {
                return;
            }
            FloatingActionButton floatingActionButton = d.this.view;
            boolean z6 = this.val$fromUser;
            floatingActionButton.b(z6 ? 8 : 4, z6);
            k kVar = this.val$listener;
            if (kVar != null) {
                kVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.view.b(0, this.val$fromUser);
            d.this.animState = 1;
            d.this.currentAnimator = animator;
            this.cancelled = false;
        }
    }

    class b extends AnimatorListenerAdapter {
        final /* synthetic */ boolean val$fromUser;
        final /* synthetic */ k val$listener;

        b(boolean z6, k kVar) {
            this.val$fromUser = z6;
            this.val$listener = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.animState = 0;
            d.this.currentAnimator = null;
            k kVar = this.val$listener;
            if (kVar != null) {
                kVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.view.b(0, this.val$fromUser);
            d.this.animState = 2;
            d.this.currentAnimator = animator;
        }
    }

    class c extends e3.g {
        c() {
        }

        @Override // e3.g, android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a */
        public Matrix evaluate(float f, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            d.this.imageMatrixScale = f;
            return super.evaluate(f, matrix, matrix2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.d$d, reason: collision with other inner class name */
    class C0202d implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ Matrix val$matrix;
        final /* synthetic */ float val$startAlpha;
        final /* synthetic */ float val$startImageMatrixScale;
        final /* synthetic */ float val$startScaleX;
        final /* synthetic */ float val$startScaleY;
        final /* synthetic */ float val$targetIconScale;
        final /* synthetic */ float val$targetOpacity;
        final /* synthetic */ float val$targetScale;

        C0202d(float f, float f6, float f7, float f10, float f11, float f12, float f13, Matrix matrix) {
            this.val$startAlpha = f;
            this.val$targetOpacity = f6;
            this.val$startScaleX = f7;
            this.val$targetScale = f10;
            this.val$startScaleY = f11;
            this.val$startImageMatrixScale = f12;
            this.val$targetIconScale = f13;
            this.val$matrix = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.view.setAlpha(e3.a.b(this.val$startAlpha, this.val$targetOpacity, 0.0f, 0.2f, fFloatValue));
            d.this.view.setScaleX(e3.a.a(this.val$startScaleX, this.val$targetScale, fFloatValue));
            d.this.view.setScaleY(e3.a.a(this.val$startScaleY, this.val$targetScale, fFloatValue));
            d.this.imageMatrixScale = e3.a.a(this.val$startImageMatrixScale, this.val$targetIconScale, fFloatValue);
            d.this.h(e3.a.a(this.val$startImageMatrixScale, this.val$targetIconScale, fFloatValue), this.val$matrix);
            d.this.view.setImageMatrix(this.val$matrix);
        }
    }

    class e implements TypeEvaluator<Float> {
        FloatEvaluator floatEvaluator = new FloatEvaluator();

        e() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f, Float f6, Float f7) {
            float fFloatValue = this.floatEvaluator.evaluate(f, (Number) f6, (Number) f7).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            d.this.H();
            return true;
        }
    }

    private class g extends m {
        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return 0.0f;
        }

        g() {
            super(d.this, null);
        }
    }

    private class h extends m {
        h() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.elevation + dVar.hoveredFocusedTranslationZ;
        }
    }

    private class i extends m {
        i() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.elevation + dVar.pressedTranslationZ;
        }
    }

    interface j {
        void a();

        void b();
    }

    interface k {
        void a();

        void b();
    }

    private class l extends m {
        l() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return d.this.elevation;
        }
    }

    private abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        private float shadowSizeEnd;
        private float shadowSizeStart;
        private boolean validValues;

        private m() {
        }

        protected abstract float a();

        /* synthetic */ m(d dVar, a aVar) {
            this();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.g0((int) this.shadowSizeEnd);
            this.validValues = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.validValues) {
                com.google.android.material.shape.g gVar = d.this.shapeDrawable;
                this.shadowSizeStart = gVar == null ? 0.0f : gVar.w();
                this.shadowSizeEnd = a();
                this.validValues = true;
            }
            d dVar = d.this;
            float f = this.shadowSizeStart;
            dVar.g0((int) (f + ((this.shadowSizeEnd - f) * valueAnimator.getAnimatedFraction())));
        }
    }

    private AnimatorSet j(float f6, float f7, float f10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new C0202d(this.view.getAlpha(), f6, this.view.getScaleX(), f7, this.view.getScaleY(), this.imageMatrixScale, f10, new Matrix(this.tmpMatrix)));
        arrayList.add(valueAnimatorOfFloat);
        e3.b.a(animatorSet, arrayList);
        animatorSet.setDuration(o3.a.d(this.view.getContext(), d3.b.motionDurationLong1, this.view.getContext().getResources().getInteger(d3.g.material_motion_duration_long_1)));
        animatorSet.setInterpolator(o3.a.e(this.view.getContext(), d3.b.motionEasingStandard, e3.a.FAST_OUT_SLOW_IN_INTERPOLATOR));
        return animatorSet;
    }

    void C() {
    }

    boolean K() {
        return true;
    }

    void O(boolean z6) {
        this.ensureMinTouchTargetSize = z6;
    }

    final void P(@Nullable e3.h hVar) {
        this.hideMotionSpec = hVar;
    }

    void T(int i10) {
        this.minTouchTargetSize = i10;
    }

    final void Y(@Nullable e3.h hVar) {
        this.showMotionSpec = hVar;
    }

    boolean Z() {
        return true;
    }

    @Nullable
    final Drawable m() {
        return this.contentBackground;
    }

    float n() {
        return this.elevation;
    }

    boolean o() {
        return this.ensureMinTouchTargetSize;
    }

    @Nullable
    final e3.h p() {
        return this.hideMotionSpec;
    }

    float q() {
        return this.hoveredFocusedTranslationZ;
    }

    float t() {
        return this.pressedTranslationZ;
    }

    @Nullable
    final com.google.android.material.shape.k u() {
        return this.shapeAppearance;
    }

    @Nullable
    final e3.h v() {
        return this.showMotionSpec;
    }

    private boolean a0() {
        return ViewCompat.X(this.view) && !this.view.isInEditMode();
    }

    private void h0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    @NonNull
    private AnimatorSet i(@NonNull e3.h hVar, float f6, float f7, float f10) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.view, (Property<FloatingActionButton, Float>) View.ALPHA, f6);
        hVar.h("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.view, (Property<FloatingActionButton, Float>) View.SCALE_X, f7);
        hVar.h("scale").a(objectAnimatorOfFloat2);
        h0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.view, (Property<FloatingActionButton, Float>) View.SCALE_Y, f7);
        hVar.h("scale").a(objectAnimatorOfFloat3);
        h0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        h(f10, this.tmpMatrix);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.view, new e3.f(), new c(), new Matrix(this.tmpMatrix));
        hVar.h("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        e3.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    @NonNull
    private ValueAnimator k(@NonNull m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(ELEVATION_ANIM_INTERPOLATOR);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    @NonNull
    private ViewTreeObserver.OnPreDrawListener r() {
        if (this.preDrawListener == null) {
            this.preDrawListener = new f();
        }
        return this.preDrawListener;
    }

    void A() {
        this.stateListAnimator.c();
    }

    void B() {
        com.google.android.material.shape.g gVar = this.shapeDrawable;
        if (gVar != null) {
            com.google.android.material.shape.h.f(this.view, gVar);
        }
        if (K()) {
            this.view.getViewTreeObserver().addOnPreDrawListener(r());
        }
    }

    void D() {
        ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.preDrawListener;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.preDrawListener = null;
        }
    }

    void E(int[] iArr) {
        this.stateListAnimator.d(iArr);
    }

    void G(@NonNull Rect rect) {
        Preconditions.j(this.contentBackground, "Didn't initialize content background");
        if (!Z()) {
            this.shadowViewDelegate.b(this.contentBackground);
        } else {
            this.shadowViewDelegate.b(new InsetDrawable(this.contentBackground, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void H() {
        float rotation = this.view.getRotation();
        if (this.rotation != rotation) {
            this.rotation = rotation;
            d0();
        }
    }

    void I() {
        ArrayList<j> arrayList = this.transformationCallbacks;
        if (arrayList != null) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    void J() {
        ArrayList<j> arrayList = this.transformationCallbacks;
        if (arrayList != null) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    void L(@Nullable ColorStateList colorStateList) {
        com.google.android.material.shape.g gVar = this.shapeDrawable;
        if (gVar != null) {
            gVar.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.borderDrawable;
        if (cVar != null) {
            cVar.c(colorStateList);
        }
    }

    void M(@Nullable PorterDuff.Mode mode) {
        com.google.android.material.shape.g gVar = this.shapeDrawable;
        if (gVar != null) {
            gVar.setTintMode(mode);
        }
    }

    final void N(float f6) {
        if (this.elevation != f6) {
            this.elevation = f6;
            F(f6, this.hoveredFocusedTranslationZ, this.pressedTranslationZ);
        }
    }

    final void Q(float f6) {
        if (this.hoveredFocusedTranslationZ != f6) {
            this.hoveredFocusedTranslationZ = f6;
            F(this.elevation, f6, this.pressedTranslationZ);
        }
    }

    final void R(float f6) {
        this.imageMatrixScale = f6;
        Matrix matrix = this.tmpMatrix;
        h(f6, matrix);
        this.view.setImageMatrix(matrix);
    }

    final void S(int i10) {
        if (this.maxImageSize != i10) {
            this.maxImageSize = i10;
            e0();
        }
    }

    final void U(float f6) {
        if (this.pressedTranslationZ != f6) {
            this.pressedTranslationZ = f6;
            F(this.elevation, this.hoveredFocusedTranslationZ, f6);
        }
    }

    void V(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            DrawableCompat.o(drawable, com.google.android.material.ripple.b.d(colorStateList));
        }
    }

    void W(boolean z6) {
        this.shadowPaddingEnabled = z6;
        f0();
    }

    final void X(@NonNull com.google.android.material.shape.k kVar) {
        this.shapeAppearance = kVar;
        com.google.android.material.shape.g gVar = this.shapeDrawable;
        if (gVar != null) {
            gVar.setShapeAppearanceModel(kVar);
        }
        Object obj = this.rippleDrawable;
        if (obj instanceof o) {
            ((o) obj).setShapeAppearanceModel(kVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.borderDrawable;
        if (cVar != null) {
            cVar.f(kVar);
        }
    }

    final boolean b0() {
        return !this.ensureMinTouchTargetSize || this.view.getSizeDimension() >= this.minTouchTargetSize;
    }

    void d0() {
        com.google.android.material.shape.g gVar = this.shapeDrawable;
        if (gVar != null) {
            gVar.g0((int) this.rotation);
        }
    }

    public void e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.hideListeners == null) {
            this.hideListeners = new ArrayList<>();
        }
        this.hideListeners.add(animatorListener);
    }

    final void e0() {
        R(this.imageMatrixScale);
    }

    void f(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.showListeners == null) {
            this.showListeners = new ArrayList<>();
        }
        this.showListeners.add(animatorListener);
    }

    final void f0() {
        Rect rect = this.tmpRect;
        s(rect);
        G(rect);
        this.shadowViewDelegate.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void g(@NonNull j jVar) {
        if (this.transformationCallbacks == null) {
            this.transformationCallbacks = new ArrayList<>();
        }
        this.transformationCallbacks.add(jVar);
    }

    void g0(float f6) {
        com.google.android.material.shape.g gVar = this.shapeDrawable;
        if (gVar != null) {
            gVar.Y(f6);
        }
    }

    com.google.android.material.shape.g l() {
        return new com.google.android.material.shape.g((com.google.android.material.shape.k) Preconditions.i(this.shapeAppearance));
    }

    void s(@NonNull Rect rect) {
        int sizeDimension = this.ensureMinTouchTargetSize ? (this.minTouchTargetSize - this.view.getSizeDimension()) / 2 : 0;
        float fN = this.shadowPaddingEnabled ? n() + this.pressedTranslationZ : 0.0f;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(fN));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(fN * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    boolean y() {
        if (this.view.getVisibility() == 0) {
            return this.animState == 1;
        }
        return this.animState != 2;
    }

    boolean z() {
        if (this.view.getVisibility() != 0) {
            return this.animState == 2;
        }
        return this.animState != 1;
    }

    d(FloatingActionButton floatingActionButton, q3.b bVar) {
        this.view = floatingActionButton;
        this.shadowViewDelegate = bVar;
        n nVar = new n();
        this.stateListAnimator = nVar;
        nVar.a(PRESSED_ENABLED_STATE_SET, k(new i()));
        nVar.a(HOVERED_FOCUSED_ENABLED_STATE_SET, k(new h()));
        nVar.a(FOCUSED_ENABLED_STATE_SET, k(new h()));
        nVar.a(HOVERED_ENABLED_STATE_SET, k(new h()));
        nVar.a(ENABLED_STATE_SET, k(new l()));
        nVar.a(EMPTY_STATE_SET, k(new g()));
        this.rotation = floatingActionButton.getRotation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(float f6, @NonNull Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.view.getDrawable();
        if (drawable != null && this.maxImageSize != 0) {
            RectF rectF = this.tmpRectF1;
            RectF rectF2 = this.tmpRectF2;
            rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            int i10 = this.maxImageSize;
            rectF2.set(0.0f, 0.0f, i10, i10);
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            int i11 = this.maxImageSize;
            matrix.postScale(f6, f6, i11 / 2.0f, i11 / 2.0f);
        }
    }

    void F(float f6, float f7, float f10) {
        f0();
        g0(f6);
    }

    void c0(@Nullable k kVar, boolean z6) {
        boolean z10;
        AnimatorSet animatorSetJ;
        float f6;
        float f7;
        if (z()) {
            return;
        }
        Animator animator = this.currentAnimator;
        if (animator != null) {
            animator.cancel();
        }
        if (this.showMotionSpec == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (a0()) {
            if (this.view.getVisibility() != 0) {
                float f10 = 0.0f;
                this.view.setAlpha(0.0f);
                FloatingActionButton floatingActionButton = this.view;
                if (z10) {
                    f6 = 0.4f;
                } else {
                    f6 = 0.0f;
                }
                floatingActionButton.setScaleY(f6);
                FloatingActionButton floatingActionButton2 = this.view;
                if (z10) {
                    f7 = 0.4f;
                } else {
                    f7 = 0.0f;
                }
                floatingActionButton2.setScaleX(f7);
                if (z10) {
                    f10 = 0.4f;
                }
                R(f10);
            }
            e3.h hVar = this.showMotionSpec;
            if (hVar != null) {
                animatorSetJ = i(hVar, 1.0f, 1.0f, 1.0f);
            } else {
                animatorSetJ = j(1.0f, 1.0f, 1.0f);
            }
            animatorSetJ.addListener(new b(z6, kVar));
            ArrayList<Animator.AnimatorListener> arrayList = this.showListeners;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                while (it.hasNext()) {
                    animatorSetJ.addListener(it.next());
                }
            }
            animatorSetJ.start();
            return;
        }
        this.view.b(0, z6);
        this.view.setAlpha(1.0f);
        this.view.setScaleY(1.0f);
        this.view.setScaleX(1.0f);
        R(1.0f);
        if (kVar != null) {
            kVar.a();
        }
    }

    void w(@Nullable k kVar, boolean z6) {
        int i10;
        AnimatorSet animatorSetJ;
        if (y()) {
            return;
        }
        Animator animator = this.currentAnimator;
        if (animator != null) {
            animator.cancel();
        }
        if (a0()) {
            e3.h hVar = this.hideMotionSpec;
            if (hVar != null) {
                animatorSetJ = i(hVar, 0.0f, 0.0f, 0.0f);
            } else {
                animatorSetJ = j(0.0f, 0.4f, 0.4f);
            }
            animatorSetJ.addListener(new a(z6, kVar));
            ArrayList<Animator.AnimatorListener> arrayList = this.hideListeners;
            if (arrayList != null) {
                Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                while (it.hasNext()) {
                    animatorSetJ.addListener(it.next());
                }
            }
            animatorSetJ.start();
            return;
        }
        FloatingActionButton floatingActionButton = this.view;
        if (z6) {
            i10 = 8;
        } else {
            i10 = 4;
        }
        floatingActionButton.b(i10, z6);
        if (kVar != null) {
            kVar.b();
        }
    }

    void x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        com.google.android.material.shape.g gVarL = l();
        this.shapeDrawable = gVarL;
        gVarL.setTintList(colorStateList);
        if (mode != null) {
            this.shapeDrawable.setTintMode(mode);
        }
        this.shapeDrawable.f0(-12303292);
        this.shapeDrawable.O(this.view.getContext());
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.shapeDrawable.E());
        aVar.setTintList(com.google.android.material.ripple.b.d(colorStateList2));
        this.rippleDrawable = aVar;
        this.contentBackground = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.i(this.shapeDrawable), aVar});
    }
}
