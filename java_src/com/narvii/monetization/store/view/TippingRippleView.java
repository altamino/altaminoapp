package com.narvii.monetization.store.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TippingRippleView.kt */
/* loaded from: classes3.dex */
public final class TippingRippleView extends View {
    private HashMap _$_findViewCache;
    private final ValueAnimator animator;
    private boolean isHalfPlayCalled;
    private Function0<Unit> onHalfPlayed;
    private final Paint paint;
    private float rate;
    private float ringStrokeWidth;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public final Function0<Unit> getOnHalfPlayed() {
        return this.onHalfPlayed;
    }

    public final void setOnHalfPlayed(Function0<Unit> function0) {
        this.onHalfPlayed = function0;
    }

    public TippingRippleView(Context context) {
        super(context);
        this.paint = new Paint(1);
        this.animator = ValueAnimator.ofFloat(0.1f, 1.0f);
        this.ringStrokeWidth = Utils.dpToPx(getContext(), 6.0f);
        this.paint.setColor(Color.parseColor("#CC000000"));
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingRippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                TippingRippleView tippingRippleView = TippingRippleView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    tippingRippleView.rate = ((Float) animatedValue).floatValue();
                    if (!TippingRippleView.this.isHalfPlayCalled && TippingRippleView.this.rate >= 0.55f) {
                        TippingRippleView.this.isHalfPlayCalled = true;
                        Function0<Unit> onHalfPlayed = TippingRippleView.this.getOnHalfPlayed();
                        if (onHalfPlayed != null) {
                            onHalfPlayed.invoke();
                        }
                    }
                    TippingRippleView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
    }

    public TippingRippleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint(1);
        this.animator = ValueAnimator.ofFloat(0.1f, 1.0f);
        this.ringStrokeWidth = Utils.dpToPx(getContext(), 6.0f);
        this.paint.setColor(Color.parseColor("#CC000000"));
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingRippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                TippingRippleView tippingRippleView = TippingRippleView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    tippingRippleView.rate = ((Float) animatedValue).floatValue();
                    if (!TippingRippleView.this.isHalfPlayCalled && TippingRippleView.this.rate >= 0.55f) {
                        TippingRippleView.this.isHalfPlayCalled = true;
                        Function0<Unit> onHalfPlayed = TippingRippleView.this.getOnHalfPlayed();
                        if (onHalfPlayed != null) {
                            onHalfPlayed.invoke();
                        }
                    }
                    TippingRippleView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
    }

    public TippingRippleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.paint = new Paint(1);
        this.animator = ValueAnimator.ofFloat(0.1f, 1.0f);
        this.ringStrokeWidth = Utils.dpToPx(getContext(), 6.0f);
        this.paint.setColor(Color.parseColor("#CC000000"));
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.monetization.store.view.TippingRippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                TippingRippleView tippingRippleView = TippingRippleView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    tippingRippleView.rate = ((Float) animatedValue).floatValue();
                    if (!TippingRippleView.this.isHalfPlayCalled && TippingRippleView.this.rate >= 0.55f) {
                        TippingRippleView.this.isHalfPlayCalled = true;
                        Function0<Unit> onHalfPlayed = TippingRippleView.this.getOnHalfPlayed();
                        if (onHalfPlayed != null) {
                            onHalfPlayed.invoke();
                        }
                    }
                    TippingRippleView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float height2 = this.rate * getHeight() * 1.4f;
        this.paint.setStyle(Paint.Style.FILL);
        if (canvas != null) {
            canvas.drawCircle(width, height, height2, this.paint);
        }
        this.paint.setStyle(Paint.Style.STROKE);
        float f = 2;
        this.paint.setStrokeWidth(this.ringStrokeWidth * f);
        if (canvas != null) {
            canvas.drawCircle(width, height, height2 * f, this.paint);
        }
        this.paint.setStrokeWidth(this.ringStrokeWidth);
        if (canvas != null) {
            canvas.drawCircle(width, height, (height2 * f) - (3 * this.ringStrokeWidth), this.paint);
        }
    }

    public final void startRippleEffect(long j) {
        this.isHalfPlayCalled = false;
        this.animator.cancel();
        ValueAnimator animator = this.animator;
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(j);
        this.animator.start();
    }
}
