package com.plattysoft.leonids;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public float mAccelerationX;
    public float mAccelerationY;
    public int mAlpha;
    private int mBitmapHalfHeight;
    private int mBitmapHalfWidth;
    public float mCurrentX;
    public float mCurrentY;
    public boolean mHidden;
    protected Bitmap mImage;
    public float mInitialRotation;
    private float mInitialX;
    private float mInitialY;
    private Matrix mMatrix;
    private List<b6.b> mModifiers;
    public final Paint mPaint;
    private float mRotation;
    public float mRotationSpeed;
    public float mScale;
    public float mSpeedX;
    public float mSpeedY;
    protected long mStartingMilisecond;
    private long mTimeToLive;

    protected b() {
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mInitialRotation = 0.0f;
        this.mRotationSpeed = 0.0f;
        this.mSpeedX = 0.0f;
        this.mSpeedY = 0.0f;
        this.mMatrix = new Matrix();
        this.mPaint = new Paint();
    }

    public b a(long j6, List<b6.b> list) {
        this.mStartingMilisecond = j6;
        this.mModifiers = list;
        return this;
    }

    public void d() {
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mHidden = false;
    }

    public void b(long j6, float f, float f6) {
        this.mBitmapHalfWidth = this.mImage.getWidth() / 2;
        int height = this.mImage.getHeight() / 2;
        this.mBitmapHalfHeight = height;
        float f7 = f - this.mBitmapHalfWidth;
        this.mInitialX = f7;
        float f10 = f6 - height;
        this.mInitialY = f10;
        this.mCurrentX = f7;
        this.mCurrentY = f10;
        this.mTimeToLive = j6;
    }

    public void c(Canvas canvas) {
        if (this.mHidden || this.mAlpha <= 0) {
            return;
        }
        this.mMatrix.reset();
        this.mMatrix.postRotate(this.mRotation, this.mBitmapHalfWidth, this.mBitmapHalfHeight);
        Matrix matrix = this.mMatrix;
        float f = this.mScale;
        matrix.postScale(f, f, this.mBitmapHalfWidth, this.mBitmapHalfHeight);
        this.mMatrix.postTranslate(this.mCurrentX, this.mCurrentY);
        this.mPaint.setAlpha(this.mAlpha);
        canvas.drawBitmap(this.mImage, this.mMatrix, this.mPaint);
    }

    public boolean e(long j6) {
        long j10 = j6 - this.mStartingMilisecond;
        if (j10 > this.mTimeToLive) {
            return false;
        }
        float f = j10;
        this.mCurrentX = this.mInitialX + (this.mSpeedX * f) + (this.mAccelerationX * f * f);
        this.mCurrentY = this.mInitialY + (this.mSpeedY * f) + (this.mAccelerationY * f * f);
        this.mRotation = this.mInitialRotation + ((this.mRotationSpeed * f) / 1000.0f);
        for (int i10 = 0; i10 < this.mModifiers.size(); i10++) {
            this.mModifiers.get(i10).apply(this, j10);
        }
        return true;
    }

    public b(Bitmap bitmap) {
        this();
        this.mImage = bitmap;
    }
}
