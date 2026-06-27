package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class VersatileLoaderView extends View {
    private static final int DEFAULT_THREOLD = 30;
    public final int DEFAULT_MIN_VALUE;
    private int currentStatus;
    private boolean doClip;
    private long fillDuration;
    private Paint fillPaint;
    private float finalPercentage;
    float halfsqrt3;
    private long initialTime;
    private int innerFillColor;
    private int mode;
    private int outerFillColor;
    private Path outerLinePath;
    private float previousFramePercentage;
    private long previousFramePercentageTime;
    private Path projectPath;
    private final float ratioForProjectionHeight;
    float sqrt3;
    public OnStateChangeListener stateChangeListener;
    private int strokeColor;
    private Paint strokePaint;
    private float strokeWidth;
    Path transformPath1;

    public interface OnStateChangeListener {
        void onStateChange(int i);
    }

    public static class State {
        public static final int FINISHED = 2;
        public static final int NOT_STARTED = 0;
        public static final int STARTED = 1;
    }

    public VersatileLoaderView(Context context) {
        this(context, null);
    }

    public VersatileLoaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VersatileLoaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ratioForProjectionHeight = 0.85f;
        this.DEFAULT_MIN_VALUE = 0;
        this.doClip = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VersatileLoaderView);
        this.innerFillColor = typedArrayObtainStyledAttributes.getColor(1, -15414273);
        this.outerFillColor = typedArrayObtainStyledAttributes.getColor(3, -16738107);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimension(5, 1.0f);
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(4, SupportMenu.CATEGORY_MASK);
        this.fillDuration = typedArrayObtainStyledAttributes.getInt(0, 1200);
        this.mode = typedArrayObtainStyledAttributes.getInt(2, 0);
        typedArrayObtainStyledAttributes.recycle();
        initView();
    }

    public void setStateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.stateChangeListener = onStateChangeListener;
    }

    private void initView() {
        initFillPaint();
        initStrikePaint();
        this.projectPath = new Path();
        this.outerLinePath = new Path();
        this.transformPath1 = new Path();
        this.sqrt3 = (float) Math.sqrt(3.0d);
        this.halfsqrt3 = this.sqrt3 / 2.0f;
        changeStatus(0);
    }

    private void initFillPaint() {
        this.fillPaint = new Paint();
        this.fillPaint.setAntiAlias(true);
        this.fillPaint.setStyle(Paint.Style.FILL);
        this.fillPaint.setColor(this.innerFillColor);
    }

    private void initStrikePaint() {
        this.strokePaint = new Paint();
        this.strokePaint.setAntiAlias(true);
        this.strokePaint.setStyle(Paint.Style.FILL);
        this.strokePaint.setColor(this.strokeColor);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fMin;
        float f;
        float f2;
        float paddingTop;
        super.onDraw(canvas);
        if (this.currentStatus < 1) {
            changeStatus(1);
            this.previousFramePercentageTime = System.currentTimeMillis() - this.initialTime;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.initialTime;
        float percentage = getPercentage(jCurrentTimeMillis);
        if (this.currentStatus == 2) {
            percentage = this.finalPercentage / 100.0f;
        }
        float f3 = percentage;
        int width = getWidth();
        int height = getHeight();
        if (this.mode == 1) {
            float width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
            float height2 = (getHeight() - getPaddingBottom()) - getPaddingTop();
            float paddingLeft = getPaddingLeft();
            f2 = height2;
            paddingTop = getPaddingTop();
            fMin = width2;
            f = paddingLeft;
        } else {
            fMin = Math.min(getWidth(), (getHeight() * 2.0f) / this.sqrt3);
            float f4 = this.halfsqrt3 * fMin;
            f = (width - fMin) / 2.0f;
            f2 = f4;
            paddingTop = (height - f4) / 2.0f;
        }
        float f5 = f < 0.0f ? 0.0f : f;
        if (this.mode == 1) {
            this.outerLinePath.moveTo((fMin / 2.0f) + f5, paddingTop);
            this.outerLinePath.lineTo(f5, height - getPaddingBottom());
            this.outerLinePath.lineTo(getWidth() - getPaddingRight(), height - getPaddingBottom());
            this.outerLinePath.close();
        } else {
            this.outerLinePath.moveTo((fMin / 2.0f) + f5, paddingTop);
            float f6 = paddingTop + f2;
            this.outerLinePath.lineTo(f5, f6 - getPaddingBottom());
            this.outerLinePath.lineTo(f5 + fMin, f6 - getPaddingBottom());
            this.outerLinePath.close();
        }
        this.projectPath.reset();
        this.projectPath.addPath(this.outerLinePath);
        this.projectPath.close();
        canvas.save();
        transformTriangle(canvas, f3, this, paddingTop, f2, f5, f5 + fMin);
        if (this.doClip) {
            this.fillPaint.setColor(this.innerFillColor);
            canvas.drawPath(this.projectPath, this.fillPaint);
            canvas.restore();
        }
        canvas.save();
        transformRect(canvas, f3, this, paddingTop, f2);
        this.fillPaint.setColor(this.outerFillColor);
        canvas.drawPath(this.outerLinePath, this.fillPaint);
        canvas.restore();
        if (neeKeepDrawing(jCurrentTimeMillis)) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            changeStatus(2);
        }
    }

    public void setNewFinalPercentage(float f) {
        filterMinValue(f);
        start();
    }

    public void setToFinalFrame(float f) {
        filterMinValue(f);
        this.initialTime = 1L;
        changeStatus(2);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private void filterMinValue(float f) {
        if (f <= 30.0f) {
            this.innerFillColor = -58854;
            this.outerFillColor = -6356197;
        }
        if (f < 0.0f) {
            this.finalPercentage = 0.0f;
        } else {
            this.finalPercentage = f;
        }
    }

    public void start() {
        changeStatus(0);
        this.initialTime = System.currentTimeMillis();
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void reset() {
        changeStatus(0);
        this.initialTime = 0L;
        this.previousFramePercentage = 0.0f;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private float getPercentage(long j) {
        float f = (j - this.previousFramePercentageTime) / this.fillDuration;
        if (f < 0.0f) {
            f = 0.0f;
        }
        float f2 = (this.previousFramePercentage + (this.finalPercentage * f)) / 100.0f;
        this.previousFramePercentage = 100.0f * f2;
        this.previousFramePercentageTime = System.currentTimeMillis() - this.initialTime;
        return f2;
    }

    private void transformRect(Canvas canvas, float f, View view, float f2, float f3) {
        canvas.clipRect(0.0f, f2 + (f3 * (1.0f - f)), view.getRight(), view.getBottom() - view.getPaddingBottom());
    }

    private void transformTriangle(Canvas canvas, float f, View view, float f2, float f3, float f4, float f5) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
        float f6 = 1.0f - f;
        float f7 = (f3 * f6) + f2;
        float f8 = (f * (f5 - f4)) / 2.0f;
        this.transformPath1.reset();
        float f9 = iDpToPx;
        this.transformPath1.moveTo(f4 + f8 + f9, f7);
        this.transformPath1.lineTo(view.getWidth() / 2.0f, f2 + (f3 * 0.85f * f6));
        this.transformPath1.lineTo((f5 - f8) - f9, f7);
        this.transformPath1.close();
        int i = Build.VERSION.SDK_INT;
        if (i < 18 && i >= 11) {
            setLayerType(1, null);
        }
        if (this.doClip) {
            try {
                canvas.clipPath(this.transformPath1);
            } catch (Exception unused) {
                this.doClip = false;
            }
        }
    }

    private boolean neeKeepDrawing(long j) {
        return this.previousFramePercentage < this.finalPercentage;
    }

    private void changeStatus(int i) {
        if (this.currentStatus == i) {
            return;
        }
        this.currentStatus = i;
        OnStateChangeListener onStateChangeListener = this.stateChangeListener;
        if (onStateChangeListener != null) {
            onStateChangeListener.onStateChange(this.currentStatus);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.finalPercentage = this.finalPercentage;
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.finalPercentage = savedState.finalPercentage;
        requestLayout();
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.narvii.widget.VersatileLoaderView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        float finalPercentage;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.finalPercentage = parcel.readFloat();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.finalPercentage);
        }
    }
}
