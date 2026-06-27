package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.util.ws.WsMessage;

/* loaded from: classes3.dex */
public class VoteButton extends RelativeLayout {
    private float addScale;
    private int anim;
    private int color;
    private int decreaseTime;
    boolean drakTheme;
    private int increaseTime;
    private DecelerateInterpolator itp;
    private DecelerateInterpolator itpScale;
    private float maxScale;
    private Paint paint;
    private long prevTime;
    private float progress;
    final Paint strokePaint;

    public VoteButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.progress = 0.0f;
        this.anim = 0;
        this.addScale = 0.0f;
        int[] iArr = R.styleable.VoteButton;
        int i = R.style.VoteButton;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.color = typedArrayObtainStyledAttributes.getColor(R.styleable.VoteButton_voteColor, -15373368);
        this.maxScale = typedArrayObtainStyledAttributes.getFloat(R.styleable.VoteButton_maxScale, 1.0f);
        this.increaseTime = typedArrayObtainStyledAttributes.getInteger(R.styleable.VoteButton_increaseTime, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
        this.decreaseTime = typedArrayObtainStyledAttributes.getInteger(R.styleable.VoteButton_decreaseTime, 300);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        this.itp = new DecelerateInterpolator();
        this.itpScale = new DecelerateInterpolator(1.6f);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.strokePaint = new Paint();
        this.strokePaint.setStyle(Paint.Style.STROKE);
        this.strokePaint.setStrokeWidth(Utils.dpToPx(getContext(), 3.0f));
        this.strokePaint.setColor(-1);
        this.strokePaint.setAntiAlias(true);
    }

    public void setDrakTheme(boolean z) {
        this.drakTheme = z;
    }

    public void setVoteColor(int i) {
        this.color = i;
        invalidate();
    }

    public static int calculateHoldDuration(int i) {
        int iMax = Math.max(i, 0);
        if (iMax <= 6) {
            return (((iMax - 0) * 1100) / 6) + WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
        }
        if (iMax <= 50) {
            return (((iMax - 6) * 1600) / 44) + 1500;
        }
        if (iMax <= 90) {
            return (((iMax - 50) * 6800) / 40) + 3100;
        }
        return 9900;
    }

    public void setHoldDuration(int i) {
        this.increaseTime = Math.max(i, 100);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z;
        super.onDraw(canvas);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j = jCurrentAnimationTimeMillis - this.prevTime;
        this.prevTime = jCurrentAnimationTimeMillis;
        if (this.progress >= 1.0f) {
            this.progress = 0.0f;
            this.anim = 0;
            performClick();
        }
        if (this.progress < 0.0f) {
            this.progress = 0.0f;
            this.anim = 0;
        }
        int i = this.anim;
        if (i != 0) {
            this.progress += ((this.anim * 1.0f) * j) / (i > 0 ? this.increaseTime : this.decreaseTime);
            z = true;
        } else {
            z = false;
        }
        float f = this.progress;
        if (f <= 0.0f || this.anim <= 0) {
            float f2 = this.addScale;
            if (f2 > 0.0f) {
                this.addScale = f2 - ((((this.maxScale - 1.0f) * j) / this.decreaseTime) * 3.0f);
                float f3 = this.addScale;
                if (f3 < 0.0f) {
                    f3 = 0.0f;
                }
                this.addScale = f3;
            }
        } else if (f < 1.0f) {
            this.addScale = (this.addScale + (this.itpScale.getInterpolation(f) * (this.maxScale - 1.0f))) / 2.0f;
        }
        float f4 = this.addScale;
        if (f4 > 0.0f) {
            canvas.scale(f4 + 1.0f, f4 + 1.0f, getWidth() / 2, getHeight() / 2);
            z = true;
        }
        this.paint.setColor(this.color);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int iMin = Math.min(width, height) / 2;
        float paddingLeft = getPaddingLeft() + (width / 2);
        float paddingTop = getPaddingTop() + (height / 2);
        float f5 = iMin;
        canvas.drawCircle(paddingLeft, paddingTop, f5, this.paint);
        if (this.drakTheme) {
            canvas.drawCircle(paddingLeft, paddingTop, f5, this.strokePaint);
        }
        if (this.progress > 0.0f) {
            canvas.save();
            canvas.clipRect(0, getPaddingTop() + ((int) (height * (1.0f - this.itp.getInterpolation(this.progress)))), getWidth(), getHeight());
            this.paint.setColor(1073741824);
            canvas.drawCircle(paddingLeft, paddingTop, f5, this.paint);
            canvas.restore();
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.anim = 1;
            this.prevTime = AnimationUtils.currentAnimationTimeMillis();
            invalidate();
            return true;
        }
        if (action == 1 || action == 3) {
            if (this.anim > 0) {
                holdLonger();
            }
            this.anim = -1;
            this.prevTime = AnimationUtils.currentAnimationTimeMillis();
            invalidate();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    private void holdLonger() {
        View viewFindViewById = findViewById(R.id.vote_hold_longer);
        if (viewFindViewById == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.vote_hold_longer_hint, (ViewGroup) this, true);
            viewFindViewById = findViewById(R.id.vote_hold_longer);
            viewFindViewById.setVisibility(4);
        }
        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.vote_hold_longer_shake));
    }
}
