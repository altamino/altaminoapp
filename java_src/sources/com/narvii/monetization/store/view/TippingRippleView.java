package com.narvii.monetization.store.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class TippingRippleView extends View {
    private final ValueAnimator animator;
    private boolean isHalfPlayCalled;

    @Nullable
    private e8.a<l0> onHalfPlayed;

    @NotNull
    private final Paint paint;
    private float rate;
    private float ringStrokeWidth;

    public TippingRippleView(@Nullable Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.paint = paint;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.1f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        this.ringStrokeWidth = Utils.dpToPx(getContext(), 6.0f);
        paint.setColor(Color.parseColor("#CC000000"));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingRippleView._init_$lambda$0(this.f2535a, valueAnimator);
            }
        });
    }

    @Nullable
    public final e8.a<l0> getOnHalfPlayed() {
        return this.onHalfPlayed;
    }

    public final void setOnHalfPlayed(@Nullable e8.a<l0> aVar) {
        this.onHalfPlayed = aVar;
    }

    public final void startRippleEffect(long j6) {
        this.isHalfPlayCalled = false;
        this.animator.cancel();
        this.animator.setDuration(j6);
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(TippingRippleView this$0, ValueAnimator it) {
        t.j(this$0, "this$0");
        t.j(it, "it");
        Object animatedValue = it.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        this$0.rate = fFloatValue;
        if (!this$0.isHalfPlayCalled && fFloatValue >= 0.55f) {
            this$0.isHalfPlayCalled = true;
            e8.a<l0> aVar = this$0.onHalfPlayed;
            if (aVar != null) {
                aVar.invoke();
            }
        }
        this$0.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float height2 = this.rate * getHeight() * 1.4f;
        this.paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(width, height, height2, this.paint);
        this.paint.setStyle(Paint.Style.STROKE);
        float f = 2;
        this.paint.setStrokeWidth(this.ringStrokeWidth * f);
        float f6 = height2 * f;
        canvas.drawCircle(width, height, f6, this.paint);
        this.paint.setStrokeWidth(this.ringStrokeWidth);
        canvas.drawCircle(width, height, f6 - (3 * this.ringStrokeWidth), this.paint);
    }

    public TippingRippleView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.paint = paint;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.1f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        this.ringStrokeWidth = Utils.dpToPx(getContext(), 6.0f);
        paint.setColor(Color.parseColor("#CC000000"));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingRippleView._init_$lambda$0(this.f2535a, valueAnimator);
            }
        });
    }

    public TippingRippleView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Paint paint = new Paint(1);
        this.paint = paint;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.1f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        this.ringStrokeWidth = Utils.dpToPx(getContext(), 6.0f);
        paint.setColor(Color.parseColor("#CC000000"));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TippingRippleView._init_$lambda$0(this.f2535a, valueAnimator);
            }
        });
    }
}
