package com.plattysoft.leonids;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.plattysoft.leonids.modifiers.ParticleModifier;
import java.util.List;

/* loaded from: classes3.dex */
public class Particle {
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
    private List<ParticleModifier> mModifiers;
    public final Paint mPaint;
    private float mRotation;
    public float mRotationSpeed;
    public float mScale;
    public float mSpeedX;
    public float mSpeedY;
    protected long mStartingMilisecond;
    private long mTimeToLive;

    protected Particle() {
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mInitialRotation = 0.0f;
        this.mRotationSpeed = 0.0f;
        this.mSpeedX = 0.0f;
        this.mSpeedY = 0.0f;
        this.mMatrix = new Matrix();
        this.mPaint = new Paint();
    }

    public Particle(Bitmap bitmap) {
        this();
        this.mImage = bitmap;
    }

    public void init() {
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mHidden = false;
    }

    public void configure(long j, float f, float f2) {
        this.mBitmapHalfWidth = this.mImage.getWidth() / 2;
        this.mBitmapHalfHeight = this.mImage.getHeight() / 2;
        this.mInitialX = f - this.mBitmapHalfWidth;
        this.mInitialY = f2 - this.mBitmapHalfHeight;
        this.mCurrentX = this.mInitialX;
        this.mCurrentY = this.mInitialY;
        this.mTimeToLive = j;
    }

    public boolean update(long j) {
        long j2 = j - this.mStartingMilisecond;
        if (j2 > this.mTimeToLive) {
            return false;
        }
        float f = j2;
        this.mCurrentX = this.mInitialX + (this.mSpeedX * f) + (this.mAccelerationX * f * f);
        this.mCurrentY = this.mInitialY + (this.mSpeedY * f) + (this.mAccelerationY * f * f);
        this.mRotation = this.mInitialRotation + ((this.mRotationSpeed * f) / 1000.0f);
        for (int i = 0; i < this.mModifiers.size(); i++) {
            this.mModifiers.get(i).apply(this, j2);
        }
        return true;
    }

    public void draw(Canvas canvas) {
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

    public Particle activate(long j, List<ParticleModifier> list) {
        this.mStartingMilisecond = j;
        this.mModifiers = list;
        return this;
    }
}
