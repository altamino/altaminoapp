package com.narvii.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.narvii.app.NVContext;
import com.narvii.theme.ThemeImage;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
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

        public WrapCropBoundsRunnable(CropImageView cropImageView, long j6, float f, float f6, float f7, float f10, float f11, float f12, boolean z6) {
            this.mCropImageView = new WeakReference<>(cropImageView);
            this.mDurationMs = j6;
            this.mOldX = f;
            this.mOldY = f6;
            this.mCenterDiffX = f7;
            this.mCenterDiffY = f10;
            this.mOldScale = f11;
            this.mDeltaScale = f12;
            this.mWillBeImageInBoundsAfterTranslate = z6;
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

        @Override // java.lang.Runnable
        public void run() {
            CropImageView cropImageView = this.mCropImageView.get();
            if (cropImageView == null) {
                return;
            }
            float fMin = Math.min(this.mDurationMs, System.currentTimeMillis() - this.mStartTime);
            float fEaseInOut = CubicEasing.easeInOut(fMin, 0.0f, this.mDeltaScale, this.mDurationMs);
            if (fMin >= this.mDurationMs) {
                cropImageView.setImageToWrapCropBounds();
            } else {
                cropImageView.zoomInImage(this.mOldScale + fEaseInOut, this.mDestX, this.mDestY);
                cropImageView.post(this);
            }
        }

        public ZoomImageToPosition(CropImageView cropImageView, long j6, float f, float f6, float f7, float f10) {
            this.mCropImageView = new WeakReference<>(cropImageView);
            this.mDurationMs = j6;
            this.mOldScale = f;
            this.mDeltaScale = f6;
            this.mDestX = f7;
            this.mDestY = f10;
        }
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    @Nullable
    public Bitmap cropImage() {
        return null;
    }

    @Nullable
    public CropBoundsChangeListener getCropBoundsChangeListener() {
        return this.mCropBoundsChangeListener;
    }

    public RectF getCropRect() {
        return this.mCropRect;
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

    protected boolean isImageWrapCropBounds() {
        return isImageWrapCropBounds(this.mCurrentImageCorners);
    }

    public void setCropBoundsChangeListener(@Nullable CropBoundsChangeListener cropBoundsChangeListener) {
        this.mCropBoundsChangeListener = cropBoundsChangeListener;
    }

    public void setCropRect(RectF rectF) {
        this.mCropRect = rectF;
    }

    public void setImageToWrapCropBounds() {
        setImageToWrapCropBounds(true);
    }

    public void setMaxResultImageSizeX(@IntRange int i10) {
        this.mMaxResultImageSizeX = i10;
    }

    public void setMaxResultImageSizeY(@IntRange int i10) {
        this.mMaxResultImageSizeY = i10;
    }

    public void setMaxScaleMultiplier(float f) {
        this.mMaxScaleMultiplier = f;
    }

    public void setMinCropHeight(int i10) {
        this.mMinCropHeight = i10;
    }

    public void setMinCropWidth(int i10) {
        this.mMinCropWidth = i10;
    }

    public void sethAdjust(boolean z6) {
        this.hAdjust = z6;
    }

    public void zoomInImage(float f) {
        zoomInImage(f, this.mCropRect.centerX(), this.mCropRect.centerY());
    }

    public void zoomOutImage(float f) {
        zoomOutImage(f, this.mCropRect.centerX(), this.mCropRect.centerY());
    }

    public CropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
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
        float f6 = rectFTrapToRect.top - rectFTrapToRect2.top;
        float f7 = rectFTrapToRect.right - rectFTrapToRect2.right;
        float f10 = rectFTrapToRect.bottom - rectFTrapToRect2.bottom;
        float[] fArr2 = new float[4];
        if (f <= 0.0f) {
            f = 0.0f;
        }
        fArr2[0] = f;
        if (f6 <= 0.0f) {
            f6 = 0.0f;
        }
        fArr2[1] = f6;
        if (f7 >= 0.0f) {
            f7 = 0.0f;
        }
        fArr2[2] = f7;
        if (f10 >= 0.0f) {
            f10 = 0.0f;
        }
        fArr2[3] = f10;
        this.mTempMatrix.reset();
        this.mTempMatrix.setRotate(getCurrentAngle());
        this.mTempMatrix.mapPoints(fArr2);
        return fArr2;
    }

    private void setupCropBounds() {
        int i10 = this.mThisWidth;
        float f = this.mTargetAspectRatio;
        int i11 = (int) (i10 / f);
        int i12 = this.mThisHeight;
        if (i11 > i12) {
            int i13 = (int) (i12 * f);
            int i14 = (i10 - i13) / 2;
            RectF rectF = this.mCropRect;
            int i15 = this.mPaddingLeft;
            int i16 = this.mPaddingTop;
            rectF.set(i15 + i14, i16, i15 + i13 + i14, i16 + i12);
        } else {
            int i17 = (i12 - i11) / 2;
            RectF rectF2 = this.mCropRect;
            int i18 = this.mPaddingLeft;
            int i19 = this.mPaddingTop;
            rectF2.set(i18, i19 + i17, i18 + i10, i19 + i11 + i17);
        }
        if (getDrawable() == null) {
            return;
        }
        resetScale();
    }

    private void setupInitialImagePosition(float f, float f6) {
        float fWidth = this.mCropRect.width();
        float fHeight = this.mCropRect.height();
        float fMax = Math.max(fWidth / f, fHeight / f6);
        this.mMinScale = fMax;
        RectF rectF = this.mCropRect;
        float f7 = ((fWidth - (f * fMax)) / 2.0f) + rectF.left;
        float f10 = ((fHeight - (f6 * fMax)) / 2.0f) + rectF.top;
        this.mCurrentImageMatrix.reset();
        Matrix matrix = this.mCurrentImageMatrix;
        float f11 = this.mMinScale;
        matrix.postScale(f11, f11);
        this.mCurrentImageMatrix.postTranslate(f7, f10);
        resetScale();
    }

    public void cancelAllAnimations() {
        removeCallbacks(this.mWrapCropBoundsRunnable);
        removeCallbacks(this.mZoomImageToPositionRunnable);
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

    public void postRotate(float f) {
        postRotate(f, this.mCropRect.centerX(), this.mCropRect.centerY());
    }

    @Override // com.narvii.crop.TransformImageView
    public void postScale(float f, float f6, float f7) {
        if (f > 1.0f && getCurrentScale() * f <= getMaxScale()) {
            super.postScale(f, f6, f7);
        } else {
            if (f >= 1.0f || getCurrentScale() * f < getMinScale()) {
                return;
            }
            super.postScale(f, f6, f7);
        }
    }

    public void resetScale() {
        this.mMaxScale = Math.min((this.mCropRect.width() * 1.0f) / (this.mMinCropWidth * 1.0f), (this.mCropRect.height() * 1.0f) / (this.mMinCropHeight * 1.0f));
        if (getDrawable() != null) {
            this.mMinScale = Math.max(((this.hAdjust ? this.mCropRect.height() : this.mCropRect.width()) * 1.0f) / getDrawable().getIntrinsicWidth(), (this.mCropRect.height() * 1.0f) / getDrawable().getIntrinsicHeight());
        }
    }

    public void setCustomPadding(int i10, int i11, int i12, int i13) {
        this.mPaddingLeft = i10;
        this.mPaddingTop = i11;
        this.mPaddingRight = i12;
        this.mPaddingBottom = i13;
        setupCropBounds();
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
        for (int i10 = 0; i10 < 8; i10++) {
            try {
                this.mCurrentImageCorners[i10] = fArr[i10];
            } catch (Exception unused) {
            }
        }
        invalidate();
    }

    public void setImageToWrapCropBounds(boolean z6) {
        float f;
        float fMax;
        float f6;
        if (isImageWrapCropBounds()) {
            return;
        }
        float[] fArr = this.mCurrentImageCenter;
        float f7 = fArr[0];
        float f10 = fArr[1];
        float currentScale = getCurrentScale();
        float fCenterX = this.mCropRect.centerX() - f7;
        float fCenterY = this.mCropRect.centerY() - f10;
        this.mTempMatrix.reset();
        this.mTempMatrix.setTranslate(fCenterX, fCenterY);
        float[] fArr2 = this.mCurrentImageCorners;
        float[] fArrCopyOf = Arrays.copyOf(fArr2, fArr2.length);
        this.mTempMatrix.mapPoints(fArrCopyOf);
        boolean zIsImageWrapCropBounds = isImageWrapCropBounds(fArrCopyOf);
        if (zIsImageWrapCropBounds) {
            float[] fArrCalculateImageIndents = calculateImageIndents();
            float f11 = -(fArrCalculateImageIndents[0] + fArrCalculateImageIndents[2]);
            f6 = -(fArrCalculateImageIndents[1] + fArrCalculateImageIndents[3]);
            f = f11;
            fMax = 0.0f;
        } else {
            RectF rectF = new RectF(this.mCropRect);
            this.mTempMatrix.reset();
            this.mTempMatrix.setRotate(getCurrentAngle());
            this.mTempMatrix.mapRect(rectF);
            float[] rectSidesFromCorners = RectUtils.getRectSidesFromCorners(this.mCurrentImageCorners);
            f = fCenterX;
            fMax = (((float) (((double) Math.max(rectF.width() / rectSidesFromCorners[0], rectF.height() / rectSidesFromCorners[1])) * 1.01d)) * currentScale) - currentScale;
            f6 = fCenterY;
        }
        if (z6) {
            WrapCropBoundsRunnable wrapCropBoundsRunnable = new WrapCropBoundsRunnable(this, this.mImageToWrapCropBoundsAnimDuration, f7, f10, f, f6, currentScale, fMax, zIsImageWrapCropBounds);
            this.mWrapCropBoundsRunnable = wrapCropBoundsRunnable;
            post(wrapCropBoundsRunnable);
        } else {
            postTranslate(f, f6);
            if (zIsImageWrapCropBounds) {
                return;
            }
            zoomInImage(currentScale + fMax, this.mCropRect.centerX(), this.mCropRect.centerY());
        }
    }

    public void setImageToWrapCropBoundsAnimDuration(@IntRange long j6) {
        if (j6 <= 0) {
            throw new IllegalArgumentException("Animation duration cannot be negative value.");
        }
        this.mImageToWrapCropBoundsAnimDuration = j6;
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
        for (int i10 = 0; i10 < 8; i10++) {
            try {
                this.mInitialImageCorners[i10] = fArr[i10];
            } catch (Exception unused) {
            }
        }
        invalidate();
    }

    public void zoomInImage(float f, float f6, float f7) {
        if (f <= getMaxScale()) {
            postScale(f / getCurrentScale(), f6, f7);
        }
    }

    public void zoomOutImage(float f, float f6, float f7) {
        if (f >= getMinScale()) {
            postScale(f / getCurrentScale(), f6, f7);
        }
    }

    public CropImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.hAdjust = false;
        this.mCropRect = new RectF();
        this.mTempMatrix = new Matrix();
        this.mMaxScaleMultiplier = 10.0f;
        this.mZoomImageToPositionRunnable = null;
        this.mMaxResultImageSizeX = 0;
        this.mMaxResultImageSizeY = 0;
        this.mImageToWrapCropBoundsAnimDuration = 500L;
    }

    public Bitmap getBitmap() {
        if (getDrawable() instanceof BitmapDrawable) {
            return ((BitmapDrawable) getDrawable()).getBitmap();
        }
        return null;
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
        RectF rectF = this.mCropRect;
        float f = (rectF.top - rectFTrapToRect.top) / currentScale;
        if (f < 0.0f) {
            f = 0.0f;
        }
        float f6 = (rectF.left - rectFTrapToRect.left) / currentScale;
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        float fWidth = rectF.width() / currentScale;
        float fHeight = this.mCropRect.height() / currentScale;
        ThemeImage themeImage = new ThemeImage();
        themeImage.f2753x = f6;
        themeImage.f2754y = f;
        float[] fArr = new float[9];
        themeImage.imageMatrix = fArr;
        this.mCurrentImageMatrix.getValues(fArr);
        themeImage.width = fWidth;
        int i10 = this.mMinCropWidth;
        if (fWidth < i10) {
            themeImage.width = i10;
        }
        if (themeImage.f2753x + themeImage.width > getDrawable().getIntrinsicWidth()) {
            themeImage.f2753x = getDrawable().getIntrinsicWidth() - themeImage.width;
        }
        if (themeImage.f2753x < 0.0f) {
            themeImage.f2753x = 0.0f;
            themeImage.width = getDrawable().getIntrinsicWidth();
        }
        themeImage.height = fHeight;
        int i11 = this.mMinCropHeight;
        if (fHeight < i11) {
            themeImage.height = i11;
        }
        if (themeImage.f2754y + themeImage.height > getDrawable().getIntrinsicHeight()) {
            themeImage.f2754y = getDrawable().getIntrinsicHeight() - themeImage.height;
        }
        if (themeImage.f2754y < 0.0f) {
            themeImage.f2754y = 0.0f;
            themeImage.height = getDrawable().getIntrinsicHeight();
        }
        themeImage.path = this.imageUrl;
        Log.d("crop_result", themeImage.toString());
        return themeImage;
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

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        if (z6) {
            int i14 = this.mPaddingLeft;
            int i15 = this.mPaddingTop;
            int width = getWidth() - this.mPaddingRight;
            int height = getHeight() - this.mPaddingBottom;
            this.mThisWidth = width - i14;
            this.mThisHeight = height - i15;
            onImageLaidOut();
        }
    }

    public void setTargetAspectRatio(float f) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            this.mTargetAspectRatio = f;
            return;
        }
        if (f == 0.0f) {
            this.mTargetAspectRatio = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        } else {
            this.mTargetAspectRatio = f;
        }
        setupCropBounds();
    }

    protected void zoomImageToPosition(float f, float f6, float f7, long j6) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        float currentScale = getCurrentScale();
        ZoomImageToPosition zoomImageToPosition = new ZoomImageToPosition(this, j6, currentScale, f - currentScale, f6, f7);
        this.mZoomImageToPositionRunnable = zoomImageToPosition;
        post(zoomImageToPosition);
    }
}
