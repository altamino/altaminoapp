package com.narvii.crop;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
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
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.lib.R;

/* loaded from: classes2.dex */
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

    public OverlayView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
        init();
    }

    public void setRadius(int i) {
        this.mRadius = i;
        setupCropBounds();
    }

    public void setHorizontalAdjust(boolean z) {
        this.hAdjust = z;
    }

    public void setRoundedDimmedLayer(boolean z) {
        this.mRoundedDimmedLayer = z;
    }

    public void setOnAdjustListener(OnAdjustListener onAdjustListener) {
        this.mOnAdjustListener = onAdjustListener;
    }

    public void setCropGridRowCount(int i) {
        this.mCropGridRowCount = i;
        this.mGridPoints = null;
    }

    public void setCropGridColumnCount(int i) {
        this.mCropGridColumnCount = i;
        this.mGridPoints = null;
    }

    public void setShowCropFrame(boolean z) {
        this.mShowCropFrame = z;
    }

    public void setShowCropGrid(boolean z) {
        this.mShowCropGrid = z;
    }

    public void setDrawCropLines(boolean z) {
        this.mDrawCropLines = z;
    }

    public void setDimmedColor(int i) {
        this.mDimmedColor = i;
    }

    public void setCropFrameStrokeWidth(int i) {
        this.mCropFramePaint.setStrokeWidth(i);
    }

    public void setCropFramePathEffect(PathEffect pathEffect) {
        this.mCropFramePaint.setPathEffect(pathEffect);
    }

    public void setCropGridStrokeWidth(int i) {
        this.mCropGridPaint.setStrokeWidth(i);
    }

    public void setCropFrameColor(int i) {
        this.mCropFramePaint.setColor(i);
    }

    public void setCropGridColor(int i) {
        this.mCropGridPaint.setColor(i);
    }

    public void setTargetAspectRatio(float f) {
        this.mTargetAspectRatio = f;
        setupCropBounds();
    }

    public void setupCropBounds() {
        int i = this.mThisWidth;
        float f = this.mTargetAspectRatio;
        int i2 = (int) (i / f);
        int i3 = this.mThisHeight;
        if (i2 > i3) {
            int i4 = (i - ((int) (i3 * f))) / 2;
            RectF rectF = this.mCropViewRect;
            int i5 = this.mPaddingLeft;
            rectF.set(i5 + i4, this.mPaddingTop, i5 + r1 + i4, r6 + i3);
        } else {
            int i6 = (i3 - i2) / 2;
            RectF rectF2 = this.mCropViewRect;
            int i7 = this.mPaddingLeft;
            int i8 = this.mPaddingTop;
            rectF2.set(i7, i8 + i6, i7 + i, i8 + i2 + i6);
        }
        this.mGridPoints = null;
        setUpRoundedPath();
    }

    private void setUpRoundedPath() {
        Rect rect;
        this.mRoundedPath.reset();
        Rect rect2 = this.hlRect;
        if (rect2 != null) {
            int iWidth = ((int) this.mCropViewRect.left) - rect2.width();
            RectF rectF = this.mCropViewRect;
            rect = new Rect(iWidth, (int) rectF.top, ((int) rectF.right) + this.hlRect.width(), (int) this.mCropViewRect.bottom);
        } else {
            RectF rectF2 = this.mCropViewRect;
            rect = new Rect((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
        }
        Path path = this.mRoundedPath;
        RectF rectF3 = new RectF(rect);
        int i = this.mRadius;
        path.addRoundRect(rectF3, i, i, Path.Direction.CW);
    }

    protected void init() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18 || i < 11) {
            return;
        }
        setLayerType(1, null);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            int i5 = this.mPaddingLeft;
            int i6 = this.mPaddingTop;
            int width = getWidth() - this.mPaddingRight;
            int height = getHeight() - this.mPaddingBottom;
            this.mThisWidth = width - i5;
            this.mThisHeight = height - i6;
            setupCropBounds();
        }
    }

    public void setCustomPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
        setupCropBounds();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawCropGrid(canvas);
        drawDimmedLayer(canvas);
    }

    protected void drawDimmedLayer(Canvas canvas) {
        canvas.save();
        if (this.mRoundedDimmedLayer) {
            canvas.clipPath(this.mRoundedPath, Region.Op.DIFFERENCE);
        } else {
            canvas.clipRect(this.mCropViewRect, Region.Op.DIFFERENCE);
        }
        this.mDimmedColor = getResources().getColor(R.color.crop_dimmed);
        canvas.drawColor(this.mDimmedColor);
        canvas.restore();
        if (this.mRoundedDimmedLayer) {
            canvas.drawPath(this.mRoundedPath, this.mDimmedStrokePaint);
        }
    }

    private void sethMargin(int i, boolean z) {
        int i2 = getResources().getDisplayMetrics().widthPixels;
        if (i < 0 || i > i2) {
            return;
        }
        if (z) {
            this.mLasthMargin = this.hMargin;
        }
        RectF rectF = this.mCropViewRect;
        if (rectF != null) {
            int i3 = i2 / 2;
            int iHeight = (int) (i3 - (rectF.height() / 2.0f));
            if (i > i3) {
                int i4 = i2 - i;
                if (i4 > iHeight) {
                    this.hMargin = iHeight;
                } else {
                    this.hMargin = i4;
                }
            } else if (i < iHeight) {
                this.hMargin = i;
            } else {
                this.hMargin = iHeight;
            }
            RectF rectF2 = this.mCropViewRect;
            rectF2.set(this.hMargin, rectF2.top, i2 - r6, rectF2.bottom);
            OnAdjustListener onAdjustListener = this.mOnAdjustListener;
            if (onAdjustListener != null) {
                RectF rectF3 = this.mCropViewRect;
                onAdjustListener.changeCropRect(new RectF(rectF3.left, rectF3.top, rectF3.right, rectF3.bottom));
            }
            setUpRoundedPath();
        }
    }

    public void setCropRectWidth(int i) {
        RectF rectF = this.mCropViewRect;
        if (rectF == null) {
            return;
        }
        if (i >= rectF.width()) {
            OnAdjustListener onAdjustListener = this.mOnAdjustListener;
            if (onAdjustListener != null) {
                onAdjustListener.onEventUp();
                return;
            }
            return;
        }
        final int i2 = getResources().getDisplayMetrics().widthPixels;
        sethMargin((i2 - i) / 2, true);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.mLasthMargin, this.hMargin);
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.crop.OverlayView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                OverlayView.this.hMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                OverlayView.this.mCropViewRect.set(OverlayView.this.hMargin, OverlayView.this.mCropViewRect.top, i2 - OverlayView.this.hMargin, OverlayView.this.mCropViewRect.bottom);
                OverlayView.this.invalidate();
            }
        });
        valueAnimatorOfInt.start();
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
            } else if (action != 1) {
                if (action == 2 && this.update) {
                    sethMargin((int) motionEvent.getX(), false);
                    invalidate();
                }
            } else {
                this.update = false;
                OnAdjustListener onAdjustListener = this.mOnAdjustListener;
                if (onAdjustListener != null) {
                    onAdjustListener.onEventUp();
                }
            }
            if (this.update) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void drawCropGrid(Canvas canvas) {
        if (this.mShowCropGrid && this.mMaskId != 0) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getContext().getResources(), this.mMaskId);
            int width = (this.hMargin * bitmapDecodeResource.getWidth()) / getResources().getDisplayMetrics().widthPixels;
            canvas.drawBitmap(bitmapDecodeResource, new Rect(width, 0, bitmapDecodeResource.getWidth() - width, bitmapDecodeResource.getHeight()), this.mCropViewRect, this.mCropFramePaint);
        }
        if (this.mDrawCropLines) {
            if (this.mGridPoints == null && !this.mCropViewRect.isEmpty()) {
                this.mGridPoints = new float[(this.mCropGridRowCount * 4) + (this.mCropGridColumnCount * 4)];
                int i = 0;
                for (int i2 = 0; i2 < this.mCropGridRowCount; i2++) {
                    float[] fArr = this.mGridPoints;
                    int i3 = i + 1;
                    RectF rectF = this.mCropViewRect;
                    fArr[i] = rectF.left;
                    int i4 = i3 + 1;
                    float f = i2 + 1.0f;
                    float fHeight = rectF.height() * (f / (this.mCropGridRowCount + 1));
                    RectF rectF2 = this.mCropViewRect;
                    fArr[i3] = fHeight + rectF2.top;
                    float[] fArr2 = this.mGridPoints;
                    int i5 = i4 + 1;
                    fArr2[i4] = rectF2.right;
                    i = i5 + 1;
                    fArr2[i5] = (rectF2.height() * (f / (this.mCropGridRowCount + 1))) + this.mCropViewRect.top;
                }
                int i6 = 0;
                while (i6 < this.mCropGridColumnCount) {
                    float[] fArr3 = this.mGridPoints;
                    int i7 = i + 1;
                    float f2 = i6 + 1.0f;
                    float fWidth = this.mCropViewRect.width() * (f2 / (this.mCropGridColumnCount + 1));
                    RectF rectF3 = this.mCropViewRect;
                    fArr3[i] = fWidth + rectF3.left;
                    float[] fArr4 = this.mGridPoints;
                    int i8 = i7 + 1;
                    fArr4[i7] = rectF3.top;
                    int i9 = i8 + 1;
                    float fWidth2 = rectF3.width() * (f2 / (this.mCropGridColumnCount + 1));
                    RectF rectF4 = this.mCropViewRect;
                    fArr4[i8] = fWidth2 + rectF4.left;
                    this.mGridPoints[i9] = rectF4.bottom;
                    i6++;
                    i = i9 + 1;
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
            int i10 = this.hMargin;
            RectF rectF5 = this.mCropViewRect;
            this.hlRect = new Rect(i10 - iHeight, (int) rectF5.top, i10, (int) rectF5.bottom);
            Bitmap bitmap = this.mLBitmap;
            canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), this.mLBitmap.getHeight()), this.hlRect, this.mCropFramePaint);
            RectF rectF6 = this.mCropViewRect;
            float f3 = rectF6.right;
            this.hrRect = new Rect((int) f3, (int) rectF6.top, ((int) f3) + iHeight, (int) rectF6.bottom);
            Bitmap bitmap2 = this.mRBitmap;
            canvas.drawBitmap(bitmap2, new Rect(0, 0, bitmap2.getWidth(), this.mRBitmap.getHeight()), this.hrRect, this.mCropFramePaint);
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

    public void setMaskId(int i) {
        this.mMaskId = i;
    }

    protected void processStyledAttributes(TypedArray typedArray) throws Resources.NotFoundException {
        this.mDimmedStrokePaint.setColor(this.mDimmedColor);
        this.mDimmedStrokePaint.setStyle(Paint.Style.STROKE);
        this.mDimmedStrokePaint.setStrokeWidth(1.0f);
        initCropFrameStyle(typedArray);
        this.mShowCropFrame = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_frame, false);
        initCropGridStyle(typedArray);
        this.mShowCropGrid = typedArray.getBoolean(R.styleable.ucrop_UCropView_ucrop_show_grid, true);
    }

    private void initCropFrameStyle(TypedArray typedArray) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.crop_frame_size);
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_frame_color, getResources().getColor(android.R.color.white));
        this.mCropFramePaint.setStrokeWidth(dimensionPixelSize);
        this.mCropFramePaint.setColor(color);
        this.mCropFramePaint.setStyle(Paint.Style.STROKE);
        this.mCropFramePaint.setFilterBitmap(true);
    }

    private void initCropGridStyle(TypedArray typedArray) throws Resources.NotFoundException {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.crop_frame_size);
        int color = typedArray.getColor(R.styleable.ucrop_UCropView_ucrop_grid_color, getResources().getColor(R.color.crop_grid));
        this.mCropGridPaint.setStrokeWidth(dimensionPixelSize);
        this.mCropGridPaint.setColor(color);
        this.mCropGridRowCount = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_row_count, 2);
        this.mCropGridColumnCount = typedArray.getInt(R.styleable.ucrop_UCropView_ucrop_grid_column_count, 2);
    }
}
