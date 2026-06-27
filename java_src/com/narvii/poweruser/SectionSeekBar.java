package com.narvii.poweruser;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.narvii.amino.R;
import com.narvii.util.Utils;
import java.math.BigDecimal;

/* loaded from: classes3.dex */
public class SectionSeekBar extends View {
    private Bitmap bmpIndicator;
    float dx;
    private int indicatorSize;
    private boolean isAutoAdjustSectionMark;
    private boolean isFloatType;
    private boolean isRtl;
    private boolean isSeekBySection;
    private boolean isSeekStepSection;
    private boolean isThumbOnDragging;
    private boolean isTouchToSeek;
    private long mAnimDuration;
    private float mDelta;
    private float mLeft;
    private float mMax;
    private float mMin;
    private Paint mPaint;
    private float mPreSecValue;
    private float mPreThumbCenterX;
    private float mProgress;
    private OnProgressChangedListener mProgressListener;
    private float mRealTrackLength;
    private Rect mRectText;
    private float mRight;
    private int mSectionCount;
    private float mSectionOffset;
    private Paint mSectionPaint;
    private SparseArray<String> mSectionTextArray;
    private int mSectionTextColor;
    private int mSectionTextInterval;
    private int mSectionTextSize;
    private float mSectionValue;
    private int mTextSpace;
    private float mThumbCenterX;
    private int mTrackColor;
    private float mTrackLength;
    private int mTrackSize;
    private int sectionLineHeight;
    private int sectionLineWidth;
    private int sectionTextSize;
    private int trackBarContentPadding;
    private int trackBarHeight;
    private boolean triggerSeekBySection;

    public interface CustomSectionTextArray {
        SparseArray<String> onCustomize(int i, SparseArray<String> sparseArray);
    }

    public interface OnProgressChangedListener {
        void getProgressOnActionUp(SectionSeekBar sectionSeekBar, int i, float f);

        void getProgressOnFinally(SectionSeekBar sectionSeekBar, int i, float f);

        void onProgressChanged(SectionSeekBar sectionSeekBar, int i, float f);
    }

    public static abstract class OnProgressChangedListenerAdapter implements OnProgressChangedListener {
        @Override // com.narvii.poweruser.SectionSeekBar.OnProgressChangedListener
        public void getProgressOnActionUp(SectionSeekBar sectionSeekBar, int i, float f) {
        }

        @Override // com.narvii.poweruser.SectionSeekBar.OnProgressChangedListener
        public void getProgressOnFinally(SectionSeekBar sectionSeekBar, int i, float f) {
        }

        @Override // com.narvii.poweruser.SectionSeekBar.OnProgressChangedListener
        public void onProgressChanged(SectionSeekBar sectionSeekBar, int i, float f) {
        }
    }

    public SectionSeekBar(Context context) {
        this(context, null);
    }

    public SectionSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SectionSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSectionTextArray = new SparseArray<>();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SectionSeekBar, i, 0);
        this.mMin = typedArrayObtainStyledAttributes.getFloat(4, 0.0f);
        this.mMax = typedArrayObtainStyledAttributes.getFloat(3, 100.0f);
        this.mProgress = typedArrayObtainStyledAttributes.getFloat(5, this.mMin);
        this.isFloatType = typedArrayObtainStyledAttributes.getBoolean(2, false);
        this.mTrackSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(18, (int) Utils.dpToPx(getContext(), 4.0f));
        this.mSectionCount = typedArrayObtainStyledAttributes.getInteger(6, 10);
        this.mTrackColor = typedArrayObtainStyledAttributes.getColor(17, -1644826);
        this.mSectionTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, (int) Utils.dpToPx(getContext(), 12.0f));
        this.mSectionTextColor = typedArrayObtainStyledAttributes.getColor(10, this.mTrackColor);
        this.isSeekStepSection = typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.isSeekBySection = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.sectionLineWidth = typedArrayObtainStyledAttributes.getInt(9, (int) Utils.dpToPx(getContext(), 1.0f));
        this.sectionLineHeight = typedArrayObtainStyledAttributes.getInt(8, (int) Utils.dpToPx(getContext(), 5.0f));
        this.mSectionTextInterval = typedArrayObtainStyledAttributes.getInteger(11, 1);
        this.isAutoAdjustSectionMark = typedArrayObtainStyledAttributes.getBoolean(1, false);
        int integer = typedArrayObtainStyledAttributes.getInteger(0, -1);
        this.mAnimDuration = integer < 0 ? 200L : integer;
        this.isTouchToSeek = typedArrayObtainStyledAttributes.getBoolean(16, false);
        this.indicatorSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, (int) Utils.dpToPx(getContext(), 6.0f));
        this.sectionTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, (int) Utils.dpToPx(getContext(), 12.0f));
        typedArrayObtainStyledAttributes.recycle();
        this.isRtl = Utils.isRtl();
        this.trackBarContentPadding = (int) Utils.dpToPx(getContext(), 4.0f);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mSectionPaint = new Paint();
        this.mSectionPaint.setAntiAlias(true);
        this.mSectionPaint.setStrokeCap(Paint.Cap.SQUARE);
        this.mSectionPaint.setTextAlign(Paint.Align.CENTER);
        this.mRectText = new Rect();
        this.mTextSpace = (int) Utils.dpToPx(getContext(), 2.0f);
        initConfigByPriority();
        this.bmpIndicator = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), com.narvii.amino.mastes.R.drawable.ic_seekbar_indicator)).getBitmap();
    }

    private void initConfigByPriority() {
        if (this.mMin == this.mMax) {
            this.mMin = 0.0f;
            this.mMax = 100.0f;
        }
        float f = this.mMin;
        float f2 = this.mMax;
        if (f > f2) {
            this.mMax = f;
            this.mMin = f2;
        }
        float f3 = this.mProgress;
        float f4 = this.mMin;
        if (f3 < f4) {
            this.mProgress = f4;
        }
        float f5 = this.mProgress;
        float f6 = this.mMax;
        if (f5 > f6) {
            this.mProgress = f6;
        }
        if (this.mSectionCount <= 0) {
            this.mSectionCount = 10;
        }
        this.trackBarHeight = this.mTrackSize;
        this.mDelta = this.mMax - this.mMin;
        this.mSectionValue = this.mDelta / this.mSectionCount;
        if (this.mSectionValue < 1.0f) {
            this.isFloatType = true;
        }
        if (this.mSectionTextInterval < 1) {
            this.mSectionTextInterval = 1;
        }
        initSectionTextArray();
        if (this.isSeekStepSection) {
            this.isSeekBySection = false;
            this.isAutoAdjustSectionMark = false;
        }
        if (this.isAutoAdjustSectionMark) {
            this.isAutoAdjustSectionMark = false;
        }
        if (this.isSeekBySection) {
            float f7 = this.mMin;
            this.mPreSecValue = f7;
            if (this.mProgress != f7) {
                this.mPreSecValue = this.mSectionValue;
            }
            this.isAutoAdjustSectionMark = true;
        }
    }

    private void initSectionTextArray() {
        for (int i = 0; i <= this.mSectionCount; i++) {
            float f = this.isRtl ? this.mMax - (this.mSectionValue * i) : this.mMin + (this.mSectionValue * i);
            this.mSectionTextArray.put(i, this.isFloatType ? float2String(f) : ((int) f) + "");
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mSectionPaint.setTextSize(this.sectionTextSize);
        int iDescent = (int) (this.mSectionPaint.descent() - this.mSectionPaint.ascent());
        int i3 = this.sectionLineHeight;
        int i4 = this.mTextSpace;
        setMeasuredDimension(View.resolveSize((int) Utils.dpToPx(getContext(), 180.0f), i), iDescent + Math.max(i3 + i4, i4 + this.indicatorSize) + this.mTextSpace + this.trackBarHeight);
        float f = this.indicatorSize / 2.0f;
        this.mLeft = getPaddingLeft() + f;
        this.mRight = (getMeasuredWidth() - getPaddingRight()) - f;
        String str = this.mSectionTextArray.get(this.isRtl ? this.mSectionCount : 0);
        this.mPaint.getTextBounds(str, 0, str.length(), this.mRectText);
        this.mLeft = getPaddingLeft() + Math.max(f, this.mRectText.width() / 2.0f) + this.mTextSpace;
        String str2 = this.mSectionTextArray.get(this.isRtl ? 0 : this.mSectionCount);
        this.mPaint.getTextBounds(str2, 0, str2.length(), this.mRectText);
        this.mRight = ((getMeasuredWidth() - getPaddingRight()) - Math.max(f, this.mRectText.width() / 2.0f)) - this.mTextSpace;
        this.mTrackLength = this.mRight - this.mLeft;
        this.mRealTrackLength = this.mTrackLength - (this.trackBarContentPadding * 2);
        this.mSectionOffset = (this.mRealTrackLength * 1.0f) / this.mSectionCount;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float paddingLeft = getPaddingLeft();
        float measuredWidth = getMeasuredWidth() - getPaddingRight();
        float paddingTop = getPaddingTop();
        float f = this.indicatorSize / 2.0f;
        float f2 = paddingLeft + f;
        int i = this.trackBarContentPadding;
        float f3 = f2 + i;
        float f4 = measuredWidth - f;
        float f5 = f4 - i;
        this.mSectionPaint.setTextSize(this.mSectionTextSize);
        int iDescent = (int) (this.mSectionPaint.descent() - this.mSectionPaint.ascent());
        int i2 = this.mTextSpace;
        int i3 = (int) (paddingTop + i2);
        int iMax = i3 + iDescent + ((int) Math.max(this.sectionLineHeight + i2, i2 + f));
        float f6 = iMax;
        float f7 = i3;
        int i4 = 0;
        while (i4 <= this.mSectionCount) {
            float f8 = i4;
            float f9 = f3 + (this.mSectionOffset * f8);
            this.mSectionPaint.setColor(this.mTrackColor);
            this.mSectionPaint.setTypeface(f8 == this.mProgress ? Typeface.DEFAULT_BOLD : null);
            this.mSectionPaint.setStrokeWidth(this.sectionLineWidth);
            int i5 = iMax;
            int i6 = i4;
            float f10 = f7;
            canvas.drawLine(f9, iMax - this.sectionLineHeight, f9, f6, this.mSectionPaint);
            this.mSectionPaint.setColor(this.mSectionTextColor);
            this.mSectionPaint.setTextSize(this.mSectionTextSize);
            if (this.mSectionTextArray.get(i6, null) != null) {
                canvas.drawText(this.mSectionTextArray.get(this.isRtl ? this.mSectionCount - i6 : i6), f9, f10 + iDescent, this.mSectionPaint);
            }
            i4 = i6 + 1;
            iMax = i5;
            f7 = f10;
        }
        this.mPaint.setColor(this.mTrackColor);
        this.mPaint.setStrokeWidth(this.trackBarHeight);
        if (this.isRtl) {
            canvas.drawLine(f4, f6, f2, f6, this.mPaint);
        } else {
            canvas.drawLine(f2, f6, f4, f6, this.mPaint);
        }
        if (this.isRtl) {
            this.mThumbCenterX = f5 - ((this.mTrackLength / this.mDelta) * (this.mProgress - this.mMin));
        } else {
            this.mThumbCenterX = f3 + ((this.mRealTrackLength / this.mDelta) * (this.mProgress - this.mMin));
        }
        Rect rect = new Rect();
        float f11 = this.mThumbCenterX;
        rect.left = (int) (f11 - f);
        rect.right = (int) (f11 + f);
        rect.top = (int) (f6 - f);
        rect.bottom = (int) (f6 + f);
        if (this.bmpIndicator == null) {
            this.bmpIndicator = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), com.narvii.amino.mastes.R.drawable.ic_seekbar_indicator)).getBitmap();
        }
        canvas.drawBitmap(this.bmpIndicator, (Rect) null, rect, (Paint) null);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Runnable() { // from class: com.narvii.poweruser.SectionSeekBar.1
            @Override // java.lang.Runnable
            public void run() {
                SectionSeekBar.this.requestLayout();
            }
        });
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.poweruser.SectionSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private boolean isThumbTouched(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float f = (this.mTrackLength / this.mDelta) * (this.mProgress - this.mMin);
        float f2 = this.isRtl ? this.mRight - f : this.mLeft + f;
        float measuredHeight = getMeasuredHeight() / 2.0f;
        return ((motionEvent.getX() - f2) * (motionEvent.getX() - f2)) + ((motionEvent.getY() - measuredHeight) * (motionEvent.getY() - measuredHeight)) <= (this.mLeft + Utils.dpToPx(getContext(), 8.0f)) * (this.mLeft + Utils.dpToPx(getContext(), 8.0f));
    }

    private boolean isTrackTouched(MotionEvent motionEvent) {
        return isEnabled() && motionEvent.getX() >= ((float) getPaddingLeft()) && motionEvent.getX() <= ((float) (getMeasuredWidth() - getPaddingRight())) && motionEvent.getY() >= ((float) getPaddingTop()) && motionEvent.getY() <= ((float) (getMeasuredHeight() - getPaddingBottom()));
    }

    private float calThumbCxWhenSeekStepSection(float f) {
        float f2 = this.mLeft;
        int i = this.trackBarContentPadding;
        float f3 = f2 + i;
        float f4 = this.mRight - i;
        if (f <= f3) {
            return f3;
        }
        if (f > f4) {
            return f4;
        }
        float f5 = 0.0f;
        int i2 = 0;
        while (i2 <= this.mSectionCount) {
            float f6 = this.mSectionOffset;
            f5 = (i2 * f6) + f3;
            if (f5 <= f && f - f5 <= f6) {
                break;
            }
            i2++;
        }
        float f7 = f - f5;
        float f8 = this.mSectionOffset;
        return f7 <= f8 / 2.0f ? f5 : ((i2 + 1) * f8) + f3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoAdjustSection() {
        int i = 0;
        float f = 0.0f;
        while (i <= this.mSectionCount) {
            float f2 = this.mSectionOffset;
            f = (i * f2) + this.mLeft;
            float f3 = this.mThumbCenterX;
            if (f <= f3 && f3 - f <= f2) {
                break;
            } else {
                i++;
            }
        }
        boolean z = BigDecimal.valueOf((double) this.mThumbCenterX).setScale(1, 4).floatValue() == f;
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat = null;
        if (!z) {
            float f4 = this.mThumbCenterX;
            float f5 = f4 - f;
            float f6 = this.mSectionOffset;
            valueAnimatorOfFloat = f5 <= f6 / 2.0f ? ValueAnimator.ofFloat(f4, f) : ValueAnimator.ofFloat(f4, ((i + 1) * f6) + this.mLeft);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.poweruser.SectionSeekBar.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SectionSeekBar.this.mThumbCenterX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SectionSeekBar sectionSeekBar = SectionSeekBar.this;
                    sectionSeekBar.mProgress = sectionSeekBar.calculateProgress();
                    SectionSeekBar.this.invalidate();
                    if (SectionSeekBar.this.mProgressListener != null) {
                        OnProgressChangedListener onProgressChangedListener = SectionSeekBar.this.mProgressListener;
                        SectionSeekBar sectionSeekBar2 = SectionSeekBar.this;
                        onProgressChangedListener.onProgressChanged(sectionSeekBar2, sectionSeekBar2.getProgress(), SectionSeekBar.this.getProgressFloat());
                    }
                }
            });
        }
        if (!z) {
            animatorSet.setDuration(this.mAnimDuration).playTogether(valueAnimatorOfFloat);
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.poweruser.SectionSeekBar.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SectionSeekBar sectionSeekBar = SectionSeekBar.this;
                sectionSeekBar.mProgress = sectionSeekBar.calculateProgress();
                SectionSeekBar.this.isThumbOnDragging = false;
                SectionSeekBar.this.invalidate();
                if (SectionSeekBar.this.mProgressListener != null) {
                    OnProgressChangedListener onProgressChangedListener = SectionSeekBar.this.mProgressListener;
                    SectionSeekBar sectionSeekBar2 = SectionSeekBar.this;
                    onProgressChangedListener.getProgressOnFinally(sectionSeekBar2, sectionSeekBar2.getProgress(), SectionSeekBar.this.getProgressFloat());
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                SectionSeekBar sectionSeekBar = SectionSeekBar.this;
                sectionSeekBar.mProgress = sectionSeekBar.calculateProgress();
                SectionSeekBar.this.isThumbOnDragging = false;
                SectionSeekBar.this.invalidate();
            }
        });
        animatorSet.start();
    }

    private String float2String(float f) {
        return String.valueOf(formatFloat(f));
    }

    private float formatFloat(float f) {
        return BigDecimal.valueOf(f).setScale(1, 4).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float calculateProgress() {
        float f;
        float f2;
        if (this.isRtl) {
            f = (((this.mRight - this.mThumbCenterX) - this.trackBarContentPadding) * this.mDelta) / this.mRealTrackLength;
            f2 = this.mMin;
        } else {
            f = (((this.mThumbCenterX - this.mLeft) - this.trackBarContentPadding) * this.mDelta) / this.mRealTrackLength;
            f2 = this.mMin;
        }
        return f + f2;
    }

    public void setProgress(float f) {
        this.mProgress = f;
        OnProgressChangedListener onProgressChangedListener = this.mProgressListener;
        if (onProgressChangedListener != null) {
            onProgressChangedListener.onProgressChanged(this, getProgress(), getProgressFloat());
            this.mProgressListener.getProgressOnFinally(this, getProgress(), getProgressFloat());
        }
        if (this.isSeekBySection) {
            this.triggerSeekBySection = false;
        }
        postInvalidate();
    }

    public int getProgress() {
        return Math.round(processProgress());
    }

    public float getProgressFloat() {
        return formatFloat(processProgress());
    }

    private float processProgress() {
        float f = this.mProgress;
        if (!this.isSeekBySection || !this.triggerSeekBySection) {
            return f;
        }
        float f2 = this.mSectionValue / 2.0f;
        if (this.isTouchToSeek) {
            if (f == this.mMin || f == this.mMax) {
                return f;
            }
            for (int i = 0; i <= this.mSectionCount; i++) {
                float f3 = this.mSectionValue;
                float f4 = i * f3;
                if (f4 < f && f4 + f3 >= f) {
                    return f2 + f4 > f ? f4 : f4 + f3;
                }
            }
        }
        float f5 = this.mPreSecValue;
        if (f >= f5) {
            if (f < f2 + f5) {
                return f5;
            }
            this.mPreSecValue = f5 + this.mSectionValue;
            return this.mPreSecValue;
        }
        if (f >= f5 - f2) {
            return f5;
        }
        this.mPreSecValue = f5 - this.mSectionValue;
        return this.mPreSecValue;
    }

    public OnProgressChangedListener getOnProgressChangedListener() {
        return this.mProgressListener;
    }

    public void setOnProgressChangedListener(OnProgressChangedListener onProgressChangedListener) {
        this.mProgressListener = onProgressChangedListener;
    }

    public void setCustomSectionTextArray(CustomSectionTextArray customSectionTextArray) {
        this.mSectionTextArray = customSectionTextArray.onCustomize(this.mSectionCount, this.mSectionTextArray);
        for (int i = 0; i <= this.mSectionCount; i++) {
            if (this.mSectionTextArray.get(i) == null) {
                this.mSectionTextArray.put(i, "");
            }
        }
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat(NotificationCompat.CATEGORY_PROGRESS, this.mProgress);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.mProgress = bundle.getFloat(NotificationCompat.CATEGORY_PROGRESS);
            super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
            setProgress(this.mProgress);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
