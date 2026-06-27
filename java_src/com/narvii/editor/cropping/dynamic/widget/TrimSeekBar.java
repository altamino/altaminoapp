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
import java.util.HashMap;

/* compiled from: TrimSeekBar.kt */
/* loaded from: classes2.dex */
public final class TrimSeekBar extends View {
    private HashMap _$_findViewCache;
    private int dividerColor;
    private final Paint dividerPaint;
    private int dividerWidth;
    private int max;
    private int min;
    private int originProgress;
    private int progress;
    private int progressBarColor;
    private int progressHeight;
    private final Paint progressPaint;
    private RectF progressRectF;
    private boolean rtl;
    private OnSeekBarChangeListener seekBarChangeListener;
    private float startX;
    private int thumbColor;
    private final Paint thumbPaint;
    private int thumbRadius;
    private int trimEnd;
    private RectF trimEndRectF;
    private int trimStart;
    private RectF trimStartRectF;
    private final Paint trimmedPaint;
    private int trimmedPartColor;
    private RectF unTrimRectF;
    private final Paint unTrimmedPaint;
    private int unTrimmedPartColor;

    /* compiled from: TrimSeekBar.kt */
    public interface OnSeekBarChangeListener {
        void onProgressChanged(TrimSeekBar trimSeekBar, int i, boolean z);

        void onStartTrackingTouch(TrimSeekBar trimSeekBar);

        void onStopTrackingTouch(TrimSeekBar trimSeekBar);
    }

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

    public TrimSeekBar(Context context) {
        this(context, null);
    }

    public TrimSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public TrimSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.progressPaint = new Paint();
        this.max = 100;
        this.progressRectF = new RectF();
        this.trimmedPaint = new Paint();
        this.trimStartRectF = new RectF();
        this.trimEndRectF = new RectF();
        this.unTrimmedPaint = new Paint();
        this.unTrimRectF = new RectF();
        this.thumbPaint = new Paint();
        this.dividerPaint = new Paint();
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
        this.progressPaint.setColor(this.progressBarColor);
        this.progressPaint.setAntiAlias(true);
        this.progressPaint.setStyle(Paint.Style.FILL);
        this.trimmedPaint.setColor(this.trimmedPartColor);
        this.trimmedPaint.setAntiAlias(true);
        this.trimmedPaint.setStyle(Paint.Style.FILL);
        this.unTrimmedPaint.setColor(this.unTrimmedPartColor);
        this.unTrimmedPaint.setAntiAlias(true);
        this.unTrimmedPaint.setStyle(Paint.Style.FILL);
        this.thumbPaint.setColor(this.thumbColor);
        this.thumbPaint.setAntiAlias(true);
        this.thumbPaint.setStyle(Paint.Style.FILL);
        this.dividerPaint.setColor(this.dividerColor);
        this.dividerPaint.setAntiAlias(true);
        this.dividerPaint.setStyle(Paint.Style.FILL);
    }

    public final int getProgress() {
        return this.progress;
    }

    public final void setProgress(int i) {
        if (i != this.progress) {
            this.progress = i;
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas != null) {
            float f = 2;
            float height = (getHeight() - this.progressHeight) / f;
            float height2 = (getHeight() + this.progressHeight) / f;
            float paddingLeft = getPaddingLeft();
            float fDpToPx = Utils.dpToPx(getContext(), 2.0f);
            int i = this.trimStart;
            if (i > this.min) {
                this.trimStartRectF.set(paddingLeft, height, (((i * 1.0f) / this.max) * (getWidth() - (f * paddingLeft))) + paddingLeft + fDpToPx, height2);
                RectF rectF = this.trimStartRectF;
                int i2 = this.progressHeight;
                canvas.drawRoundRect(rectF, i2 / 2.0f, i2 / 2.0f, this.trimmedPaint);
            }
            if (this.trimEnd > this.min) {
                float f2 = f * paddingLeft;
                this.unTrimRectF.set((((this.trimStart * 1.0f) / this.max) * (getWidth() - f2)) + paddingLeft, height, (((this.trimEnd * 1.0f) / this.max) * (getWidth() - f2)) + paddingLeft + fDpToPx, height2);
                RectF rectF2 = this.unTrimRectF;
                int i3 = this.progressHeight;
                canvas.drawRoundRect(rectF2, i3 / 2.0f, i3 / 2.0f, this.unTrimmedPaint);
            }
            int i4 = this.trimEnd;
            int i5 = this.max;
            if (i4 < i5) {
                this.trimEndRectF.set((((i4 * 1.0f) / i5) * (getWidth() - (f * paddingLeft))) + paddingLeft, height, getWidth() - paddingLeft, height2);
                RectF rectF3 = this.trimEndRectF;
                int i6 = this.progressHeight;
                canvas.drawRoundRect(rectF3, i6 / 2.0f, i6 / 2.0f, this.trimmedPaint);
            }
            int i7 = this.min;
            int i8 = this.max;
            int i9 = this.progress;
            if (i7 <= i9 && i8 >= i9) {
                if (this.rtl) {
                    this.progressRectF.set(getWidth() - paddingLeft, height, ((((r4 - this.progress) * 1.0f) / this.max) * (getWidth() - (f * paddingLeft))) + paddingLeft, height2);
                } else {
                    this.progressRectF.set(paddingLeft, height, (((i9 * 1.0f) / i8) * (getWidth() - (f * paddingLeft))) + paddingLeft, height2);
                }
                RectF rectF4 = this.progressRectF;
                int i10 = this.progressHeight;
                canvas.drawRoundRect(rectF4, i10 / 2.0f, i10 / 2.0f, this.progressPaint);
            }
            int i11 = this.min + 1;
            int i12 = this.max;
            int i13 = this.trimStart;
            if (i11 <= i13 && i12 > i13) {
                float width = (((i13 * 1.0f) / i12) * (getWidth() - (f * paddingLeft))) + paddingLeft;
                canvas.drawRect(width, height, width + this.dividerWidth, height2, this.dividerPaint);
            }
            int i14 = this.min + 1;
            int i15 = this.max;
            int i16 = this.trimEnd;
            if (i14 <= i16 && i15 > i16) {
                float width2 = (((i16 * 1.0f) / i15) * (getWidth() - (f * paddingLeft))) + paddingLeft;
                canvas.drawRect(width2, height, width2 + this.dividerWidth, height2, this.dividerPaint);
            }
            if (this.rtl) {
                canvas.drawCircle(((((r0 - this.progress) * 1.0f) / this.max) * (getWidth() - (f * paddingLeft))) + paddingLeft, getHeight() / 2.0f, this.thumbRadius, this.thumbPaint);
            } else {
                canvas.drawCircle((((this.progress * 1.0f) / this.max) * (getWidth() - (f * paddingLeft))) + paddingLeft, getHeight() / 2.0f, this.thumbRadius, this.thumbPaint);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float paddingLeft = getPaddingLeft();
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            float f = (this.rtl ? this.max - this.progress : this.progress) * 1.0f;
            float f2 = 2 * paddingLeft;
            float width = (((f / this.max) * (getWidth() - f2)) + paddingLeft) - (this.thumbRadius * 2);
            float width2 = ((f / this.max) * (getWidth() - f2)) + paddingLeft + (this.thumbRadius * 2);
            float x = motionEvent.getX();
            if (x >= width && x <= width2) {
                this.startX = motionEvent.getX();
                this.originProgress = this.progress;
                OnSeekBarChangeListener onSeekBarChangeListener = this.seekBarChangeListener;
                if (onSeekBarChangeListener != null) {
                    onSeekBarChangeListener.onStartTrackingTouch(this);
                }
                return true;
            }
            float width3 = getWidth() - paddingLeft;
            float x2 = motionEvent.getX();
            if (x2 >= paddingLeft && x2 <= width3) {
                int x3 = ((int) (((motionEvent.getX() - this.startX) / (getWidth() - f2)) * this.max)) + this.originProgress;
                if (this.rtl) {
                    x3 = this.originProgress + ((int) (((this.startX - motionEvent.getX()) / (getWidth() - f2)) * this.max));
                }
                setProgress(x3);
                OnSeekBarChangeListener onSeekBarChangeListener2 = this.seekBarChangeListener;
                if (onSeekBarChangeListener2 != null) {
                    onSeekBarChangeListener2.onProgressChanged(this, x3, true);
                }
            }
            return false;
        }
        if (numValueOf != null && numValueOf.intValue() == 2) {
            float f3 = 2 * paddingLeft;
            setProgress(((int) (((motionEvent.getX() - this.startX) / (getWidth() - f3)) * this.max)) + this.originProgress);
            if (this.rtl) {
                setProgress(((int) (((this.startX - motionEvent.getX()) / (getWidth() - f3)) * this.max)) + this.originProgress);
            }
            int i = this.progress;
            int i2 = this.min;
            if (i < i2) {
                setProgress(i2);
            } else {
                int i3 = this.max;
                if (i > i3) {
                    setProgress(i3);
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

    public final void setTrim(int i, int i2) {
        if (i == this.trimStart && i2 == this.trimEnd) {
            return;
        }
        this.trimStart = i;
        this.trimEnd = i2;
        invalidate();
    }

    public final OnSeekBarChangeListener getSeekBarChangeListener() {
        return this.seekBarChangeListener;
    }

    public final void setSeekBarChangeListener(OnSeekBarChangeListener onSeekBarChangeListener) {
        this.seekBarChangeListener = onSeekBarChangeListener;
    }
}
