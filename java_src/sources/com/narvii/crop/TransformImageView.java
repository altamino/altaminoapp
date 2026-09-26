package com.narvii.crop;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.model.Media;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public class TransformImageView extends NVImageView {
    protected static final int MATRIX_VALUES_COUNT = 9;
    protected static final int RECT_CENTER_POINT_COORDS = 2;
    protected static final int RECT_CORNER_POINTS_COORDS = 8;
    private static final String TAG = "TransformImageView";
    protected final float[] mCurrentImageCenter;
    protected final float[] mCurrentImageCorners;
    protected Matrix mCurrentImageMatrix;
    private Uri mImageUri;
    protected float[] mInitialImageCenter;
    protected float[] mInitialImageCorners;
    private final float[] mMatrixValues;
    private int mMaxBitmapSize;
    protected int mThisHeight;
    protected int mThisWidth;
    protected TransformImageListener mTransformImageListener;

    public interface TransformImageListener {
        void onRotate(float f);

        void onScale(float f);
    }

    public TransformImageView(Context context) {
        this(context, null);
    }

    @Nullable
    public Uri getImageUri() {
        return this.mImageUri;
    }

    public float getMatrixAngle(@NonNull Matrix matrix) {
        return (float) (-(Math.atan2(getMatrixValue(matrix, 1), getMatrixValue(matrix, 0)) * 57.29577951308232d));
    }

    public float getMatrixScale(@NonNull Matrix matrix) {
        return (float) Math.sqrt(Math.pow(getMatrixValue(matrix, 0), 2.0d) + Math.pow(getMatrixValue(matrix, 3), 2.0d));
    }

    public void postRotate(float f, float f6, float f7) {
        if (f != 0.0f) {
            this.mCurrentImageMatrix.postRotate(f, f6, f7);
            setImageMatrix(this.mCurrentImageMatrix);
            TransformImageListener transformImageListener = this.mTransformImageListener;
            if (transformImageListener != null) {
                transformImageListener.onRotate(getMatrixAngle(this.mCurrentImageMatrix));
            }
        }
    }

    public void postScale(float f, float f6, float f7) {
        if (f != 0.0f) {
            this.mCurrentImageMatrix.postScale(f, f, f6, f7);
            setImageMatrix(this.mCurrentImageMatrix);
            TransformImageListener transformImageListener = this.mTransformImageListener;
            if (transformImageListener != null) {
                transformImageListener.onScale(getMatrixScale(this.mCurrentImageMatrix));
            }
        }
    }

    public void postTranslate(float f, float f6) {
        if (f == 0.0f && f6 == 0.0f) {
            return;
        }
        this.mCurrentImageMatrix.postTranslate(f, f6);
        setImageMatrix(this.mCurrentImageMatrix);
    }

    protected void printMatrix(@NonNull String str, @NonNull Matrix matrix) {
        Log.d(TAG, str + ": matrix: { x: " + getMatrixValue(matrix, 2) + ", y: " + getMatrixValue(matrix, 5) + ", scale: " + getMatrixScale(matrix) + ", angle: " + getMatrixAngle(matrix) + " }");
    }

    public void setMaxBitmapSize(int i10) {
        this.mMaxBitmapSize = i10;
    }

    public void setTransformImageListener(TransformImageListener transformImageListener) {
        this.mTransformImageListener = transformImageListener;
    }

    public TransformImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void updateCurrentImagePoints() {
        float[] fArr;
        float[] fArr2 = this.mCurrentImageCorners;
        if (fArr2 == null || (fArr = this.mInitialImageCorners) == null) {
            return;
        }
        this.mCurrentImageMatrix.mapPoints(fArr2, fArr);
        this.mCurrentImageMatrix.mapPoints(this.mCurrentImageCenter, this.mInitialImageCenter);
    }

    public float getCurrentAngle() {
        return getMatrixAngle(this.mCurrentImageMatrix);
    }

    public float getCurrentScale() {
        return getMatrixScale(this.mCurrentImageMatrix);
    }

    protected float getMatrixValue(@NonNull Matrix matrix, @IntRange int i10) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[i10];
    }

    public int getMaxBitmapSize() {
        if (this.mMaxBitmapSize <= 0) {
            this.mMaxBitmapSize = calculateMaxBitmapSize();
        }
        return this.mMaxBitmapSize;
    }

    protected void init() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void setCurrentMatrix(Matrix matrix) {
        if (matrix == null) {
            return;
        }
        this.mCurrentImageMatrix = matrix;
        setImageMatrix(matrix);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w(TAG, "Invalid ScaleType. Only ScaleType.MATRIX can be used");
        }
    }

    public TransformImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mCurrentImageCorners = new float[8];
        this.mCurrentImageCenter = new float[2];
        this.mMatrixValues = new float[9];
        this.mCurrentImageMatrix = new Matrix();
        this.mMaxBitmapSize = 0;
        init();
    }

    protected int calculateMaxBitmapSize() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return (int) Math.sqrt(Math.pow(point.x, 2.0d) + Math.pow(point.y, 2.0d));
    }

    @Override // com.narvii.widget.NVImageView
    protected void dispatchImageChanged(int i10, Media media) {
        super.dispatchImageChanged(i10, media);
        onImageLaidOut();
    }

    protected void onImageLaidOut() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        Log.d(TAG, String.format("Image size: [%d:%d]", Integer.valueOf((int) intrinsicWidth), Integer.valueOf((int) intrinsicHeight)));
        RectF rectF = new RectF(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        this.mInitialImageCorners = RectUtils.getCornersFromRect(rectF);
        this.mInitialImageCenter = RectUtils.getCenterFromRect(rectF);
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        updateCurrentImagePoints();
    }
}
