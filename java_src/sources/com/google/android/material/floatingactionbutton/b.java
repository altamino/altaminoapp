package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import e3.h;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class b implements f {
    private final Context context;

    @Nullable
    private h defaultMotionSpec;

    @NonNull
    private final ExtendedFloatingActionButton fab;
    private final ArrayList<Animator.AnimatorListener> listeners = new ArrayList<>();

    @Nullable
    private h motionSpec;
    private final com.google.android.material.floatingactionbutton.a tracker;

    class a extends Property<ExtendedFloatingActionButton, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(e3.a.a(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.fab.originalTextCsl.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
            int colorForState = extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), b.this.fab.originalTextCsl.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (e3.a.a(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f.floatValue() == 1.0f) {
                extendedFloatingActionButton.B(extendedFloatingActionButton.originalTextCsl);
            } else {
                extendedFloatingActionButton.B(colorStateListValueOf);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @Nullable
    public h a() {
        return this.motionSpec;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public final void f(@Nullable h hVar) {
        this.motionSpec = hVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @NonNull
    public final List<Animator.AnimatorListener> j() {
        return this.listeners;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void h() {
        this.tracker.b();
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void i() {
        this.tracker.b();
    }

    @NonNull
    AnimatorSet l(@NonNull h hVar) {
        ArrayList arrayList = new ArrayList();
        if (hVar.j("opacity")) {
            arrayList.add(hVar.f("opacity", this.fab, View.ALPHA));
        }
        if (hVar.j("scale")) {
            arrayList.add(hVar.f("scale", this.fab, View.SCALE_Y));
            arrayList.add(hVar.f("scale", this.fab, View.SCALE_X));
        }
        if (hVar.j("width")) {
            arrayList.add(hVar.f("width", this.fab, ExtendedFloatingActionButton.WIDTH));
        }
        if (hVar.j("height")) {
            arrayList.add(hVar.f("height", this.fab, ExtendedFloatingActionButton.HEIGHT));
        }
        if (hVar.j("paddingStart")) {
            arrayList.add(hVar.f("paddingStart", this.fab, ExtendedFloatingActionButton.PADDING_START));
        }
        if (hVar.j("paddingEnd")) {
            arrayList.add(hVar.f("paddingEnd", this.fab, ExtendedFloatingActionButton.PADDING_END));
        }
        if (hVar.j("labelOpacity")) {
            arrayList.add(hVar.f("labelOpacity", this.fab, new a(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        e3.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final h m() {
        h hVar = this.motionSpec;
        if (hVar != null) {
            return hVar;
        }
        if (this.defaultMotionSpec == null) {
            this.defaultMotionSpec = h.d(this.context, c());
        }
        return (h) Preconditions.i(this.defaultMotionSpec);
    }

    @Override // com.google.android.material.floatingactionbutton.f
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.tracker.c(animator);
    }

    b(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.a aVar) {
        this.fab = extendedFloatingActionButton;
        this.context = extendedFloatingActionButton.getContext();
        this.tracker = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.f
    public AnimatorSet d() {
        return l(m());
    }
}
