package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.shader.LinearGradientDelegate;

/* loaded from: classes3.dex */
public class LongPushButton extends PushButton {
    static final float[] hsv = new float[3];
    AllowLongPushListener allowLongPushListener;
    int contentColorEnd;
    int contentColorStart;
    private LinearGradientDelegate contentGradientDelegate;
    DispatchSetPressedListener dispatchSetPressedListener;
    long dropDuration;
    long growDuration;
    boolean lock;
    public Callback<LongPushButton> longPressCallback;
    long lt;
    float p;
    boolean resetPress;
    int shadowColorEnd;
    int shadowColorStart;
    private LinearGradientDelegate shadowGradientDelegate;

    public interface AllowLongPushListener {
        boolean allowLongPush();
    }

    public interface DispatchSetPressedListener {
        void onPress(boolean z);
    }

    public LongPushButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.growDuration = 400L;
        this.dropDuration = 300L;
        this.contentGradientDelegate = new LinearGradientDelegate();
        this.shadowGradientDelegate = new LinearGradientDelegate();
        this.contentColorStart = getResources().getColor(R.color.poll_vote_btn_start_color);
        this.contentColorEnd = getResources().getColor(R.color.poll_vote_btn_end_color);
        this.shadowColorStart = getResources().getColor(R.color.long_push_btn_shadow_start_color);
        this.shadowColorEnd = getResources().getColor(R.color.long_push_btn_shadow_end_color);
    }

    public void lock(boolean z) {
        if (this.lock != z) {
            this.lock = z;
            invalidate();
        }
    }

    public void setAllowLongPushListener(AllowLongPushListener allowLongPushListener) {
        this.allowLongPushListener = allowLongPushListener;
    }

    public void setDispatchSetPressedListener(DispatchSetPressedListener dispatchSetPressedListener) {
        this.dispatchSetPressedListener = dispatchSetPressedListener;
    }

    public void reset() {
        this.lock = false;
        this.resetPress = true;
        this.p = 0.0f;
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0 || action == 1 || action == 3) {
            this.resetPress = false;
        }
        return super.onTouchEvent(motionEvent) | true;
    }

    @Override // com.narvii.widget.PushButton, android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z) {
        AllowLongPushListener allowLongPushListener;
        if (!z || (allowLongPushListener = this.allowLongPushListener) == null || allowLongPushListener.allowLongPush()) {
            super.dispatchSetPressed(z);
            DispatchSetPressedListener dispatchSetPressedListener = this.dispatchSetPressedListener;
            if (dispatchSetPressedListener != null) {
                dispatchSetPressedListener.onPress(z);
            }
            if (z) {
                this.growDuration = 400L;
            } else {
                this.dropDuration = Math.max(150, (int) (this.p * 200.0f));
            }
            boolean z2 = z | this.lock;
            this.lt = AnimationUtils.currentAnimationTimeMillis();
            int i = 0;
            if (!z2) {
                float f = this.p;
                if (f > 0.05f && f < 1.0f) {
                    this.dropDuration = 400L;
                    int childCount = getChildCount();
                    while (i < childCount) {
                        View childAt = getChildAt(i);
                        if (childAt.getId() == R.id.hold_longer) {
                            childAt.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.poll_hold_longer_shake));
                        } else if (childAt.getVisibility() == 0) {
                            childAt.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.poll_fade_out_in));
                        }
                        i++;
                    }
                    return;
                }
            }
            if (z2) {
                int childCount2 = getChildCount();
                while (i < childCount2) {
                    getChildAt(i).clearAnimation();
                    i++;
                }
            }
        }
    }

    @Override // android.view.View
    public boolean isPressed() {
        return this.lock || super.isPressed();
    }

    @Override // com.narvii.widget.PushButton, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean zIsPressed = isPressed();
        if (this.lock) {
            this.p = 1.0f;
        } else if (!this.resetPress && ((zIsPressed && this.p < 1.0f) || (!zIsPressed && this.p > 0.0f))) {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (zIsPressed) {
                float f = this.p;
                this.p = Math.min(f + (((Math.max(Math.min(200L, jCurrentAnimationTimeMillis - this.lt), 15L) * 1.0f) / this.growDuration) * (1.0f - (0.65f * f))), 1.0f);
                if (this.p >= 1.0f) {
                    Callback<LongPushButton> callback = this.longPressCallback;
                    if (callback != null) {
                        callback.call(this);
                    }
                    try {
                        ((Vibrator) getContext().getSystemService("vibrator")).vibrate(50L);
                    } catch (Exception unused) {
                    }
                }
            } else {
                this.p = Math.max(this.p - ((Math.max(Math.min(200L, jCurrentAnimationTimeMillis - this.lt), 15L) * 1.0f) / this.dropDuration), 0.0f);
            }
            this.lt = jCurrentAnimationTimeMillis;
            invalidate();
        }
        if (this.p > 0.0f) {
            int iSave = canvas.save();
            if (Utils.isRtl()) {
                RectF rectF = this.rectf;
                float fWidth = rectF.left + (rectF.width() * (1.0f - this.p));
                RectF rectF2 = this.rectf;
                canvas.clipRect(fWidth, rectF2.top, rectF2.right, rectF2.bottom);
            } else {
                RectF rectF3 = this.rectf;
                float f2 = rectF3.left;
                canvas.clipRect(f2, rectF3.top, (rectF3.width() * this.p) + f2, this.rectf.bottom);
            }
            setShadowPaintStyle(this.paint);
            RectF rectF4 = this.rectf;
            float f3 = this.cornerRadius;
            canvas.drawRoundRect(rectF4, f3, f3, this.paint);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // com.narvii.widget.PushButton
    protected void setContentPaintStyle(Paint paint) {
        paint.setDither(true);
        this.contentGradientDelegate.setShade(0.0f, 0.0f, 0.0f, getHeight() * 1.0f, this.contentColorStart, this.contentColorEnd, Shader.TileMode.CLAMP);
        paint.setShader(this.contentGradientDelegate.getShade());
    }

    @Override // com.narvii.widget.PushButton
    protected void setShadowPaintStyle(Paint paint) {
        paint.setDither(true);
        this.shadowGradientDelegate.setShade(0.0f, 0.0f, 0.0f, getHeight() * 1.0f, this.shadowColorStart, this.shadowColorEnd, Shader.TileMode.CLAMP);
        paint.setShader(this.shadowGradientDelegate.getShade());
    }
}
