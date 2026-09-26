package com.narvii.editor.cropping.dynamic.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.util.Utils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class TrimSeekBar extends View {
    private int dividerColor;

    @NotNull
    private final Paint dividerPaint;
    private int dividerWidth;
    private int max;
    private int min;
    private int originProgress;
    private int progress;
    private int progressBarColor;
    private int progressHeight;

    @NotNull
    private final Paint progressPaint;

    @NotNull
    private RectF progressRectF;
    private boolean rtl;

    @Nullable
    private OnSeekBarChangeListener seekBarChangeListener;
    private float startX;
    private int thumbColor;

    @NotNull
    private final Paint thumbPaint;
    private int thumbRadius;
    private int trimEnd;

    @NotNull
    private RectF trimEndRectF;
    private int trimStart;

    @NotNull
    private RectF trimStartRectF;

    @NotNull
    private final Paint trimmedPaint;
    private int trimmedPartColor;

    @NotNull
    private RectF unTrimRectF;

    @NotNull
    private final Paint unTrimmedPaint;
    private int unTrimmedPartColor;

    public interface OnSeekBarChangeListener {
        void onProgressChanged(@NotNull TrimSeekBar trimSeekBar, int i10, boolean z6);

        void onStartTrackingTouch(@NotNull TrimSeekBar trimSeekBar);

        void onStopTrackingTouch(@NotNull TrimSeekBar trimSeekBar);
    }

    public TrimSeekBar(@Nullable Context context) {
        this(context, null);
    }

    public final int getProgress() {
        return this.progress;
    }

    @Nullable
    public final OnSeekBarChangeListener getSeekBarChangeListener() {
        return this.seekBarChangeListener;
    }

    public final void setSeekBarChangeListener(@Nullable OnSeekBarChangeListener onSeekBarChangeListener) {
        this.seekBarChangeListener = onSeekBarChangeListener;
    }

    public TrimSeekBar(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        if (canvas != null) {
            float f = 2;
            float height = (getHeight() - this.progressHeight) / f;
            float height2 = (getHeight() + this.progressHeight) / f;
            float paddingLeft = getPaddingLeft();
            float fDpToPx = Utils.dpToPx(getContext(), 2.0f);
            int i10 = this.trimStart;
            if (i10 > this.min) {
                this.trimStartRectF.set(paddingLeft, height, (((i10 * 1.0f) / this.max) * (getWidth() - (f * paddingLeft))) + paddingLeft + fDpToPx, height2);
                RectF rectF = this.trimStartRectF;
                int i11 = this.progressHeight;
                canvas.drawRoundRect(rectF, i11 / 2.0f, i11 / 2.0f, this.trimmedPaint);
            }
            if (this.trimEnd > this.min) {
                float f6 = f * paddingLeft;
                this.unTrimRectF.set((((this.trimStart * 1.0f) / this.max) * (getWidth() - f6)) + paddingLeft, height, (((this.trimEnd * 1.0f) / this.max) * (getWidth() - f6)) + paddingLeft + fDpToPx, height2);
                RectF rectF2 = this.unTrimRectF;
                int i12 = this.progressHeight;
                canvas.drawRoundRect(rectF2, i12 / 2.0f, i12 / 2.0f, this.unTrimmedPaint);
            }
            int i13 = this.trimEnd;
            int i14 = this.max;
            if (i13 < i14) {
                this.trimEndRectF.set((((i13 * 1.0f) / i14) * (getWidth() - (f * paddingLeft))) + paddingLeft, height, getWidth() - paddingLeft, height2);
                RectF rectF3 = this.trimEndRectF;
                int i15 = this.progressHeight;
                canvas.drawRoundRect(rectF3, i15 / 2.0f, i15 / 2.0f, this.trimmedPaint);
            }
            int i16 = this.min;
            int i17 = this.max;
            int i18 = this.progress;
            if (i16 <= i18 && i18 <= i17) {
                if (this.rtl) {
                    RectF rectF4 = this.progressRectF;
                    float width = getWidth() - paddingLeft;
                    int i19 = this.max;
                    rectF4.set(width, height, ((((i19 - this.progress) * 1.0f) / i19) * (getWidth() - (f * paddingLeft))) + paddingLeft, height2);
                } else {
                    this.progressRectF.set(paddingLeft, height, (((i18 * 1.0f) / i17) * (getWidth() - (f * paddingLeft))) + paddingLeft, height2);
                }
                RectF rectF5 = this.progressRectF;
                int i20 = this.progressHeight;
                canvas.drawRoundRect(rectF5, i20 / 2.0f, i20 / 2.0f, this.progressPaint);
            }
            int i21 = this.min + 1;
            int i22 = this.max;
            int i23 = this.trimStart;
            if (i21 <= i23 && i23 < i22) {
                float width2 = (((i23 * 1.0f) / i22) * (getWidth() - (f * paddingLeft))) + paddingLeft;
                canvas.drawRect(width2, height, width2 + this.dividerWidth, height2, this.dividerPaint);
            }
            int i24 = this.min + 1;
            int i25 = this.max;
            int i26 = this.trimEnd;
            if (i24 <= i26 && i26 < i25) {
                float width3 = (((i26 * 1.0f) / i25) * (getWidth() - (f * paddingLeft))) + paddingLeft;
                canvas.drawRect(width3, height, width3 + this.dividerWidth, height2, this.dividerPaint);
            }
            if (!this.rtl) {
                canvas.drawCircle((((this.progress * 1.0f) / this.max) * (getWidth() - (f * paddingLeft))) + paddingLeft, getHeight() / 2.0f, this.thumbRadius, this.thumbPaint);
            } else {
                int i27 = this.max;
                canvas.drawCircle(((((i27 - this.progress) * 1.0f) / i27) * (getWidth() - (f * paddingLeft))) + paddingLeft, getHeight() / 2.0f, this.thumbRadius, this.thumbPaint);
            }
        }
    }

    public final void setProgress(int i10) {
        if (i10 != this.progress) {
            this.progress = i10;
            invalidate();
        }
    }

    public final void setTrim(int i10, int i11) {
        if (i10 == this.trimStart && i11 == this.trimEnd) {
            return;
        }
        this.trimStart = i10;
        this.trimEnd = i11;
        invalidate();
    }

    public TrimSeekBar(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Paint paint = new Paint();
        this.progressPaint = paint;
        this.max = 100;
        this.progressRectF = new RectF();
        Paint paint2 = new Paint();
        this.trimmedPaint = paint2;
        this.trimStartRectF = new RectF();
        this.trimEndRectF = new RectF();
        Paint paint3 = new Paint();
        this.unTrimmedPaint = paint3;
        this.unTrimRectF = new RectF();
        Paint paint4 = new Paint();
        this.thumbPaint = paint4;
        Paint paint5 = new Paint();
        this.dividerPaint = paint5;
        this.rtl = Utils.isRtl();
        if (attributeSet == null || context == null) {
            return;
        }
        this.progressBarColor = Color.parseColor("#F5A623");
        this.progressHeight = Utils.dpToPxInt(context, 6.0f);
        this.trimmedPartColor = Color.parseColor("#22FFFFFF");
        this.unTrimmedPartColor = Color.parseColor("#55FFFFFF");
        this.thumbRadius = Utils.dpToPxInt(context, 8.0f);
        this.thumbColor = -1;
        this.dividerWidth = Utils.dpToPxInt(context, 2.0f);
        this.dividerColor = -1;
        paint.setColor(this.progressBarColor);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setColor(this.trimmedPartColor);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
        paint3.setColor(this.unTrimmedPartColor);
        paint3.setAntiAlias(true);
        paint3.setStyle(style);
        paint4.setColor(this.thumbColor);
        paint4.setAntiAlias(true);
        paint4.setStyle(style);
        paint5.setColor(this.dividerColor);
        paint5.setAntiAlias(true);
        paint5.setStyle(style);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        Integer numValueOf;
        int i10;
        float paddingLeft = getPaddingLeft();
        if (motionEvent != null) {
            numValueOf = Integer.valueOf(motionEvent.getAction());
        } else {
            numValueOf = null;
        }
        if (numValueOf != null && numValueOf.intValue() == 0) {
            if (this.rtl) {
                i10 = this.max - this.progress;
            } else {
                i10 = this.progress;
            }
            float f = i10 * 1.0f;
            float f6 = 2 * paddingLeft;
            float width = (((f / this.max) * (getWidth() - f6)) + paddingLeft) - (this.thumbRadius * 2);
            float width2 = ((f / this.max) * (getWidth() - f6)) + paddingLeft + (this.thumbRadius * 2);
            float x6 = motionEvent.getX();
            if (width <= x6 && x6 <= width2) {
                this.startX = motionEvent.getX();
                this.originProgress = this.progress;
                OnSeekBarChangeListener onSeekBarChangeListener = this.seekBarChangeListener;
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onStartTrackingTouch(this);
                }
                return true;
            }
            float width3 = getWidth() - paddingLeft;
            float x10 = motionEvent.getX();
            if (paddingLeft <= x10 && x10 <= width3) {
                int x11 = ((int) (((motionEvent.getX() - this.startX) / (getWidth() - f6)) * this.max)) + this.originProgress;
                if (this.rtl) {
                    x11 = this.originProgress + ((int) (((this.startX - motionEvent.getX()) / (getWidth() - f6)) * this.max));
                }
                setProgress(x11);
                OnSeekBarChangeListener onSeekBarChangeListener2 = this.seekBarChangeListener;
                if (onSeekBarChangeListener2 != null) {
                    onSeekBarChangeListener2.onProgressChanged(this, x11, true);
                }
            }
            return false;
        }
        if (numValueOf != null && numValueOf.intValue() == 2) {
            float f7 = 2 * paddingLeft;
            setProgress(((int) (((motionEvent.getX() - this.startX) / (getWidth() - f7)) * this.max)) + this.originProgress);
            if (this.rtl) {
                setProgress(((int) (((this.startX - motionEvent.getX()) / (getWidth() - f7)) * this.max)) + this.originProgress);
            }
            int i11 = this.progress;
            int i12 = this.min;
            if (i11 < i12) {
                setProgress(i12);
            } else {
                int i13 = this.max;
                if (i11 > i13) {
                    setProgress(i13);
                }
            }
            invalidate();
            OnSeekBarChangeListener onSeekBarChangeListener3 = this.seekBarChangeListener;
            if (onSeekBarChangeListener3 != null) {
                onSeekBarChangeListener3.onProgressChanged(this, this.progress, true);
            }
            return true;
        }
        if (numValueOf == null || numValueOf.intValue() != 1) {
            return false;
        }
        OnSeekBarChangeListener onSeekBarChangeListener4 = this.seekBarChangeListener;
        if (onSeekBarChangeListener4 != null) {
            onSeekBarChangeListener4.onStopTrackingTouch(this);
        }
        return true;
    }
}
