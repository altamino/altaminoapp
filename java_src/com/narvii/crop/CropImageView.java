package com.narvii.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.narvii.app.NVContext;
import com.narvii.crop.TransformImageView;
import com.narvii.theme.ThemeImage;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class CropImageView extends TransformImageView {
    public static final float DEFAULT_ASPECT_RATIO = 0.0f;
    public static final int DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION = 500;
    public static final int DEFAULT_MAX_BITMAP_SIZE = 0;
    public static final float DEFAULT_MAX_SCALE_MULTIPLIER = 10.0f;
    public static final float SOURCE_IMAGE_ASPECT_RATIO = 0.0f;
    protected boolean hAdjust;
    public String imageUrl;
    private CropBoundsChangeListener mCropBoundsChangeListener;
    private RectF mCropRect;
    private long mImageToWrapCropBoundsAnimDuration;
    private int mMaxResultImageSizeX;
    private int mMaxResultImageSizeY;
    private float mMaxScale;
    private float mMaxScaleMultiplier;
    private int mMinCropHeight;
    private int mMinCropWidth;
    private float mMinScale;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private float mTargetAspectRatio;
    private final Matrix mTempMatrix;
    private Runnable mWrapCropBoundsRunnable;
    private Runnable mZoomImageToPositionRunnable;

    public interface CropBoundsChangeListener {
        void onCropBoundsChangedRotate(float f);
    }

    public Bitmap cropImage() {
        return null;
    }

    public void sethAdjust(boolean z) {
        this.hAdjust = z;
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.hAdjust = false;
        this.mCropRect = new RectF();
        this.mTempMatrix = new Matrix();
        this.mMaxScaleMultiplier = 10.0f;
        this.mZoomImageToPositionRunnable = null;
        this.mMaxResultImageSizeX = 0;
        this.mMaxResultImageSizeY = 0;
        this.mImageToWrapCropBoundsAnimDuration = 500L;
    }

    public void setMinCropWidth(int i) {
        this.mMinCropWidth = i;
    }

    public void setMinCropHeight(int i) {
        this.mMinCropHeight = i;
    }

    public Bitmap getBitmap() {
        if (getDrawable() instanceof BitmapDrawable) {
            return ((BitmapDrawable) getDrawable()).getBitmap();
        }
        return null;
    }

    public RectF getCropRect() {
        return this.mCropRect;
    }

    public void setImageCenter(float[] fArr) {
        if (fArr == null) {
            return;
        }
        float[] fArr2 = this.mCurrentImageCenter;
        fArr2[0] = fArr[0];
        fArr2[1] = fArr[1];
        invalidate();
    }

    public void setImageCorners(float[] fArr) {
        if (fArr == null) {
            return;
        }
        for (int i = 0; i < 8; i++) {
            try {
                this.mCurrentImageCorners[i] = fArr[i];
            } catch (Exception unused) {
            }
        }
        invalidate();
    }

    public void setInitailImageCenter(float[] fArr) {
        if (fArr == null) {
            return;
        }
        float[] fArr2 = this.mInitialImageCenter;
        fArr2[0] = fArr[0];
        fArr2[1] = fArr[1];
        invalidate();
    }

    public void setInitailImageCorner(float[] fArr) {
        if (fArr == null) {
            return;
        }
        for (int i = 0; i < 8; i++) {
            try {
                this.mInitialImageCorners[i] = fArr[i];
            } catch (Exception unused) {
            }
        }
        invalidate();
    }

    public ThemeImage getCropResult(NVContext nVContext) {
        if (getDrawable() == null) {
            return null;
        }
        cancelAllAnimations();
        RectF rectFTrapToRect = RectUtils.trapToRect(this.mCurrentImageCorners);
        if (rectFTrapToRect.isEmpty()) {
            return null;
        }
        float currentScale = getCurrentScale();
        float f = (this.mCropRect.top - rectFTrapToRect.top) / currentScale;
        if (f < 0.0f) {
            f = 0.0f;
        }
        float f2 = (this.mCropRect.left - rectFTrapToRect.left) / currentScale;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        float fWidth = this.mCropRect.width() / currentScale;
        float fHeight = this.mCropRect.height() / currentScale;
        ThemeImage themeImage = new ThemeImage();
        themeImage.x = f2;
        themeImage.y = f;
        themeImage.imageMatrix = new float[9];
        this.mCurrentImageMatrix.getValues(themeImage.imageMatrix);
        themeImage.width = fWidth;
        float f3 = themeImage.width;
        int i = this.mMinCropWidth;
        if (f3 < i) {
            themeImage.width = i;
        }
        if (themeImage.x + themeImage.width > getDrawable().getIntrinsicWidth()) {
            themeImage.x = getDrawable().getIntrinsicWidth() - themeImage.width;
        }
        if (themeImage.x < 0.0f) {
            themeImage.x = 0.0f;
            themeImage.width = getDrawable().getIntrinsicWidth();
        }
        themeImage.height = fHeight;
        float f4 = themeImage.height;
        int i2 = this.mMinCropHeight;
        if (f4 < i2) {
            themeImage.height = i2;
        }
        if (themeImage.y + themeImage.height > getDrawable().getIntrinsicHeight()) {
            themeImage.y = getDrawable().getIntrinsicHeight() - themeImage.height;
        }
        if (themeImage.y < 0.0f) {
            themeImage.y = 0.0f;
            themeImage.height = getDrawable().getIntrinsicHeight();
        }
        themeImage.path = this.imageUrl;
        Log.d("crop_result", themeImage.toString());
        return themeImage;
    }

    public float getMaxScale() {
        return this.mMaxScale;
    }

    public float getMinScale() {
        return this.mMinScale;
    }

    public float getTargetAspectRatio() {
        return this.mTargetAspectRatio;
    }

    public void setTargetAspectRatio(float f) {
        if (getDrawable() == null) {
            this.mTargetAspectRatio = f;
            return;
        }
        if (f == 0.0f) {
            this.mTargetAspectRatio = r0.getIntrinsicWidth() / r0.getIntrinsicHeight();
        } else {
            this.mTargetAspectRatio = f;
        }
        setupCropBounds();
    }

    public void setCustomPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
        setupCropBounds();
    }

    public CropBoundsChangeListener getCropBoundsChangeListener() {
        return this.mCropBoundsChangeListener;
    }

    public void setCropBoundsChangeListener(CropBoundsChangeListener cropBoundsChangeListener) {
        this.mCropBoundsChangeListener = cropBoundsChangeListener;
    }

    public void setCropRect(RectF rectF) {
        this.mCropRect = rectF;
    }

    public void setMaxResultImageSizeX(int i) {
        this.mMaxResultImageSizeX = i;
    }

    public void setMaxResultImageSizeY(int i) {
        this.mMaxResultImageSizeY = i;
    }

    public void setImageToWrapCropBoundsAnimDuration(long j) {
        if (j > 0) {
            this.mImageToWrapCropBoundsAnimDuration = j;
            return;
        }
        throw new IllegalArgumentException("Animation duration cannot be negative value.");
    }

    public void setMaxScaleMultiplier(float f) {
        this.mMaxScaleMultiplier = f;
    }

    public void zoomOutImage(float f) {
        zoomOutImage(f, this.mCropRect.centerX(), this.mCropRect.centerY());
    }

    public void zoomOutImage(float f, float f2, float f3) {
        if (f >= getMinScale()) {
            postScale(f / getCurrentScale(), f2, f3);
        }
    }

    public void zoomInImage(float f) {
        zoomInImage(f, this.mCropRect.centerX(), this.mCropRect.centerY());
    }

    public void zoomInImage(float f, float f2, float f3) {
        if (f <= getMaxScale()) {
            postScale(f / getCurrentScale(), f2, f3);
        }
    }

    @Override // com.narvii.crop.TransformImageView
    public void postScale(float f, float f2, float f3) {
        if (f > 1.0f && getCurrentScale() * f <= getMaxScale()) {
            super.postScale(f, f2, f3);
        } else {
            if (f >= 1.0f || getCurrentScale() * f < getMinScale()) {
                return;
            }
            super.postScale(f, f2, f3);
        }
    }

    public void postRotate(float f) {
        postRotate(f, this.mCropRect.centerX(), this.mCropRect.centerY());
    }

    public void cancelAllAnimations() {
        removeCallbacks(this.mWrapCropBoundsRunnable);
        removeCallbacks(this.mZoomImageToPositionRunnable);
    }

    public void setImageToWrapCropBounds() {
        setImageToWrapCropBounds(true);
    }

    public void setImageToWrapCropBounds(boolean z) {
        float f;
        float f2;
        float f3;
        if (isImageWrapCropBounds()) {
            return;
        }
        float[] fArr = this.mCurrentImageCenter;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float currentScale = getCurrentScale();
        float fCenterX = this.mCropRect.centerX() - f4;
        float fCenterY = this.mCropRect.centerY() - f5;
        this.mTempMatrix.reset();
        this.mTempMatrix.setTranslate(fCenterX, fCenterY);
        float[] fArr2 = this.mCurrentImageCorners;
        float[] fArrCopyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.mTempMatrix.mapPoints(fArrCopyOf);
        boolean zIsImageWrapCropBounds = isImageWrapCropBounds(fArrCopyOf);
        if (zIsImageWrapCropBounds) {
            float[] fArrCalculateImageIndents = calculateImageIndents();
            float f6 = -(fArrCalculateImageIndents[0] + fArrCalculateImageIndents[2]);
            f3 = -(fArrCalculateImageIndents[1] + fArrCalculateImageIndents[3]);
            f = f6;
            f2 = 0.0f;
        } else {
            RectF rectF = new RectF(this.mCropRect);
            this.mTempMatrix.reset();
            this.mTempMatrix.setRotate(getCurrentAngle());
            this.mTempMatrix.mapRect(rectF);
            float[] rectSidesFromCorners = RectUtils.getRectSidesFromCorners(this.mCurrentImageCorners);
            double dMax = Math.max(rectF.width() / rectSidesFromCorners[0], rectF.height() / rectSidesFromCorners[1]);
            Double.isNaN(dMax);
            f = fCenterX;
            f2 = (((float) (dMax * 1.01d)) * currentScale) - currentScale;
            f3 = fCenterY;
        }
        if (z) {
            WrapCropBoundsRunnable wrapCropBoundsRunnable = new WrapCropBoundsRunnable(this, this.mImageToWrapCropBoundsAnimDuration, f4, f5, f, f3, currentScale, f2, zIsImageWrapCropBounds);
            this.mWrapCropBoundsRunnable = wrapCropBoundsRunnable;
            post(wrapCropBoundsRunnable);
        } else {
            postTranslate(f, f3);
            if (zIsImageWrapCropBounds) {
                return;
            }
            zoomInImage(currentScale + f2, this.mCropRect.centerX(), this.mCropRect.centerY());
        }
    }

    private float[] calculateImageIndents() {
        this.mTempMatrix.reset();
        this.mTempMatrix.setRotate(-getCurrentAngle());
        float[] fArr = this.mCurrentImageCorners;
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        float[] cornersFromRect = RectUtils.getCornersFromRect(this.mCropRect);
        this.mTempMatrix.mapPoints(fArrCopyOf);
        this.mTempMatrix.mapPoints(cornersFromRect);
        RectF rectFTrapToRect = RectUtils.trapToRect(fArrCopyOf);
        RectF rectFTrapToRect2 = RectUtils.trapToRect(cornersFromRect);
        float f = rectFTrapToRect.left - rectFTrapToRect2.left;
        float f2 = rectFTrapToRect.top - rectFTrapToRect2.top;
        float f3 = rectFTrapToRect.right - rectFTrapToRect2.right;
        float f4 = rectFTrapToRect.bottom - rectFTrapToRect2.bottom;
        float[] fArr2 = new float[4];
        if (f <= 0.0f) {
            f = 0.0f;
        }
        fArr2[0] = f;
        if (f2 <= 0.0f) {
            f2 = 0.0f;
        }
        fArr2[1] = f2;
        if (f3 >= 0.0f) {
            f3 = 0.0f;
        }
        fArr2[2] = f3;
        if (f4 >= 0.0f) {
            f4 = 0.0f;
        }
        fArr2[3] = f4;
        this.mTempMatrix.reset();
        this.mTempMatrix.setRotate(getCurrentAngle());
        this.mTempMatrix.mapPoints(fArr2);
        return fArr2;
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            int i5 = this.mPaddingLeft;
            int i6 = this.mPaddingTop;
            int width = getWidth() - this.mPaddingRight;
            int height = getHeight() - this.mPaddingBottom;
            this.mThisWidth = width - i5;
            this.mThisHeight = height - i6;
            onImageLaidOut();
        }
    }

    @Override // com.narvii.crop.TransformImageView
    protected void onImageLaidOut() {
        super.onImageLaidOut();
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        if (this.mTargetAspectRatio == 0.0f) {
            this.mTargetAspectRatio = intrinsicWidth / intrinsicHeight;
        }
        setupCropBounds();
        setupInitialImagePosition(intrinsicWidth, intrinsicHeight);
        setImageMatrix(this.mCurrentImageMatrix);
        TransformImageView.TransformImageListener transformImageListener = this.mTransformImageListener;
        if (transformImageListener != null) {
            transformImageListener.onScale(getCurrentScale());
            this.mTransformImageListener.onRotate(getCurrentAngle());
        }
    }

    protected boolean isImageWrapCropBounds() {
        return isImageWrapCropBounds(this.mCurrentImageCorners);
    }

    protected boolean isImageWrapCropBounds(float[] fArr) {
        this.mTempMatrix.reset();
        this.mTempMatrix.setRotate(-getCurrentAngle());
        float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
        this.mTempMatrix.mapPoints(fArrCopyOf);
        float[] cornersFromRect = RectUtils.getCornersFromRect(this.mCropRect);
        this.mTempMatrix.mapPoints(cornersFromRect);
        return RectUtils.trapToRect(fArrCopyOf).contains(RectUtils.trapToRect(cornersFromRect));
    }

    protected void zoomImageToPosition(float f, float f2, float f3, long j) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        float currentScale = getCurrentScale();
        ZoomImageToPosition zoomImageToPosition = new ZoomImageToPosition(this, j, currentScale, f - currentScale, f2, f3);
        this.mZoomImageToPositionRunnable = zoomImageToPosition;
        post(zoomImageToPosition);
    }

    private void setupInitialImagePosition(float f, float f2) {
        float fWidth = this.mCropRect.width();
        float fHeight = this.mCropRect.height();
        this.mMinScale = Math.max(fWidth / f, fHeight / f2);
        float f3 = this.mMinScale;
        RectF rectF = this.mCropRect;
        float f4 = ((fWidth - (f * f3)) / 2.0f) + rectF.left;
        float f5 = ((fHeight - (f2 * f3)) / 2.0f) + rectF.top;
        this.mCurrentImageMatrix.reset();
        Matrix matrix = this.mCurrentImageMatrix;
        float f6 = this.mMinScale;
        matrix.postScale(f6, f6);
        this.mCurrentImageMatrix.postTranslate(f4, f5);
        resetScale();
    }

    private void setupCropBounds() {
        int i = this.mThisWidth;
        float f = this.mTargetAspectRatio;
        int i2 = (int) (i / f);
        int i3 = this.mThisHeight;
        if (i2 > i3) {
            int i4 = (i - ((int) (i3 * f))) / 2;
            RectF rectF = this.mCropRect;
            int i5 = this.mPaddingLeft;
            rectF.set(i5 + i4, this.mPaddingTop, i5 + r1 + i4, r6 + i3);
        } else {
            int i6 = (i3 - i2) / 2;
            RectF rectF2 = this.mCropRect;
            int i7 = this.mPaddingLeft;
            int i8 = this.mPaddingTop;
            rectF2.set(i7, i8 + i6, i7 + i, i8 + i2 + i6);
        }
        if (getDrawable() == null) {
            return;
        }
        resetScale();
    }

    public void resetScale() {
        this.mMaxScale = Math.min((this.mCropRect.width() * 1.0f) / (this.mMinCropWidth * 1.0f), (this.mCropRect.height() * 1.0f) / (this.mMinCropHeight * 1.0f));
        if (getDrawable() != null) {
            this.mMinScale = Math.max(((this.hAdjust ? this.mCropRect.height() : this.mCropRect.width()) * 1.0f) / getDrawable().getIntrinsicWidth(), (this.mCropRect.height() * 1.0f) / getDrawable().getIntrinsicHeight());
        }
    }

    private static class WrapCropBoundsRunnable implements Runnable {
        private final float mCenterDiffX;
        private final float mCenterDiffY;
        private final WeakReference<CropImageView> mCropImageView;
        private final float mDeltaScale;
        private final long mDurationMs;
        private final float mOldScale;
        private final float mOldX;
        private final float mOldY;
        private final long mStartTime = System.currentTimeMillis();
        private final boolean mWillBeImageInBoundsAfterTranslate;

        public WrapCropBoundsRunnable(CropImageView cropImageView, long j, float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
            this.mCropImageView = new WeakReference<>(cropImageView);
            this.mDurationMs = j;
            this.mOldX = f;
            this.mOldY = f2;
            this.mCenterDiffX = f3;
            this.mCenterDiffY = f4;
            this.mOldScale = f5;
            this.mDeltaScale = f6;
            this.mWillBeImageInBoundsAfterTranslate = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.mCropImageView.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.mDurationMs, System.currentTimeMillis() - this.mStartTime);
            float fEaseOut = CubicEasing.easeOut(fMin, 0.0f, this.mCenterDiffX, this.mDurationMs);
            float fEaseOut2 = CubicEasing.easeOut(fMin, 0.0f, this.mCenterDiffY, this.mDurationMs);
            float fEaseInOut = CubicEasing.easeInOut(fMin, 0.0f, this.mDeltaScale, this.mDurationMs);
            if (fMin < this.mDurationMs) {
                float[] fArr = cropImageView.mCurrentImageCenter;
                cropImageView.postTranslate(fEaseOut - (fArr[0] - this.mOldX), fEaseOut2 - (fArr[1] - this.mOldY));
                if (!this.mWillBeImageInBoundsAfterTranslate) {
                    cropImageView.zoomInImage(this.mOldScale + fEaseInOut, cropImageView.mCropRect.centerX(), cropImageView.mCropRect.centerY());
                }
                if (cropImageView.isImageWrapCropBounds()) {
                    return;
                }
                cropImageView.post(this);
            }
        }
    }

    private static class ZoomImageToPosition implements Runnable {
        private final WeakReference<CropImageView> mCropImageView;
        private final float mDeltaScale;
        private final float mDestX;
        private final float mDestY;
        private final long mDurationMs;
        private final float mOldScale;
        private final long mStartTime = System.currentTimeMillis();

        public ZoomImageToPosition(CropImageView cropImageView, long j, float f, float f2, float f3, float f4) {
            this.mCropImageView = new WeakReference<>(cropImageView);
            this.mDurationMs = j;
            this.mOldScale = f;
            this.mDeltaScale = f2;
            this.mDestX = f3;
            this.mDestY = f4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.mCropImageView.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.mDurationMs, System.currentTimeMillis() - this.mStartTime);
            float fEaseInOut = CubicEasing.easeInOut(fMin, 0.0f, this.mDeltaScale, this.mDurationMs);
            if (fMin < this.mDurationMs) {
                cropImageView.zoomInImage(this.mOldScale + fEaseInOut, this.mDestX, this.mDestY);
                cropImageView.post(this);
            } else {
                cropImageView.setImageToWrapCropBounds();
            }
        }
    }
}
