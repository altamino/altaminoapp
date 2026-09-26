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

/* JADX INFO: loaded from: classes7.dex */
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

    public static int calculateHoldDuration(int i10) {
        int iMax = Math.max(i10, 0);
        if (iMax <= 6) {
            return ((iMax * 1100) / 6) + WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
        }
        if (iMax <= 50) {
            return (((iMax - 6) * 1600) / 44) + 1500;
        }
        if (iMax <= 90) {
            return (((iMax - 50) * 6800) / 40) + 3100;
        }
        return 9900;
    }

    public void setDrakTheme(boolean z6) {
        this.drakTheme = z6;
    }

    private void holdLonger() {
        int i10 = R.id.vote_hold_longer;
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.vote_hold_longer_hint, (ViewGroup) this, true);
            viewFindViewById = findViewById(i10);
            viewFindViewById.setVisibility(4);
        }
        viewFindViewById.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.vote_hold_longer_shake));
    }

    public void setHoldDuration(int i10) {
        this.increaseTime = Math.max(i10, 100);
    }

    public void setVoteColor(int i10) {
        this.color = i10;
        invalidate();
    }

    public VoteButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.progress = 0.0f;
        this.anim = 0;
        this.addScale = 0.0f;
        int[] iArr = R.styleable.VoteButton;
        int i10 = R.style.VoteButton;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
        this.color = typedArrayObtainStyledAttributes.getColor(R.styleable.VoteButton_voteColor, -15373368);
        this.maxScale = typedArrayObtainStyledAttributes.getFloat(R.styleable.VoteButton_maxScale, 1.0f);
        this.increaseTime = typedArrayObtainStyledAttributes.getInteger(R.styleable.VoteButton_increaseTime, WsMessage.LIVE_LAYER_USER_JOINED_EVENT);
        this.decreaseTime = typedArrayObtainStyledAttributes.getInteger(R.styleable.VoteButton_decreaseTime, 300);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(false);
        this.itp = new DecelerateInterpolator();
        this.itpScale = new DecelerateInterpolator(1.6f);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.strokePaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(Utils.dpToPx(getContext(), 3.0f));
        paint2.setColor(-1);
        paint2.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z6;
        int i10;
        super.onDraw(canvas);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        long j6 = jCurrentAnimationTimeMillis - this.prevTime;
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
        int i11 = this.anim;
        boolean z10 = true;
        if (i11 != 0) {
            if (i11 > 0) {
                i10 = this.increaseTime;
            } else {
                i10 = this.decreaseTime;
            }
            this.progress += ((i11 * 1.0f) * j6) / i10;
            z6 = true;
        } else {
            z6 = false;
        }
        float f = this.progress;
        if (f > 0.0f && i11 > 0) {
            if (f < 1.0f) {
                this.addScale = (this.addScale + (this.itpScale.getInterpolation(f) * (this.maxScale - 1.0f))) / 2.0f;
            }
        } else {
            float f6 = this.addScale;
            if (f6 > 0.0f) {
                float f7 = f6 - ((((this.maxScale - 1.0f) * j6) / this.decreaseTime) * 3.0f);
                this.addScale = f7;
                if (f7 < 0.0f) {
                    f7 = 0.0f;
                }
                this.addScale = f7;
            }
        }
        float f10 = this.addScale;
        if (f10 > 0.0f) {
            canvas.scale(f10 + 1.0f, f10 + 1.0f, getWidth() / 2, getHeight() / 2);
        } else {
            z10 = z6;
        }
        this.paint.setColor(this.color);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int iMin = Math.min(width, height) / 2;
        float paddingLeft = getPaddingLeft() + (width / 2);
        float paddingTop = getPaddingTop() + (height / 2);
        float f11 = iMin;
        canvas.drawCircle(paddingLeft, paddingTop, f11, this.paint);
        if (this.drakTheme) {
            canvas.drawCircle(paddingLeft, paddingTop, f11, this.strokePaint);
        }
        if (this.progress > 0.0f) {
            canvas.save();
            canvas.clipRect(0, getPaddingTop() + ((int) (height * (1.0f - this.itp.getInterpolation(this.progress)))), getWidth(), getHeight());
            this.paint.setColor(1073741824);
            canvas.drawCircle(paddingLeft, paddingTop, f11, this.paint);
            canvas.restore();
        }
        if (z10) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1 && action != 3) {
                return super.onTouchEvent(motionEvent);
            }
            if (this.anim > 0) {
                holdLonger();
            }
            this.anim = -1;
            this.prevTime = AnimationUtils.currentAnimationTimeMillis();
            invalidate();
            return true;
        }
        this.anim = 1;
        this.prevTime = AnimationUtils.currentAnimationTimeMillis();
        invalidate();
        return true;
    }
}
