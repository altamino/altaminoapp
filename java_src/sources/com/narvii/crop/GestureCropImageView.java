package com.narvii.crop;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/* JADX INFO: loaded from: classes6.dex */
public class GestureCropImageView extends CropImageView {
    private static final int DOUBLE_TAP_ZOOM_DURATION = 200;
    private int mDoubleTapScaleSteps;
    private GestureDetector mGestureDetector;
    private boolean mIsRotateEnabled;
    private boolean mIsScaleEnabled;
    private float mMidPntX;
    private float mMidPntY;
    OnScaleUpListener mOnScaleUpListener;
    private ScaleGestureDetector mScaleDetector;

    private class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            GestureCropImageView gestureCropImageView = GestureCropImageView.this;
            gestureCropImageView.zoomImageToPosition(gestureCropImageView.getDoubleTapTargetScale(), motionEvent.getX(), motionEvent.getY(), 200L);
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
            GestureCropImageView.this.postTranslate(-f, -f6);
            return true;
        }
    }

    interface OnScaleUpListener {
        void onChangeImageWidth(int i10);
    }

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            GestureCropImageView.this.postScale(scaleGestureDetector.getScaleFactor(), GestureCropImageView.this.mMidPntX, GestureCropImageView.this.mMidPntY);
            return true;
        }
    }

    public GestureCropImageView(Context context) {
        super(context);
        this.mIsRotateEnabled = false;
        this.mIsScaleEnabled = true;
        this.mDoubleTapScaleSteps = 5;
    }

    public int getDoubleTapScaleSteps() {
        return this.mDoubleTapScaleSteps;
    }

    public boolean isRotateEnabled() {
        return this.mIsRotateEnabled;
    }

    public boolean isScaleEnabled() {
        return this.mIsScaleEnabled;
    }

    public void setDoubleTapScaleSteps(int i10) {
        this.mDoubleTapScaleSteps = i10;
    }

    public void setOnScaleUpListener(OnScaleUpListener onScaleUpListener) {
        this.mOnScaleUpListener = onScaleUpListener;
    }

    public void setRotateEnabled(boolean z6) {
        this.mIsRotateEnabled = z6;
    }

    public void setScaleEnabled(boolean z6) {
        this.mIsScaleEnabled = z6;
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupGestureListeners() {
        this.mGestureDetector = new GestureDetector(getContext(), new GestureListener(), null, true);
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
    }

    public GestureCropImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mIsRotateEnabled = false;
        this.mIsScaleEnabled = true;
        this.mDoubleTapScaleSteps = 5;
    }

    protected float getDoubleTapTargetScale() {
        return getCurrentScale() * ((float) Math.pow(getMaxScale() / getMinScale(), 1.0f / this.mDoubleTapScaleSteps));
    }

    @Override // com.narvii.crop.TransformImageView
    protected void init() {
        super.init();
        setupGestureListeners();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getDrawable() == null) {
            return true;
        }
        if ((motionEvent.getAction() & 255) == 0) {
            cancelAllAnimations();
        }
        if (motionEvent.getPointerCount() > 1) {
            this.mMidPntX = (motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f;
            this.mMidPntY = (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f;
        }
        this.mGestureDetector.onTouchEvent(motionEvent);
        if (this.mIsScaleEnabled) {
            this.mScaleDetector.onTouchEvent(motionEvent);
        }
        if ((motionEvent.getAction() & 255) == 1) {
            if (!this.hAdjust) {
                setImageToWrapCropBounds();
            } else if (this.mOnScaleUpListener != null) {
                RectF rectFTrapToRect = RectUtils.trapToRect(this.mCurrentImageCorners);
                if (rectFTrapToRect.isEmpty()) {
                    setImageToWrapCropBounds();
                    return true;
                }
                this.mOnScaleUpListener.onChangeImageWidth((int) (rectFTrapToRect.right - rectFTrapToRect.left));
            }
        }
        return true;
    }
}
