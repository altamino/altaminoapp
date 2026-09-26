package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.shape.g;
import com.google.android.material.shape.i;
import d3.f;
import d3.h;
import d3.l;

/* JADX INFO: loaded from: classes8.dex */
class c extends ConstraintLayout {
    private static final String SKIP_TAG = "skip";
    private g background;
    private int radius;
    private final Runnable updateLayoutParametersRunnable;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f();
        }
    }

    public c(@NonNull Context context) {
        this(context, null);
    }

    @Dimension
    public int c() {
        return this.radius;
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private Drawable b() {
        g gVar = new g();
        this.background = gVar;
        gVar.X(new i(0.5f));
        this.background.Z(ColorStateList.valueOf(-1));
        return this.background;
    }

    private static boolean e(View view) {
        return SKIP_TAG.equals(view.getTag());
    }

    public void d(@Dimension int i10) {
        this.radius = i10;
        f();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        this.background.Z(ColorStateList.valueOf(i10));
    }

    public c(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(h.material_radial_view_group, this);
        ViewCompat.y0(this, b());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.RadialViewGroup, i10, 0);
        this.radius = typedArrayObtainStyledAttributes.getDimensionPixelSize(l.RadialViewGroup_materialCircleRadius, 0);
        this.updateLayoutParametersRunnable = new a();
        typedArrayObtainStyledAttributes.recycle();
    }

    private void g() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.updateLayoutParametersRunnable);
            handler.post(this.updateLayoutParametersRunnable);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.m());
        }
        g();
    }

    protected void f() {
        int childCount = getChildCount();
        int i10 = 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            if (e(getChildAt(i11))) {
                i10++;
            }
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.p(this);
        float f = 0.0f;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int id = childAt.getId();
            int i13 = f.circle_center;
            if (id != i13 && !e(childAt)) {
                constraintSet.s(childAt.getId(), i13, this.radius, f);
                f += 360.0f / (childCount - i10);
            }
        }
        constraintSet.i(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        f();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        g();
    }
}
