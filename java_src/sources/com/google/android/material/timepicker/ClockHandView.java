package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import d3.k;
import d3.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class ClockHandView extends View {
    private static final int ANIMATION_DURATION = 200;
    private boolean animatingOnTouchUp;
    private final float centerDotRadius;
    private boolean changedDuringTouch;
    private int circleRadius;
    private double degRad;
    private float downX;
    private float downY;
    private boolean isInTapRegion;
    private final List<d> listeners;
    private c onActionUpListener;
    private float originalDeg;
    private final Paint paint;
    private ValueAnimator rotationAnimator;
    private int scaledTouchSlop;
    private final RectF selectorBox;
    private final int selectorRadius;

    @Px
    private final int selectorStrokeWidth;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
    }

    public interface d {
        void a(@FloatRange float f, boolean z6);
    }

    public ClockHandView(Context context) {
        this(context, null);
    }

    public RectF d() {
        return this.selectorBox;
    }

    @FloatRange
    public float f() {
        return this.originalDeg;
    }

    public int g() {
        return this.selectorRadius;
    }

    public void k(@FloatRange float f) {
        l(f, false);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, d3.b.materialClockStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(@FloatRange float f, boolean z6) {
        float f6 = f % 360.0f;
        this.originalDeg = f6;
        this.degRad = Math.toRadians(f6 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.circleRadius * ((float) Math.cos(this.degRad)));
        float fSin = height + (this.circleRadius * ((float) Math.sin(this.degRad)));
        RectF rectF = this.selectorBox;
        int i10 = this.selectorRadius;
        rectF.set(width - i10, fSin - i10, width + i10, fSin + i10);
        Iterator<d> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().a(f6, z6);
        }
        invalidate();
    }

    public void b(d dVar) {
        this.listeners.add(dVar);
    }

    public void j(@Dimension int i10) {
        this.circleRadius = i10;
        invalidate();
    }

    public void l(@FloatRange float f, boolean z6) {
        ValueAnimator valueAnimator = this.rotationAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z6) {
            m(f, false);
            return;
        }
        Pair<Float, Float> pairH = h(f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pairH.first).floatValue(), ((Float) pairH.second).floatValue());
        this.rotationAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.rotationAnimator.addUpdateListener(new a());
        this.rotationAnimator.addListener(new b());
        this.rotationAnimator.start();
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.listeners = new ArrayList();
        Paint paint = new Paint();
        this.paint = paint;
        this.selectorBox = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.ClockHandView, i10, k.Widget_MaterialComponents_TimePicker_Clock);
        this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(l.ClockHandView_materialCircleRadius, 0);
        this.selectorRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(l.ClockHandView_selectorSize, 0);
        Resources resources = getResources();
        this.selectorStrokeWidth = resources.getDimensionPixelSize(d3.d.material_clock_hand_stroke_width);
        this.centerDotRadius = resources.getDimensionPixelSize(d3.d.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(l.ClockHandView_clockHandColor, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        k(0.0f);
        this.scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.F0(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void c(Canvas canvas) {
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float fCos = (this.circleRadius * ((float) Math.cos(this.degRad))) + f;
        float f6 = height;
        float fSin = (this.circleRadius * ((float) Math.sin(this.degRad))) + f6;
        this.paint.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.selectorRadius, this.paint);
        double dSin = Math.sin(this.degRad);
        double dCos = Math.cos(this.degRad);
        double d2 = this.circleRadius - this.selectorRadius;
        this.paint.setStrokeWidth(this.selectorStrokeWidth);
        canvas.drawLine(f, f6, width + ((int) (dCos * d2)), height + ((int) (d2 * dSin)), this.paint);
        canvas.drawCircle(f, f6, this.centerDotRadius, this.paint);
    }

    private int e(float f, float f6) {
        int degrees = (int) Math.toDegrees(Math.atan2(f6 - (getHeight() / 2), f - (getWidth() / 2)));
        int i10 = degrees + 90;
        if (i10 < 0) {
            return degrees + 450;
        }
        return i10;
    }

    private Pair<Float, Float> h(float f) {
        float f6 = f();
        if (Math.abs(f6 - f) > 180.0f) {
            if (f6 > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (f6 < 180.0f && f > 180.0f) {
                f6 += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(f6), Float.valueOf(f));
    }

    private boolean i(float f, float f6, boolean z6, boolean z10, boolean z11) {
        boolean z12;
        float fE = e(f, f6);
        boolean z13 = false;
        if (f() != fE) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z10 && z12) {
            return true;
        }
        if (!z12 && !z6) {
            return false;
        }
        if (z11 && this.animatingOnTouchUp) {
            z13 = true;
        }
        l(fE, z13);
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        k(f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int actionMasked = motionEvent.getActionMasked();
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked != 1 && actionMasked != 2) {
                z10 = false;
                z6 = false;
                z11 = false;
            } else {
                int i10 = (int) (x6 - this.downX);
                int i11 = (int) (y6 - this.downY);
                if ((i10 * i10) + (i11 * i11) > this.scaledTouchSlop) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.isInTapRegion = z12;
                z10 = this.changedDuringTouch;
                if (actionMasked == 1) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                z11 = z13;
                z6 = false;
            }
        } else {
            this.downX = x6;
            this.downY = y6;
            this.isInTapRegion = true;
            this.changedDuringTouch = false;
            z6 = true;
            z10 = false;
            z11 = false;
        }
        this.changedDuringTouch |= i(x6, y6, z10, z6, z11);
        return true;
    }
}
