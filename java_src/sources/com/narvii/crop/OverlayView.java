package com.narvii.crop;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes5.dex */
public class OverlayView extends View {
    public static final int DEFAULT_CROP_GRID_COLUMN_COUNT = 2;
    public static final int DEFAULT_CROP_GRID_ROW_COUNT = 2;
    public static final boolean DEFAULT_SHOW_CROP_FRAME = false;
    public static final boolean DEFAULT_SHOW_CROP_GRID = true;
    private boolean hAdjust;
    private int hMargin;
    private Rect hlRect;
    private Rect hrRect;
    private Paint mCropFramePaint;
    private int mCropGridColumnCount;
    private Paint mCropGridPaint;
    private int mCropGridRowCount;
    private final RectF mCropViewRect;
    private int mDimmedColor;
    private Paint mDimmedStrokePaint;
    private boolean mDrawCropLines;
    private float[] mGridPoints;
    private Bitmap mLBitmap;
    private int mLasthMargin;
    private int mMaskId;
    private OnAdjustListener mOnAdjustListener;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private Bitmap mRBitmap;
    private int mRadius;
    private boolean mRoundedDimmedLayer;
    private Path mRoundedPath;
    private boolean mShowCropFrame;
    private boolean mShowCropGrid;
    private float mTargetAspectRatio;
    protected int mThisHeight;
    protected int mThisWidth;
    private boolean update;

    interface OnAdjustListener {
        void changeCropRect(RectF rectF);

        void onEventUp();
    }

    public OverlayView(Context context) {
        this(context, null);
    }

    public void setCropGridColumnCount(@IntRange int i10) {
        this.mCropGridColumnCount = i10;
        this.mGridPoints = null;
    }

    public void setCropGridRowCount(@IntRange int i10) {
        this.mCropGridRowCount = i10;
        this.mGridPoints = null;
    }

    public void setDimmedColor(@ColorInt int i10) {
        this.mDimmedColor = i10;
    }

    public void setDrawCropLines(boolean z6) {
        this.mDrawCropLines = z6;
    }

    public void setHorizontalAdjust(boolean z6) {
        this.hAdjust = z6;
    }

    public void setMaskId(int i10) {
        this.mMaskId = i10;
    }

    public void setOnAdjustListener(OnAdjustListener onAdjustListener) {
        this.mOnAdjustListener = onAdjustListener;
    }

    public void setRoundedDimmedLayer(boolean z6) {
        this.mRoundedDimmedLayer = z6;
    }

    public void setShowCropFrame(boolean z6) {
        this.mShowCropFrame = z6;
    }

    public void setShowCropGrid(boolean z6) {
        this.mShowCropGrid = z6;
    }

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setUpRoundedPath() {
        Rect rect;
        this.mRoundedPath.reset();
        if (this.hlRect != null) {
            int iWidth = ((int) this.mCropViewRect.left) - this.hlRect.width();
            RectF rectF = this.mCropViewRect;
            rect = new Rect(iWidth, (int) rectF.top, ((int) rectF.right) + this.hlRect.width(), (int) this.mCropViewRect.bottom);
        } else {
            RectF rectF2 = this.mCropViewRect;
            rect = new Rect((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
        }
        Path path = this.mRoundedPath;
        RectF rectF3 = new RectF(rect);
        int i10 = this.mRadius;
        path.addRoundRect(rectF3, i10, i10, Path.Direction.CW);
    }

    protected void drawCropGrid(@NonNull Canvas canvas) {
        if (this.mShowCropGrid && this.mMaskId != 0) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getContext().getResources(), this.mMaskId);
            int width = (this.hMargin * bitmapDecodeResource.getWidth()) / getResources().getDisplayMetrics().widthPixels;
            canvas.drawBitmap(bitmapDecodeResource, new Rect(width, 0, bitmapDecodeResource.getWidth() - width, bitmapDecodeResource.getHeight()), this.mCropViewRect, this.mCropFramePaint);
        }
        if (this.mDrawCropLines) {
            if (this.mGridPoints == null && !this.mCropViewRect.isEmpty()) {
                this.mGridPoints = new float[(this.mCropGridRowCount * 4) + (this.mCropGridColumnCount * 4)];
                int i10 = 0;
                for (int i11 = 0; i11 < this.mCropGridRowCount; i11++) {
                    float[] fArr = this.mGridPoints;
                    RectF rectF = this.mCropViewRect;
                    fArr[i10] = rectF.left;
                    float f = i11 + 1.0f;
                    float fHeight = rectF.height() * (f / (this.mCropGridRowCount + 1));
                    RectF rectF2 = this.mCropViewRect;
                    fArr[i10 + 1] = fHeight + rectF2.top;
                    float[] fArr2 = this.mGridPoints;
                    int i12 = i10 + 3;
                    fArr2[i10 + 2] = rectF2.right;
                    i10 += 4;
                    fArr2[i12] = (rectF2.height() * (f / (this.mCropGridRowCount + 1))) + this.mCropViewRect.top;
                }
                for (int i13 = 0; i13 < this.mCropGridColumnCount; i13++) {
                    float[] fArr3 = this.mGridPoints;
                    float f6 = i13 + 1.0f;
                    float fWidth = this.mCropViewRect.width() * (f6 / (this.mCropGridColumnCount + 1));
                    RectF rectF3 = this.mCropViewRect;
                    fArr3[i10] = fWidth + rectF3.left;
                    float[] fArr4 = this.mGridPoints;
                    fArr4[i10 + 1] = rectF3.top;
                    int i14 = i10 + 3;
                    float fWidth2 = rectF3.width() * (f6 / (this.mCropGridColumnCount + 1));
                    RectF rectF4 = this.mCropViewRect;
                    fArr4[i10 + 2] = fWidth2 + rectF4.left;
                    i10 += 4;
                    this.mGridPoints[i14] = rectF4.bottom;
                }
            }
            float[] fArr5 = this.mGridPoints;
            if (fArr5 != null) {
                canvas.drawLines(fArr5, this.mCropGridPaint);
            }
        }
        if (this.hAdjust) {
            if (this.mLBitmap == null) {
                this.mLBitmap = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.h_left_adjuster);
            }
            if (this.mRBitmap == null) {
                this.mRBitmap = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.h_right_adjuster);
            }
            int iHeight = (((int) this.mCropViewRect.height()) * this.mLBitmap.getWidth()) / this.mLBitmap.getHeight();
            if (this.hMargin < iHeight) {
                sethMargin(iHeight, false);
            }
            int i15 = this.hMargin;
            RectF rectF5 = this.mCropViewRect;
            this.hlRect = new Rect(i15 - iHeight, (int) rectF5.top, i15, (int) rectF5.bottom);
            canvas.drawBitmap(this.mLBitmap, new Rect(0, 0, this.mLBitmap.getWidth(), this.mLBitmap.getHeight()), this.hlRect, this.mCropFramePaint);
            RectF rectF6 = this.mCropViewRect;
            float f7 = rectF6.right;
            this.hrRect = new Rect((int) f7, (int) rectF6.top, ((int) f7) + iHeight, (int) rectF6.bottom);
            canvas.drawBitmap(this.mRBitmap, new Rect(0, 0, this.mRBitmap.getWidth(), this.mRBitmap.getHeight()), this.hrRect, this.mCropFramePaint);
            setUpRoundedPath();
        }
        if (this.mShowCropFrame) {
            if (this.mRoundedDimmedLayer) {
                canvas.drawPath(this.mRoundedPath, this.mCropFramePaint);
            } else {
                canvas.drawRect(this.mCropViewRect, this.mCropFramePaint);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.hAdjust) {
            int action = motionEvent.getAction();
            if (action == 0) {
                Rect rect = this.hlRect;
                if (rect != null && this.hrRect != null && (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) || this.hrRect.contains((int) motionEvent.getX(), (int) motionEvent.getY()))) {
                    this.update = true;
                }
            } else if (action == 1) {
                this.update = false;
                OnAdjustListener onAdjustListener = this.mOnAdjustListener;
                if (onAdjustListener != null) {
                    onAdjustListener.onEventUp();
                }
            } else if (action == 2 && this.update) {
                sethMargin((int) motionEvent.getX(), false);
                invalidate();
            }
            if (this.update) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void processStyledAttributes(@NonNull TypedArray typedArray) {
        this.mDimmedStrokePaint.setColor(this.mDimmedColor);
        this.mDimmedStrokePaint.setStyle(Paint.Style.STROKE);
        this.mDimmedStrokePaint.setStrokeWidth(1.0f);
        initCropFrameStyle(typedArray);
        this.mShowCropFrame = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_frame, false);
        initCropGridStyle(typedArray);
        this.mShowCropGrid = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_grid, true);
    }

    public void setCropFrameColor(@ColorInt int i10) {
        this.mCropFramePaint.setColor(i10);
    }

    public void setCropFramePathEffect(PathEffect pathEffect) {
        this.mCropFramePaint.setPathEffect(pathEffect);
    }

    public void setCropFrameStrokeWidth(@IntRange int i10) {
        this.mCropFramePaint.setStrokeWidth(i10);
    }

    public void setCropGridColor(@ColorInt int i10) {
        this.mCropGridPaint.setColor(i10);
    }

    public void setCropGridStrokeWidth(@IntRange int i10) {
        this.mCropGridPaint.setStrokeWidth(i10);
    }

    public void setCropRectWidth(int i10) {
        RectF rectF = this.mCropViewRect;
        if (rectF == null) {
            return;
        }
        if (i10 >= rectF.width()) {
            OnAdjustListener onAdjustListener = this.mOnAdjustListener;
            if (onAdjustListener != null) {
                onAdjustListener.onEventUp();
                return;
            }
            return;
        }
        final int i11 = getResources().getDisplayMetrics().widthPixels;
        sethMargin((i11 - i10) / 2, true);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.mLasthMargin, this.hMargin);
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.crop.OverlayView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                OverlayView.this.hMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                OverlayView.this.mCropViewRect.set(OverlayView.this.hMargin, OverlayView.this.mCropViewRect.top, i11 - OverlayView.this.hMargin, OverlayView.this.mCropViewRect.bottom);
                OverlayView.this.invalidate();
            }
        });
        valueAnimatorOfInt.start();
    }

    public void setCustomPadding(int i10, int i11, int i12, int i13) {
        this.mPaddingLeft = i10;
        this.mPaddingTop = i11;
        this.mPaddingRight = i12;
        this.mPaddingBottom = i13;
        setupCropBounds();
    }

    public void setRadius(int i10) {
        this.mRadius = i10;
        setupCropBounds();
    }

    public void setTargetAspectRatio(float f) {
        this.mTargetAspectRatio = f;
        setupCropBounds();
    }

    public void setupCropBounds() {
        int i10 = this.mThisWidth;
        float f = this.mTargetAspectRatio;
        int i11 = (int) (i10 / f);
        int i12 = this.mThisHeight;
        if (i11 > i12) {
            int i13 = (int) (i12 * f);
            int i14 = (i10 - i13) / 2;
            RectF rectF = this.mCropViewRect;
            int i15 = this.mPaddingLeft;
            int i16 = this.mPaddingTop;
            rectF.set(i15 + i14, i16, i15 + i13 + i14, i16 + i12);
        } else {
            int i17 = (i12 - i11) / 2;
            RectF rectF2 = this.mCropViewRect;
            int i18 = this.mPaddingLeft;
            int i19 = this.mPaddingTop;
            rectF2.set(i18, i19 + i17, i18 + i10, i19 + i11 + i17);
        }
        this.mGridPoints = null;
        setUpRoundedPath();
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mCropViewRect = new RectF();
        this.mGridPoints = null;
        this.mDrawCropLines = false;
        this.mRoundedDimmedLayer = true;
        this.mRoundedPath = new Path();
        this.mDimmedStrokePaint = new Paint(1);
        this.mCropGridPaint = new Paint(1);
        this.mCropFramePaint = new Paint(1);
        this.mRadius = 20;
        this.hAdjust = false;
        this.hMargin = 0;
    }

    private void initCropFrameStyle(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.crop_frame_size);
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_frame_color, getResources().getColor(android.R.color.white));
        this.mCropFramePaint.setStrokeWidth(dimensionPixelSize);
        this.mCropFramePaint.setColor(color);
        this.mCropFramePaint.setStyle(Paint.Style.STROKE);
        this.mCropFramePaint.setFilterBitmap(true);
    }

    private void initCropGridStyle(@NonNull TypedArray typedArray) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.crop_frame_size);
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_grid_color, getResources().getColor(R.color.crop_grid));
        this.mCropGridPaint.setStrokeWidth(dimensionPixelSize);
        this.mCropGridPaint.setColor(color);
        this.mCropGridRowCount = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_row_count, 2);
        this.mCropGridColumnCount = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_column_count, 2);
    }

    private void sethMargin(int i10, boolean z6) {
        int i11 = getResources().getDisplayMetrics().widthPixels;
        if (i10 >= 0 && i10 <= i11) {
            if (z6) {
                this.mLasthMargin = this.hMargin;
            }
            RectF rectF = this.mCropViewRect;
            if (rectF != null) {
                int i12 = i11 / 2;
                int iHeight = (int) (i12 - (rectF.height() / 2.0f));
                if (i10 <= i12) {
                    if (i10 < iHeight) {
                        this.hMargin = i10;
                    } else {
                        this.hMargin = iHeight;
                    }
                } else {
                    int i13 = i11 - i10;
                    if (i13 > iHeight) {
                        this.hMargin = iHeight;
                    } else {
                        this.hMargin = i13;
                    }
                }
                RectF rectF2 = this.mCropViewRect;
                int i14 = this.hMargin;
                rectF2.set(i14, rectF2.top, i11 - i14, rectF2.bottom);
                OnAdjustListener onAdjustListener = this.mOnAdjustListener;
                if (onAdjustListener != null) {
                    RectF rectF3 = this.mCropViewRect;
                    onAdjustListener.changeCropRect(new RectF(rectF3.left, rectF3.top, rectF3.right, rectF3.bottom));
                }
                setUpRoundedPath();
            }
        }
    }

    protected void drawDimmedLayer(@NonNull Canvas canvas) {
        canvas.save();
        if (this.mRoundedDimmedLayer) {
            canvas.clipPath(this.mRoundedPath, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.mCropViewRect, Region.Op.DIFFERENCE);
        }
        int color = getResources().getColor(R.color.crop_dimmed);
        this.mDimmedColor = color;
        canvas.drawColor(color);
        canvas.restore();
        if (this.mRoundedDimmedLayer) {
            canvas.drawPath(this.mRoundedPath, this.mDimmedStrokePaint);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawCropGrid(canvas);
        drawDimmedLayer(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6) {
            int i14 = this.mPaddingLeft;
            int i15 = this.mPaddingTop;
            int width = getWidth() - this.mPaddingRight;
            int height = getHeight() - this.mPaddingBottom;
            this.mThisWidth = width - i14;
            this.mThisHeight = height - i15;
            setupCropBounds();
        }
    }
}
