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
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes5.dex */
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
        @NonNull
        SparseArray<String> onCustomize(int i10, @NonNull SparseArray<String> sparseArray);
    }

    public interface OnProgressChangedListener {
        void getProgressOnActionUp(SectionSeekBar sectionSeekBar, int i10, float f);

        void getProgressOnFinally(SectionSeekBar sectionSeekBar, int i10, float f);

        void onProgressChanged(SectionSeekBar sectionSeekBar, int i10, float f);
    }

    public static abstract class OnProgressChangedListenerAdapter implements OnProgressChangedListener {
        @Override // com.narvii.poweruser.SectionSeekBar.OnProgressChangedListener
        public void getProgressOnActionUp(SectionSeekBar sectionSeekBar, int i10, float f) {
        }

        @Override // com.narvii.poweruser.SectionSeekBar.OnProgressChangedListener
        public void getProgressOnFinally(SectionSeekBar sectionSeekBar, int i10, float f) {
        }

        @Override // com.narvii.poweruser.SectionSeekBar.OnProgressChangedListener
        public void onProgressChanged(SectionSeekBar sectionSeekBar, int i10, float f) {
        }
    }

    public SectionSeekBar(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoAdjustSection() {
        ValueAnimator valueAnimatorOfFloat;
        float f = 0.0f;
        int i10 = 0;
        while (i10 <= this.mSectionCount) {
            float f6 = this.mSectionOffset;
            f = (i10 * f6) + this.mLeft;
            float f7 = this.mThumbCenterX;
            if (f <= f7 && f7 - f <= f6) {
                break;
            } else {
                i10++;
            }
        }
        boolean z6 = BigDecimal.valueOf((double) this.mThumbCenterX).setScale(1, 4).floatValue() == f;
        AnimatorSet animatorSet = new AnimatorSet();
        if (z6) {
            valueAnimatorOfFloat = null;
        } else {
            float f10 = this.mThumbCenterX;
            float f11 = f10 - f;
            float f12 = this.mSectionOffset;
            valueAnimatorOfFloat = f11 <= f12 / 2.0f ? ValueAnimator.ofFloat(f10, f) : ValueAnimator.ofFloat(f10, ((i10 + 1) * f12) + this.mLeft);
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
        if (!z6) {
            animatorSet.setDuration(this.mAnimDuration).playTogether(valueAnimatorOfFloat);
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.poweruser.SectionSeekBar.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                SectionSeekBar sectionSeekBar = SectionSeekBar.this;
                sectionSeekBar.mProgress = sectionSeekBar.calculateProgress();
                SectionSeekBar.this.isThumbOnDragging = false;
                SectionSeekBar.this.invalidate();
            }

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
        });
        animatorSet.start();
    }

    private float calThumbCxWhenSeekStepSection(float f) {
        float f6 = this.mLeft;
        int i10 = this.trackBarContentPadding;
        float f7 = f6 + i10;
        float f10 = this.mRight - i10;
        if (f <= f7) {
            return f7;
        }
        if (f > f10) {
            return f10;
        }
        float f11 = 0.0f;
        int i11 = 0;
        while (i11 <= this.mSectionCount) {
            float f12 = this.mSectionOffset;
            f11 = (i11 * f12) + f7;
            if (f11 <= f && f - f11 <= f12) {
                break;
            }
            i11++;
        }
        float f13 = f - f11;
        float f14 = this.mSectionOffset;
        return f13 <= f14 / 2.0f ? f11 : ((i11 + 1) * f14) + f7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float calculateProgress() {
        float f;
        float f6;
        if (this.isRtl) {
            f = (((this.mRight - this.mThumbCenterX) - this.trackBarContentPadding) * this.mDelta) / this.mRealTrackLength;
            f6 = this.mMin;
        } else {
            f = (((this.mThumbCenterX - this.mLeft) - this.trackBarContentPadding) * this.mDelta) / this.mRealTrackLength;
            f6 = this.mMin;
        }
        return f + f6;
    }

    private float formatFloat(float f) {
        return BigDecimal.valueOf(f).setScale(1, 4).floatValue();
    }

    private void initSectionTextArray() {
        for (int i10 = 0; i10 <= this.mSectionCount; i10++) {
            float f = this.isRtl ? this.mMax - (this.mSectionValue * i10) : this.mMin + (this.mSectionValue * i10);
            this.mSectionTextArray.put(i10, this.isFloatType ? float2String(f) : ((int) f) + "");
        }
    }

    private float processProgress() {
        float f = this.mProgress;
        if (!this.isSeekBySection || !this.triggerSeekBySection) {
            return f;
        }
        float f6 = this.mSectionValue / 2.0f;
        if (this.isTouchToSeek) {
            if (f == this.mMin || f == this.mMax) {
                return f;
            }
            for (int i10 = 0; i10 <= this.mSectionCount; i10++) {
                float f7 = this.mSectionValue;
                float f10 = i10 * f7;
                if (f10 < f && f10 + f7 >= f) {
                    return f6 + f10 > f ? f10 : f10 + f7;
                }
            }
        }
        float f11 = this.mPreSecValue;
        if (f >= f11) {
            if (f < f6 + f11) {
                return f11;
            }
            float f12 = f11 + this.mSectionValue;
            this.mPreSecValue = f12;
            return f12;
        }
        if (f >= f11 - f6) {
            return f11;
        }
        float f13 = f11 - this.mSectionValue;
        this.mPreSecValue = f13;
        return f13;
    }

    public OnProgressChangedListener getOnProgressChangedListener() {
        return this.mProgressListener;
    }

    public void setOnProgressChangedListener(OnProgressChangedListener onProgressChangedListener) {
        this.mProgressListener = onProgressChangedListener;
    }

    public SectionSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void initConfigByPriority() {
        if (this.mMin == this.mMax) {
            this.mMin = 0.0f;
            this.mMax = 100.0f;
        }
        float f = this.mMin;
        float f6 = this.mMax;
        if (f > f6) {
            this.mMax = f;
            this.mMin = f6;
        }
        float f7 = this.mProgress;
        float f10 = this.mMin;
        if (f7 < f10) {
            this.mProgress = f10;
        }
        float f11 = this.mProgress;
        float f12 = this.mMax;
        if (f11 > f12) {
            this.mProgress = f12;
        }
        if (this.mSectionCount <= 0) {
            this.mSectionCount = 10;
        }
        this.trackBarHeight = this.mTrackSize;
        float f13 = f12 - f10;
        this.mDelta = f13;
        float f14 = f13 / this.mSectionCount;
        this.mSectionValue = f14;
        if (f14 < 1.0f) {
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
            float f15 = this.mMin;
            this.mPreSecValue = f15;
            if (this.mProgress != f15) {
                this.mPreSecValue = this.mSectionValue;
            }
            this.isAutoAdjustSectionMark = true;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float paddingLeft = getPaddingLeft();
        float measuredWidth = getMeasuredWidth() - getPaddingRight();
        float paddingTop = getPaddingTop();
        float f = this.indicatorSize / 2.0f;
        float f6 = paddingLeft + f;
        int i10 = this.trackBarContentPadding;
        float f7 = f6 + i10;
        float f10 = measuredWidth - f;
        float f11 = f10 - i10;
        this.mSectionPaint.setTextSize(this.mSectionTextSize);
        int iDescent = (int) (this.mSectionPaint.descent() - this.mSectionPaint.ascent());
        int i11 = this.mTextSpace;
        int i12 = (int) (paddingTop + i11);
        int iMax = i12 + iDescent + ((int) Math.max(this.sectionLineHeight + i11, i11 + f));
        float f12 = iMax;
        float f13 = i12;
        int i13 = 0;
        while (i13 <= this.mSectionCount) {
            float f14 = i13;
            float f15 = f7 + (this.mSectionOffset * f14);
            this.mSectionPaint.setColor(this.mTrackColor);
            this.mSectionPaint.setTypeface(f14 == this.mProgress ? Typeface.DEFAULT_BOLD : null);
            this.mSectionPaint.setStrokeWidth(this.sectionLineWidth);
            int i14 = iMax;
            float f16 = f;
            int i15 = i13;
            float f17 = f13;
            canvas.drawLine(f15, iMax - this.sectionLineHeight, f15, f12, this.mSectionPaint);
            this.mSectionPaint.setColor(this.mSectionTextColor);
            this.mSectionPaint.setTextSize(this.mSectionTextSize);
            if (this.mSectionTextArray.get(i15, null) != null) {
                canvas.drawText(this.mSectionTextArray.get(this.isRtl ? this.mSectionCount - i15 : i15), f15, f17 + iDescent, this.mSectionPaint);
            }
            i13 = i15 + 1;
            f = f16;
            iMax = i14;
            f13 = f17;
        }
        float f18 = f;
        this.mPaint.setColor(this.mTrackColor);
        this.mPaint.setStrokeWidth(this.trackBarHeight);
        if (this.isRtl) {
            canvas.drawLine(f10, f12, f6, f12, this.mPaint);
        } else {
            canvas.drawLine(f6, f12, f10, f12, this.mPaint);
        }
        if (this.isRtl) {
            this.mThumbCenterX = f11 - ((this.mTrackLength / this.mDelta) * (this.mProgress - this.mMin));
        } else {
            this.mThumbCenterX = f7 + ((this.mRealTrackLength / this.mDelta) * (this.mProgress - this.mMin));
        }
        Rect rect = new Rect();
        float f19 = this.mThumbCenterX;
        rect.left = (int) (f19 - f18);
        rect.right = (int) (f19 + f18);
        rect.top = (int) (f12 - f18);
        rect.bottom = (int) (f12 + f18);
        if (this.bmpIndicator == null) {
            this.bmpIndicator = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.ic_seekbar_indicator)).getBitmap();
        }
        canvas.drawBitmap(this.bmpIndicator, (Rect) null, rect, (Paint) null);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.mProgress = bundle.getFloat("progress");
        super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
        setProgress(this.mProgress);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.mProgress);
        return bundle;
    }

    public void setCustomSectionTextArray(@NonNull CustomSectionTextArray customSectionTextArray) {
        this.mSectionTextArray = customSectionTextArray.onCustomize(this.mSectionCount, this.mSectionTextArray);
        for (int i10 = 0; i10 <= this.mSectionCount; i10++) {
            if (this.mSectionTextArray.get(i10) == null) {
                this.mSectionTextArray.put(i10, "");
            }
        }
        requestLayout();
        invalidate();
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

    public SectionSeekBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSectionTextArray = new SparseArray<>();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.SectionSeekBar, i10, 0);
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
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = this.mPaint;
        Paint.Align align = Paint.Align.CENTER;
        paint2.setTextAlign(align);
        Paint paint3 = new Paint();
        this.mSectionPaint = paint3;
        paint3.setAntiAlias(true);
        this.mSectionPaint.setStrokeCap(Paint.Cap.SQUARE);
        this.mSectionPaint.setTextAlign(align);
        this.mRectText = new Rect();
        this.mTextSpace = (int) Utils.dpToPx(getContext(), 2.0f);
        initConfigByPriority();
        this.bmpIndicator = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.ic_seekbar_indicator)).getBitmap();
    }

    private String float2String(float f) {
        return String.valueOf(formatFloat(f));
    }

    private boolean isThumbTouched(MotionEvent motionEvent) {
        float f;
        if (!isEnabled()) {
            return false;
        }
        float f6 = (this.mTrackLength / this.mDelta) * (this.mProgress - this.mMin);
        if (this.isRtl) {
            f = this.mRight - f6;
        } else {
            f = this.mLeft + f6;
        }
        float measuredHeight = getMeasuredHeight() / 2.0f;
        if (((motionEvent.getX() - f) * (motionEvent.getX() - f)) + ((motionEvent.getY() - measuredHeight) * (motionEvent.getY() - measuredHeight)) > (this.mLeft + Utils.dpToPx(getContext(), 8.0f)) * (this.mLeft + Utils.dpToPx(getContext(), 8.0f))) {
            return false;
        }
        return true;
    }

    private boolean isTrackTouched(MotionEvent motionEvent) {
        if (isEnabled() && motionEvent.getX() >= getPaddingLeft() && motionEvent.getX() <= getMeasuredWidth() - getPaddingRight() && motionEvent.getY() >= getPaddingTop() && motionEvent.getY() <= getMeasuredHeight() - getPaddingBottom()) {
            return true;
        }
        return false;
    }

    public int getProgress() {
        return Math.round(processProgress());
    }

    public float getProgressFloat() {
        return formatFloat(processProgress());
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        super.onMeasure(i10, i11);
        this.mSectionPaint.setTextSize(this.sectionTextSize);
        int iDescent = (int) (this.mSectionPaint.descent() - this.mSectionPaint.ascent());
        int i14 = this.sectionLineHeight;
        int i15 = this.mTextSpace;
        setMeasuredDimension(View.resolveSize((int) Utils.dpToPx(getContext(), 180.0f), i10), iDescent + Math.max(i14 + i15, i15 + this.indicatorSize) + this.mTextSpace + this.trackBarHeight);
        float f = this.indicatorSize / 2.0f;
        this.mLeft = getPaddingLeft() + f;
        this.mRight = (getMeasuredWidth() - getPaddingRight()) - f;
        SparseArray<String> sparseArray = this.mSectionTextArray;
        if (this.isRtl) {
            i12 = this.mSectionCount;
        } else {
            i12 = 0;
        }
        String str = sparseArray.get(i12);
        this.mPaint.getTextBounds(str, 0, str.length(), this.mRectText);
        this.mLeft = getPaddingLeft() + Math.max(f, this.mRectText.width() / 2.0f) + this.mTextSpace;
        SparseArray<String> sparseArray2 = this.mSectionTextArray;
        if (this.isRtl) {
            i13 = 0;
        } else {
            i13 = this.mSectionCount;
        }
        String str2 = sparseArray2.get(i13);
        this.mPaint.getTextBounds(str2, 0, str2.length(), this.mRectText);
        float measuredWidth = ((getMeasuredWidth() - getPaddingRight()) - Math.max(f, this.mRectText.width() / 2.0f)) - this.mTextSpace;
        this.mRight = measuredWidth;
        float f6 = measuredWidth - this.mLeft;
        this.mTrackLength = f6;
        float f7 = f6 - (this.trackBarContentPadding * 2);
        this.mRealTrackLength = f7;
        this.mSectionOffset = (f7 * 1.0f) / this.mSectionCount;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new Runnable() { // from class: com.narvii.poweruser.SectionSeekBar.1
            @Override // java.lang.Runnable
            public void run() {
                SectionSeekBar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0062  */
    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0071  */
    /* JADX WARN: Code duplicated, block: B:31:0x007c  */
    /* JADX WARN: Code duplicated, block: B:32:0x0080  */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x0096  */
    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b3  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        long j6;
        OnProgressChangedListener onProgressChangedListener;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        getParent().requestDisallowInterceptTouchEvent(false);
                        if (this.isAutoAdjustSectionMark) {
                            if (this.isTouchToSeek) {
                                postDelayed(new Runnable() { // from class: com.narvii.poweruser.SectionSeekBar.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        SectionSeekBar.this.autoAdjustSection();
                                    }
                                }, this.mAnimDuration);
                            } else {
                                autoAdjustSection();
                            }
                        } else if (!this.isThumbOnDragging) {
                            ViewPropertyAnimator duration = animate().setDuration(this.mAnimDuration);
                            if (this.isThumbOnDragging) {
                                j6 = 0;
                            } else {
                                j6 = 0;
                            }
                            duration.setStartDelay(j6).setListener(new AnimatorListenerAdapter() { // from class: com.narvii.poweruser.SectionSeekBar.3
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator) {
                                    SectionSeekBar.this.isThumbOnDragging = false;
                                    SectionSeekBar.this.invalidate();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    SectionSeekBar.this.isThumbOnDragging = false;
                                    SectionSeekBar.this.invalidate();
                                }
                            }).start();
                        } else {
                            ViewPropertyAnimator duration2 = animate().setDuration(this.mAnimDuration);
                            if (this.isThumbOnDragging) {
                                j6 = 0;
                            } else {
                                j6 = 0;
                            }
                            duration2.setStartDelay(j6).setListener(new AnimatorListenerAdapter() { // from class: com.narvii.poweruser.SectionSeekBar.3
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationCancel(Animator animator) {
                                    SectionSeekBar.this.isThumbOnDragging = false;
                                    SectionSeekBar.this.invalidate();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    SectionSeekBar.this.isThumbOnDragging = false;
                                    SectionSeekBar.this.invalidate();
                                }
                            }).start();
                        }
                        onProgressChangedListener = this.mProgressListener;
                        if (onProgressChangedListener != null) {
                            onProgressChangedListener.onProgressChanged(this, getProgress(), getProgressFloat());
                            this.mProgressListener.getProgressOnActionUp(this, getProgress(), getProgressFloat());
                        }
                    }
                } else if (this.isThumbOnDragging) {
                    if (this.isSeekStepSection) {
                        float fCalThumbCxWhenSeekStepSection = calThumbCxWhenSeekStepSection(motionEvent.getX());
                        if (fCalThumbCxWhenSeekStepSection != this.mPreThumbCenterX) {
                            this.mPreThumbCenterX = fCalThumbCxWhenSeekStepSection;
                            this.mThumbCenterX = fCalThumbCxWhenSeekStepSection;
                        }
                    } else {
                        float x6 = motionEvent.getX() + this.dx;
                        this.mThumbCenterX = x6;
                        float f = this.mLeft;
                        if (x6 < f) {
                            this.mThumbCenterX = f;
                        }
                        float f6 = this.mThumbCenterX;
                        float f7 = this.mRight;
                        if (f6 > f7) {
                            this.mThumbCenterX = f7;
                        }
                    }
                    this.mProgress = calculateProgress();
                    invalidate();
                    OnProgressChangedListener onProgressChangedListener2 = this.mProgressListener;
                    if (onProgressChangedListener2 != null) {
                        onProgressChangedListener2.onProgressChanged(this, getProgress(), getProgressFloat());
                    }
                }
            } else {
                getParent().requestDisallowInterceptTouchEvent(false);
                if (this.isAutoAdjustSectionMark) {
                    if (this.isTouchToSeek) {
                        postDelayed(new Runnable() { // from class: com.narvii.poweruser.SectionSeekBar.2
                            @Override // java.lang.Runnable
                            public void run() {
                                SectionSeekBar.this.autoAdjustSection();
                            }
                        }, this.mAnimDuration);
                    } else {
                        autoAdjustSection();
                    }
                } else if (!this.isThumbOnDragging || this.isTouchToSeek) {
                    ViewPropertyAnimator duration3 = animate().setDuration(this.mAnimDuration);
                    if (this.isThumbOnDragging && this.isTouchToSeek) {
                        j6 = 300;
                    } else {
                        j6 = 0;
                    }
                    duration3.setStartDelay(j6).setListener(new AnimatorListenerAdapter() { // from class: com.narvii.poweruser.SectionSeekBar.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            SectionSeekBar.this.isThumbOnDragging = false;
                            SectionSeekBar.this.invalidate();
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            SectionSeekBar.this.isThumbOnDragging = false;
                            SectionSeekBar.this.invalidate();
                        }
                    }).start();
                }
                onProgressChangedListener = this.mProgressListener;
                if (onProgressChangedListener != null) {
                    onProgressChangedListener.onProgressChanged(this, getProgress(), getProgressFloat());
                    this.mProgressListener.getProgressOnActionUp(this, getProgress(), getProgressFloat());
                }
            }
        } else {
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsThumbTouched = isThumbTouched(motionEvent);
            this.isThumbOnDragging = zIsThumbTouched;
            if (zIsThumbTouched) {
                if (this.isSeekBySection && !this.triggerSeekBySection) {
                    this.triggerSeekBySection = true;
                }
                invalidate();
            } else if (this.isTouchToSeek && isTrackTouched(motionEvent)) {
                this.isThumbOnDragging = true;
                if (this.isSeekBySection && !this.triggerSeekBySection) {
                    this.triggerSeekBySection = true;
                }
                if (this.isSeekStepSection) {
                    float fCalThumbCxWhenSeekStepSection2 = calThumbCxWhenSeekStepSection(motionEvent.getX());
                    this.mPreThumbCenterX = fCalThumbCxWhenSeekStepSection2;
                    this.mThumbCenterX = fCalThumbCxWhenSeekStepSection2;
                } else {
                    float x10 = motionEvent.getX();
                    this.mThumbCenterX = x10;
                    float f10 = this.mLeft;
                    if (x10 < f10) {
                        this.mThumbCenterX = f10;
                    }
                    float f11 = this.mThumbCenterX;
                    float f12 = this.mRight;
                    if (f11 > f12) {
                        this.mThumbCenterX = f12;
                    }
                }
                this.mProgress = calculateProgress();
                invalidate();
            }
            this.dx = this.mThumbCenterX - motionEvent.getX();
        }
        if (!this.isThumbOnDragging && !this.isTouchToSeek && !super.onTouchEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }
}
