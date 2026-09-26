package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.android.material.shape.g;
import com.google.android.material.shape.k;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
class e extends d {
    @Override // com.google.android.material.floatingactionbutton.d
    void A() {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void E(int[] iArr) {
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean K() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void d0() {
    }

    static class a extends g {
        @Override // com.google.android.material.shape.g, android.graphics.drawable.Drawable
        public boolean isStateful() {
            return true;
        }

        a(k kVar) {
            super(kVar);
        }
    }

    @NonNull
    private Animator j0(float f, float f6) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.view, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.view, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f6).setDuration(100L));
        animatorSet.setInterpolator(d.ELEVATION_ANIM_INTERPOLATOR);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void F(float f, float f6, float f7) {
        int i10 = Build.VERSION.SDK_INT;
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(d.PRESSED_ENABLED_STATE_SET, j0(f, f7));
        stateListAnimator.addState(d.HOVERED_FOCUSED_ENABLED_STATE_SET, j0(f, f6));
        stateListAnimator.addState(d.FOCUSED_ENABLED_STATE_SET, j0(f, f6));
        stateListAnimator.addState(d.HOVERED_ENABLED_STATE_SET, j0(f, f6));
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.view, "elevation", f).setDuration(0L));
        if (i10 <= 24) {
            FloatingActionButton floatingActionButton = this.view;
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
        }
        arrayList.add(ObjectAnimator.ofFloat(this.view, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
        animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
        animatorSet.setInterpolator(d.ELEVATION_ANIM_INTERPOLATOR);
        stateListAnimator.addState(d.ENABLED_STATE_SET, animatorSet);
        stateListAnimator.addState(d.EMPTY_STATE_SET, j0(0.0f, 0.0f));
        this.view.setStateListAnimator(stateListAnimator);
        if (Z()) {
            f0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void V(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.rippleDrawable;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(com.google.android.material.ripple.b.d(colorStateList));
        } else {
            super.V(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.d
    boolean Z() {
        return this.shadowViewDelegate.c() || !b0();
    }

    @NonNull
    c i0(int i10, ColorStateList colorStateList) {
        Context context = this.view.getContext();
        c cVar = new c((k) Preconditions.i(this.shapeAppearance));
        cVar.e(ContextCompat.getColor(context, d3.c.design_fab_stroke_top_outer_color), ContextCompat.getColor(context, d3.c.design_fab_stroke_top_inner_color), ContextCompat.getColor(context, d3.c.design_fab_stroke_end_inner_color), ContextCompat.getColor(context, d3.c.design_fab_stroke_end_outer_color));
        cVar.d(i10);
        cVar.c(colorStateList);
        return cVar;
    }

    @Override // com.google.android.material.floatingactionbutton.d
    @NonNull
    g l() {
        return new a((k) Preconditions.i(this.shapeAppearance));
    }

    @Override // com.google.android.material.floatingactionbutton.d
    public float n() {
        return this.view.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void s(@NonNull Rect rect) {
        if (this.shadowViewDelegate.c()) {
            super.s(rect);
        } else if (b0()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.minTouchTargetSize - this.view.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    e(FloatingActionButton floatingActionButton, q3.b bVar) {
        super(floatingActionButton, bVar);
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void C() {
        f0();
    }

    @Override // com.google.android.material.floatingactionbutton.d
    void x(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        Drawable layerDrawable;
        g gVarL = l();
        this.shapeDrawable = gVarL;
        gVarL.setTintList(colorStateList);
        if (mode != null) {
            this.shapeDrawable.setTintMode(mode);
        }
        this.shapeDrawable.O(this.view.getContext());
        if (i10 > 0) {
            this.borderDrawable = i0(i10, colorStateList);
            layerDrawable = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.i(this.borderDrawable), (Drawable) Preconditions.i(this.shapeDrawable)});
        } else {
            this.borderDrawable = null;
            layerDrawable = this.shapeDrawable;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(com.google.android.material.ripple.b.d(colorStateList2), layerDrawable, null);
        this.rippleDrawable = rippleDrawable;
        this.contentBackground = rippleDrawable;
    }
}
