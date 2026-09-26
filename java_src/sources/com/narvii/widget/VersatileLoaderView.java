package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.narvii.amino.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes5.dex */
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
        void onStateChange(int i10);
    }

    public static class State {
        public static final int FINISHED = 2;
        public static final int NOT_STARTED = 0;
        public static final int STARTED = 1;
    }

    public VersatileLoaderView(Context context) {
        this(context, null);
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

    private boolean neeKeepDrawing(long j6) {
        return this.previousFramePercentage < this.finalPercentage;
    }

    public void reset() {
        changeStatus(0);
        this.initialTime = 0L;
        this.previousFramePercentage = 0.0f;
        ViewCompat.k0(this);
    }

    public void setStateChangeListener(OnStateChangeListener onStateChangeListener) {
        this.stateChangeListener = onStateChangeListener;
    }

    public void start() {
        changeStatus(0);
        this.initialTime = System.currentTimeMillis();
        ViewCompat.k0(this);
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
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
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
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.finalPercentage);
        }
    }

    public VersatileLoaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void changeStatus(int i10) {
        if (this.currentStatus == i10) {
            return;
        }
        this.currentStatus = i10;
        OnStateChangeListener onStateChangeListener = this.stateChangeListener;
        if (onStateChangeListener != null) {
            onStateChangeListener.onStateChange(i10);
        }
    }

    private float getPercentage(long j6) {
        float f = (j6 - this.previousFramePercentageTime) / this.fillDuration;
        if (f < 0.0f) {
            f = 0.0f;
        }
        float f6 = (this.previousFramePercentage + (this.finalPercentage * f)) / 100.0f;
        this.previousFramePercentage = 100.0f * f6;
        this.previousFramePercentageTime = System.currentTimeMillis() - this.initialTime;
        return f6;
    }

    private void initFillPaint() {
        Paint paint = new Paint();
        this.fillPaint = paint;
        paint.setAntiAlias(true);
        this.fillPaint.setStyle(Paint.Style.FILL);
        this.fillPaint.setColor(this.innerFillColor);
    }

    private void initStrikePaint() {
        Paint paint = new Paint();
        this.strokePaint = paint;
        paint.setAntiAlias(true);
        this.strokePaint.setStyle(Paint.Style.FILL);
        this.strokePaint.setColor(this.strokeColor);
    }

    private void transformRect(Canvas canvas, float f, View view, float f6, float f7) {
        canvas.clipRect(0.0f, f6 + (f7 * (1.0f - f)), view.getRight(), view.getBottom() - view.getPaddingBottom());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float paddingTop;
        float paddingLeft;
        float width;
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
        float f6 = percentage;
        int width2 = getWidth();
        int height = getHeight();
        if (this.mode == 1) {
            width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            float height2 = (getHeight() - getPaddingBottom()) - getPaddingTop();
            paddingLeft = getPaddingLeft();
            f = height2;
            paddingTop = getPaddingTop();
        } else {
            float fMin = Math.min(getWidth(), (getHeight() * 2.0f) / this.sqrt3);
            float f7 = this.halfsqrt3 * fMin;
            f = f7;
            paddingTop = (height - f7) / 2.0f;
            paddingLeft = (width2 - fMin) / 2.0f;
            width = fMin;
        }
        float f10 = paddingLeft < 0.0f ? 0.0f : paddingLeft;
        if (this.mode == 1) {
            this.outerLinePath.moveTo((width / 2.0f) + f10, paddingTop);
            this.outerLinePath.lineTo(f10, height - getPaddingBottom());
            this.outerLinePath.lineTo(getWidth() - getPaddingRight(), height - getPaddingBottom());
            this.outerLinePath.close();
        } else {
            this.outerLinePath.moveTo((width / 2.0f) + f10, paddingTop);
            float f11 = paddingTop + f;
            this.outerLinePath.lineTo(f10, f11 - getPaddingBottom());
            this.outerLinePath.lineTo(f10 + width, f11 - getPaddingBottom());
            this.outerLinePath.close();
        }
        this.projectPath.reset();
        this.projectPath.addPath(this.outerLinePath);
        this.projectPath.close();
        canvas.save();
        transformTriangle(canvas, f6, this, paddingTop, f, f10, f10 + width);
        if (this.doClip) {
            this.fillPaint.setColor(this.innerFillColor);
            canvas.drawPath(this.projectPath, this.fillPaint);
            canvas.restore();
        }
        canvas.save();
        transformRect(canvas, f6, this, paddingTop, f);
        this.fillPaint.setColor(this.outerFillColor);
        canvas.drawPath(this.outerLinePath, this.fillPaint);
        canvas.restore();
        if (neeKeepDrawing(jCurrentTimeMillis)) {
            ViewCompat.k0(this);
        } else {
            changeStatus(2);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.finalPercentage = savedState.finalPercentage;
        requestLayout();
    }

    public VersatileLoaderView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
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

    private void initView() {
        initFillPaint();
        initStrikePaint();
        this.projectPath = new Path();
        this.outerLinePath = new Path();
        this.transformPath1 = new Path();
        float fSqrt = (float) Math.sqrt(3.0d);
        this.sqrt3 = fSqrt;
        this.halfsqrt3 = fSqrt / 2.0f;
        changeStatus(0);
    }

    private void transformTriangle(Canvas canvas, float f, View view, float f6, float f7, float f10, float f11) {
        int iDpToPx = (int) Utils.dpToPx(getContext(), 2.0f);
        float f12 = 1.0f - f;
        float f13 = (f7 * f12) + f6;
        float f14 = (f * (f11 - f10)) / 2.0f;
        this.transformPath1.reset();
        float f15 = iDpToPx;
        this.transformPath1.moveTo(f10 + f14 + f15, f13);
        this.transformPath1.lineTo(view.getWidth() / 2.0f, f6 + (f7 * 0.85f * f12));
        this.transformPath1.lineTo((f11 - f14) - f15, f13);
        this.transformPath1.close();
        if (this.doClip) {
            try {
                canvas.clipPath(this.transformPath1);
            } catch (Exception unused) {
                this.doClip = false;
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.finalPercentage = this.finalPercentage;
        return savedState;
    }

    public void setNewFinalPercentage(float f) {
        filterMinValue(f);
        start();
    }

    public void setToFinalFrame(float f) {
        filterMinValue(f);
        this.initialTime = 1L;
        changeStatus(2);
        ViewCompat.k0(this);
    }
}
