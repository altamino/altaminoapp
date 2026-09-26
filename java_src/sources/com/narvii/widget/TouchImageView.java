package com.narvii.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes7.dex */
public class TouchImageView extends FullsizeImageView {
    private static final String DEBUG = "DEBUG";
    private static final float SUPER_MAX_MULTIPLIER = 1.25f;
    private static final float SUPER_MIN_MULTIPLIER = 0.75f;
    private Context context;
    private ZoomVariables delayedZoomVariables;
    private GestureDetector.OnDoubleTapListener doubleTapListener;
    private Fling fling;
    private boolean imageRenderedAtLeastOnce;
    private float[] m;
    private GestureDetector mGestureDetector;
    private ScaleGestureDetector mScaleDetector;
    private ImageView.ScaleType mScaleType;
    private float matchViewHeight;
    private float matchViewWidth;
    private Matrix matrix;
    private float maxScale;
    private float minScale;
    private float normalizedScale;
    private boolean onDrawReady;
    private float prevMatchViewHeight;
    private float prevMatchViewWidth;
    private Matrix prevMatrix;
    private int prevViewHeight;
    private int prevViewWidth;
    private State state;
    private float superMaxScale;
    private float superMinScale;
    private OnTouchImageViewListener touchImageViewListener;
    private View.OnTouchListener userTouchListener;
    private int viewHeight;
    private int viewWidth;
    private boolean zoomDisabled;

    @TargetApi(9)
    private class CompatScroller {
        boolean isPreGingerbread = false;
        OverScroller overScroller;
        Scroller scroller;

        public void fling(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (this.isPreGingerbread) {
                this.scroller.fling(i10, i11, i12, i13, i14, i15, i16, i17);
            } else {
                this.overScroller.fling(i10, i11, i12, i13, i14, i15, i16, i17);
            }
        }

        public CompatScroller(Context context) {
            this.overScroller = new OverScroller(context);
        }

        public boolean computeScrollOffset() {
            if (this.isPreGingerbread) {
                return this.scroller.computeScrollOffset();
            }
            this.overScroller.computeScrollOffset();
            return this.overScroller.computeScrollOffset();
        }

        public void forceFinished(boolean z6) {
            if (this.isPreGingerbread) {
                this.scroller.forceFinished(z6);
            } else {
                this.overScroller.forceFinished(z6);
            }
        }

        public int getCurrX() {
            return this.isPreGingerbread ? this.scroller.getCurrX() : this.overScroller.getCurrX();
        }

        public int getCurrY() {
            return this.isPreGingerbread ? this.scroller.getCurrY() : this.overScroller.getCurrY();
        }

        public boolean isFinished() {
            return this.isPreGingerbread ? this.scroller.isFinished() : this.overScroller.isFinished();
        }
    }

    private class DoubleTapZoom implements Runnable {
        private static final float ZOOM_TIME = 500.0f;
        private float bitmapX;
        private float bitmapY;
        private PointF endTouch;
        private AccelerateDecelerateInterpolator interpolator = new AccelerateDecelerateInterpolator();
        private long startTime;
        private PointF startTouch;
        private float startZoom;
        private boolean stretchImageToSuper;
        private float targetZoom;

        DoubleTapZoom(float f, float f6, float f7, boolean z6) {
            TouchImageView.this.setState(State.ANIMATE_ZOOM);
            this.startTime = System.currentTimeMillis();
            this.startZoom = TouchImageView.this.normalizedScale;
            this.targetZoom = f;
            this.stretchImageToSuper = z6;
            PointF pointFTransformCoordTouchToBitmap = TouchImageView.this.transformCoordTouchToBitmap(f6, f7, false);
            float f10 = pointFTransformCoordTouchToBitmap.x;
            this.bitmapX = f10;
            float f11 = pointFTransformCoordTouchToBitmap.y;
            this.bitmapY = f11;
            this.startTouch = TouchImageView.this.transformCoordBitmapToTouch(f10, f11);
            this.endTouch = new PointF(TouchImageView.this.viewWidth / 2, TouchImageView.this.viewHeight / 2);
        }

        private double calculateDeltaScale(float f) {
            float f6 = this.startZoom;
            return ((double) (f6 + (f * (this.targetZoom - f6)))) / ((double) TouchImageView.this.normalizedScale);
        }

        private void translateImageToCenterTouchPosition(float f) {
            PointF pointF = this.startTouch;
            float f6 = pointF.x;
            PointF pointF2 = this.endTouch;
            float f7 = f6 + ((pointF2.x - f6) * f);
            float f10 = pointF.y;
            float f11 = f10 + (f * (pointF2.y - f10));
            PointF pointFTransformCoordBitmapToTouch = TouchImageView.this.transformCoordBitmapToTouch(this.bitmapX, this.bitmapY);
            TouchImageView.this.matrix.postTranslate(f7 - pointFTransformCoordBitmapToTouch.x, f11 - pointFTransformCoordBitmapToTouch.y);
        }

        private float interpolate() {
            return this.interpolator.getInterpolation(Math.min(1.0f, (System.currentTimeMillis() - this.startTime) / ZOOM_TIME));
        }

        @Override // java.lang.Runnable
        public void run() {
            float fInterpolate = interpolate();
            TouchImageView.this.scaleImage(calculateDeltaScale(fInterpolate), this.bitmapX, this.bitmapY, this.stretchImageToSuper);
            translateImageToCenterTouchPosition(fInterpolate);
            TouchImageView.this.fixScaleTrans();
            TouchImageView touchImageView = TouchImageView.this;
            touchImageView.setImageMatrix(touchImageView.matrix);
            if (TouchImageView.this.touchImageViewListener != null) {
                TouchImageView.this.touchImageViewListener.onMove();
            }
            if (fInterpolate < 1.0f) {
                TouchImageView.this.compatPostOnAnimation(this);
            } else {
                TouchImageView.this.setState(State.NONE);
            }
        }
    }

    private class Fling implements Runnable {
        int currX;
        int currY;
        CompatScroller scroller;

        Fling(int i10, int i11) {
            int imageWidth;
            int i12;
            int imageHeight;
            int i13;
            TouchImageView.this.setState(State.FLING);
            this.scroller = TouchImageView.this.new CompatScroller(TouchImageView.this.context);
            TouchImageView.this.matrix.getValues(TouchImageView.this.m);
            int i14 = (int) TouchImageView.this.m[2];
            int i15 = (int) TouchImageView.this.m[5];
            if (TouchImageView.this.getImageWidth() > TouchImageView.this.viewWidth) {
                imageWidth = TouchImageView.this.viewWidth - ((int) TouchImageView.this.getImageWidth());
                i12 = 0;
            } else {
                imageWidth = i14;
                i12 = imageWidth;
            }
            if (TouchImageView.this.getImageHeight() > TouchImageView.this.viewHeight) {
                imageHeight = TouchImageView.this.viewHeight - ((int) TouchImageView.this.getImageHeight());
                i13 = 0;
            } else {
                imageHeight = i15;
                i13 = imageHeight;
            }
            this.scroller.fling(i14, i15, i10, i11, imageWidth, i12, imageHeight, i13);
            this.currX = i14;
            this.currY = i15;
        }

        public void cancelFling() {
            if (this.scroller != null) {
                TouchImageView.this.setState(State.NONE);
                this.scroller.forceFinished(true);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TouchImageView.this.touchImageViewListener != null) {
                TouchImageView.this.touchImageViewListener.onMove();
            }
            if (this.scroller.isFinished()) {
                this.scroller = null;
                return;
            }
            if (this.scroller.computeScrollOffset()) {
                int currX = this.scroller.getCurrX();
                int currY = this.scroller.getCurrY();
                int i10 = currX - this.currX;
                int i11 = currY - this.currY;
                this.currX = currX;
                this.currY = currY;
                TouchImageView.this.matrix.postTranslate(i10, i11);
                TouchImageView.this.fixTrans();
                TouchImageView touchImageView = TouchImageView.this;
                touchImageView.setImageMatrix(touchImageView.matrix);
                TouchImageView.this.compatPostOnAnimation(this);
            }
        }
    }

    private class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            boolean zOnDoubleTap = TouchImageView.this.doubleTapListener != null ? TouchImageView.this.doubleTapListener.onDoubleTap(motionEvent) : false;
            if (TouchImageView.this.state != State.NONE) {
                return zOnDoubleTap;
            }
            TouchImageView.this.compatPostOnAnimation(TouchImageView.this.new DoubleTapZoom(TouchImageView.this.normalizedScale == TouchImageView.this.minScale ? TouchImageView.this.maxScale : TouchImageView.this.minScale, motionEvent.getX(), motionEvent.getY(), false));
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            if (TouchImageView.this.doubleTapListener != null) {
                return TouchImageView.this.doubleTapListener.onDoubleTapEvent(motionEvent);
            }
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
            if (TouchImageView.this.fling != null) {
                TouchImageView.this.fling.cancelFling();
            }
            TouchImageView touchImageView = TouchImageView.this;
            touchImageView.fling = touchImageView.new Fling((int) f, (int) f6);
            TouchImageView touchImageView2 = TouchImageView.this;
            touchImageView2.compatPostOnAnimation(touchImageView2.fling);
            return super.onFling(motionEvent, motionEvent2, f, f6);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            TouchImageView.this.performLongClick();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return TouchImageView.this.doubleTapListener != null ? TouchImageView.this.doubleTapListener.onSingleTapConfirmed(motionEvent) : TouchImageView.this.performClick();
        }
    }

    public interface OnTouchImageViewListener {
        void onMove();
    }

    private class PrivateOnTouchListener implements View.OnTouchListener {
        private PointF last;

        private PrivateOnTouchListener() {
            this.last = new PointF();
        }

        /* JADX WARN: Code duplicated, block: B:23:0x00a7  */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (TouchImageView.this.zoomDisabled) {
                return false;
            }
            TouchImageView.this.mScaleDetector.onTouchEvent(motionEvent);
            TouchImageView.this.mGestureDetector.onTouchEvent(motionEvent);
            PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
            State state = TouchImageView.this.state;
            State state2 = State.NONE;
            if (state == state2 || TouchImageView.this.state == State.DRAG || TouchImageView.this.state == State.FLING) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.last.set(pointF);
                    if (TouchImageView.this.fling != null) {
                        TouchImageView.this.fling.cancelFling();
                    }
                    TouchImageView.this.setState(State.DRAG);
                } else if (action == 1) {
                    TouchImageView.this.setState(state2);
                } else if (action != 2) {
                    if (action == 6) {
                        TouchImageView.this.setState(state2);
                    }
                } else if (TouchImageView.this.state == State.DRAG) {
                    float f = pointF.x;
                    PointF pointF2 = this.last;
                    float f6 = f - pointF2.x;
                    float f7 = pointF.y - pointF2.y;
                    TouchImageView touchImageView = TouchImageView.this;
                    float fixDragTrans = touchImageView.getFixDragTrans(f6, touchImageView.viewWidth, TouchImageView.this.getImageWidth());
                    TouchImageView touchImageView2 = TouchImageView.this;
                    TouchImageView.this.matrix.postTranslate(fixDragTrans, touchImageView2.getFixDragTrans(f7, touchImageView2.viewHeight, TouchImageView.this.getImageHeight()));
                    TouchImageView.this.fixTrans();
                    this.last.set(pointF.x, pointF.y);
                }
            }
            TouchImageView touchImageView3 = TouchImageView.this;
            touchImageView3.setImageMatrix(touchImageView3.matrix);
            if (TouchImageView.this.userTouchListener != null) {
                TouchImageView.this.userTouchListener.onTouch(view, motionEvent);
            }
            if (TouchImageView.this.touchImageViewListener != null) {
                TouchImageView.this.touchImageViewListener.onMove();
            }
            return true;
        }
    }

    private class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            TouchImageView.this.scaleImage(scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), true);
            if (TouchImageView.this.touchImageViewListener == null) {
                return true;
            }
            TouchImageView.this.touchImageViewListener.onMove();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            TouchImageView.this.setState(State.ZOOM);
            return true;
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            super.onScaleEnd(scaleGestureDetector);
            TouchImageView.this.setState(State.NONE);
            float f = TouchImageView.this.normalizedScale;
            boolean z6 = true;
            if (TouchImageView.this.normalizedScale > TouchImageView.this.maxScale) {
                f = TouchImageView.this.maxScale;
            } else if (TouchImageView.this.normalizedScale < TouchImageView.this.minScale) {
                f = TouchImageView.this.minScale;
            } else {
                z6 = false;
            }
            float f6 = f;
            if (z6) {
                TouchImageView touchImageView = TouchImageView.this;
                TouchImageView.this.compatPostOnAnimation(touchImageView.new DoubleTapZoom(f6, touchImageView.viewWidth / 2, TouchImageView.this.viewHeight / 2, true));
            }
        }
    }

    private enum State {
        NONE,
        DRAG,
        ZOOM,
        FLING,
        ANIMATE_ZOOM
    }

    private class ZoomVariables {
        public float focusX;
        public float focusY;
        public float scale;
        public ImageView.ScaleType scaleType;

        public ZoomVariables(float f, float f6, float f7, ImageView.ScaleType scaleType) {
            this.scale = f;
            this.focusX = f6;
            this.focusY = f7;
            this.scaleType = scaleType;
        }
    }

    public TouchImageView(Context context) {
        super(context);
        this.doubleTapListener = null;
        this.userTouchListener = null;
        this.touchImageViewListener = null;
        sharedConstructing(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFixDragTrans(float f, float f6, float f7) {
        if (f7 <= f6) {
            return 0.0f;
        }
        return f;
    }

    private float getFixTrans(float f, float f6, float f7) {
        float f10;
        float f11;
        if (f7 <= f6) {
            f11 = f6 - f7;
            f10 = 0.0f;
        } else {
            f10 = f6 - f7;
            f11 = 0.0f;
        }
        if (f < f10) {
            return (-f) + f10;
        }
        if (f > f11) {
            return (-f) + f11;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getImageHeight() {
        return this.matchViewHeight * this.normalizedScale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getImageWidth() {
        return this.matchViewWidth * this.normalizedScale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setState(State state) {
        this.state = state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void sharedConstructing(Context context) {
        super.setClickable(true);
        this.context = context;
        Object[] objArr = 0;
        this.mScaleDetector = new ScaleGestureDetector(context, new ScaleListener());
        this.mGestureDetector = new GestureDetector(context, new GestureListener());
        this.matrix = new Matrix();
        this.prevMatrix = new Matrix();
        this.m = new float[9];
        this.normalizedScale = 1.0f;
        if (this.mScaleType == null) {
            this.mScaleType = ImageView.ScaleType.FIT_CENTER;
        }
        this.minScale = 1.0f;
        this.maxScale = 3.0f;
        this.superMinScale = 1.0f * 0.75f;
        this.superMaxScale = 3.0f * SUPER_MAX_MULTIPLIER;
        setImageMatrix(this.matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
        setState(State.NONE);
        this.onDrawReady = false;
        super.setOnTouchListener(new PrivateOnTouchListener());
    }

    private void translateMatrixAfterRotate(int i10, float f, float f6, float f7, int i11, int i12, int i13) {
        float f10 = i12;
        if (f7 < f10) {
            float[] fArr = this.m;
            fArr[i10] = (f10 - (i13 * fArr[0])) * 0.5f;
        } else if (f > 0.0f) {
            this.m[i10] = -((f7 - f10) * 0.5f);
        } else if (f6 != 0.0f) {
            this.m[i10] = -((((Math.abs(f) + (i11 * 0.5f)) / f6) * f7) - (f10 * 0.5f));
        }
    }

    public float getCurrentZoom() {
        return this.normalizedScale;
    }

    public float getMaxZoom() {
        return this.maxScale;
    }

    public float getMinZoom() {
        return this.minScale;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.mScaleType;
    }

    public boolean isZoomed() {
        return this.normalizedScale != 1.0f;
    }

    @Override // com.narvii.widget.FullsizeImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.onDrawReady = true;
        this.imageRenderedAtLeastOnce = true;
        ZoomVariables zoomVariables = this.delayedZoomVariables;
        if (zoomVariables != null) {
            setZoom(zoomVariables.scale, zoomVariables.focusX, zoomVariables.focusY, zoomVariables.scaleType);
            this.delayedZoomVariables = null;
        }
        super.onDraw(canvas);
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i10) {
        super.setImageDrawable(drawable, i10);
        savePreviousImageValues();
        fitImageToView();
    }

    public void setMaxZoom(float f) {
        this.maxScale = f;
        this.superMaxScale = f * SUPER_MAX_MULTIPLIER;
    }

    public void setMinZoom(float f) {
        this.minScale = f;
        this.superMinScale = f * 0.75f;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.doubleTapListener = onDoubleTapListener;
    }

    public void setOnTouchImageViewListener(OnTouchImageViewListener onTouchImageViewListener) {
        this.touchImageViewListener = onTouchImageViewListener;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.userTouchListener = onTouchListener;
    }

    public void setZoom(float f) {
        setZoom(f, 0.5f, 0.5f);
    }

    public void setZoomEnabled(boolean z6) {
        this.zoomDisabled = !z6;
    }

    /* JADX INFO: renamed from: com.narvii.widget.TouchImageView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$widget$ImageView$ScaleType;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            $SwitchMap$android$widget$ImageView$ScaleType = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$widget$ImageView$ScaleType[ImageView.ScaleType.FIT_XY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixTrans() {
        this.matrix.getValues(this.m);
        float[] fArr = this.m;
        float f = fArr[2];
        float f6 = fArr[5];
        float fixTrans = getFixTrans(f, this.viewWidth, getImageWidth());
        float fixTrans2 = getFixTrans(f6, this.viewHeight, getImageHeight());
        if (fixTrans == 0.0f && fixTrans2 == 0.0f) {
            return;
        }
        this.matrix.postTranslate(fixTrans, fixTrans2);
    }

    private void printMatrixInfo() {
        float[] fArr = new float[9];
        this.matrix.getValues(fArr);
        Log.d(DEBUG, "Scale: " + fArr[0] + " TransX: " + fArr[2] + " TransY: " + fArr[5]);
    }

    private void savePreviousImageValues() {
        Matrix matrix = this.matrix;
        if (matrix == null || this.viewHeight == 0 || this.viewWidth == 0) {
            return;
        }
        matrix.getValues(this.m);
        this.prevMatrix.setValues(this.m);
        this.prevMatchViewHeight = this.matchViewHeight;
        this.prevMatchViewWidth = this.matchViewWidth;
        this.prevViewHeight = this.viewHeight;
        this.prevViewWidth = this.viewWidth;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scaleImage(double d, float f, float f6, boolean z6) {
        float f7;
        float f10;
        if (z6) {
            f7 = this.superMinScale;
            f10 = this.superMaxScale;
        } else {
            f7 = this.minScale;
            f10 = this.maxScale;
        }
        float f11 = this.normalizedScale;
        float f12 = (float) (((double) f11) * d);
        this.normalizedScale = f12;
        if (f12 > f10) {
            this.normalizedScale = f10;
            d = f10 / f11;
        } else if (f12 < f7) {
            this.normalizedScale = f7;
            d = f7 / f11;
        }
        float f13 = (float) d;
        this.matrix.postScale(f13, f13, f, f6);
        fixScaleTrans();
    }

    private int setViewSize(int i10, int i11, int i12) {
        if (i10 != Integer.MIN_VALUE) {
            return i10 != 0 ? i11 : i12;
        }
        return Math.min(i12, i11);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        this.matrix.getValues(this.m);
        float f = this.m[2];
        if (getImageWidth() <= this.viewWidth + 1) {
            return false;
        }
        if (f < -1.0f || i10 >= 0) {
            return (Math.abs(f) + ((float) this.viewWidth)) + 1.0f < getImageWidth() || i10 <= 0;
        }
        return false;
    }

    public RectF getZoomedRect() {
        if (this.mScaleType == ImageView.ScaleType.FIT_XY) {
            throw new UnsupportedOperationException("getZoomedRect() not supported with FIT_XY");
        }
        PointF pointFTransformCoordTouchToBitmap = transformCoordTouchToBitmap(0.0f, 0.0f, true);
        PointF pointFTransformCoordTouchToBitmap2 = transformCoordTouchToBitmap(this.viewWidth, this.viewHeight, true);
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        return new RectF(pointFTransformCoordTouchToBitmap.x / intrinsicWidth, pointFTransformCoordTouchToBitmap.y / intrinsicHeight, pointFTransformCoordTouchToBitmap2.x / intrinsicWidth, pointFTransformCoordTouchToBitmap2.y / intrinsicHeight);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        this.normalizedScale = bundle.getFloat("saveScale");
        float[] floatArray = bundle.getFloatArray("matrix");
        this.m = floatArray;
        this.prevMatrix.setValues(floatArray);
        this.prevMatchViewHeight = bundle.getFloat("matchViewHeight");
        this.prevMatchViewWidth = bundle.getFloat("matchViewWidth");
        this.prevViewHeight = bundle.getInt("viewHeight");
        this.prevViewWidth = bundle.getInt("viewWidth");
        this.imageRenderedAtLeastOnce = bundle.getBoolean("imageRendered");
        super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putFloat("saveScale", this.normalizedScale);
        bundle.putFloat("matchViewHeight", this.matchViewHeight);
        bundle.putFloat("matchViewWidth", this.matchViewWidth);
        bundle.putInt("viewWidth", this.viewWidth);
        bundle.putInt("viewHeight", this.viewHeight);
        this.matrix.getValues(this.m);
        bundle.putFloatArray("matrix", this.m);
        bundle.putBoolean("imageRendered", this.imageRenderedAtLeastOnce);
        return bundle;
    }

    public void resetZoom() {
        this.normalizedScale = 1.0f;
        fitImageToView();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.FIT_START || scaleType == ImageView.ScaleType.FIT_END) {
            throw new UnsupportedOperationException("TouchImageView does not support FIT_START or FIT_END");
        }
        ImageView.ScaleType scaleType2 = ImageView.ScaleType.MATRIX;
        if (scaleType == scaleType2) {
            super.setScaleType(scaleType2);
            return;
        }
        this.mScaleType = scaleType;
        if (this.onDrawReady) {
            setZoom(this);
        }
    }

    public void setScrollPosition(float f, float f6) {
        setZoom(this.normalizedScale, f, f6);
    }

    public void setZoom(float f, float f6, float f7) {
        setZoom(f, f6, f7, this.mScaleType);
    }

    public TouchImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.doubleTapListener = null;
        this.userTouchListener = null;
        this.touchImageViewListener = null;
        sharedConstructing(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(16)
    public void compatPostOnAnimation(Runnable runnable) {
        postOnAnimation(runnable);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0099  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a6  */
    private void fitImageToView() {
        Drawable drawable = getDrawable();
        if (drawable != null && drawable.getIntrinsicWidth() != 0 && drawable.getIntrinsicHeight() != 0 && this.matrix != null && this.prevMatrix != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            float f = intrinsicWidth;
            float fMax = this.viewWidth / f;
            float f6 = intrinsicHeight;
            float f7 = this.viewHeight / f6;
            int i10 = AnonymousClass1.$SwitchMap$android$widget$ImageView$ScaleType[this.mScaleType.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                throw new UnsupportedOperationException("TouchImageView does not support FIT_START or FIT_END");
                            }
                        }
                        int i11 = this.viewWidth;
                        float f10 = i11 - (fMax * f);
                        int i12 = this.viewHeight;
                        float f11 = i12 - (f7 * f6);
                        this.matchViewWidth = i11 - f10;
                        this.matchViewHeight = i12 - f11;
                        if (isZoomed() && !this.imageRenderedAtLeastOnce) {
                            this.matrix.setScale(fMax, f7);
                            this.matrix.postTranslate(f10 / 2.0f, f11 / 2.0f);
                            this.normalizedScale = 1.0f;
                        } else {
                            if (this.prevMatchViewWidth != 0.0f || this.prevMatchViewHeight == 0.0f) {
                                savePreviousImageValues();
                            }
                            this.prevMatrix.getValues(this.m);
                            float[] fArr = this.m;
                            float f12 = this.matchViewWidth / f;
                            float f13 = this.normalizedScale;
                            fArr[0] = f12 * f13;
                            fArr[4] = (this.matchViewHeight / f6) * f13;
                            float f14 = fArr[2];
                            float f15 = fArr[5];
                            translateMatrixAfterRotate(2, f14, this.prevMatchViewWidth * f13, getImageWidth(), this.prevViewWidth, this.viewWidth, intrinsicWidth);
                            translateMatrixAfterRotate(5, f15, this.prevMatchViewHeight * this.normalizedScale, getImageHeight(), this.prevViewHeight, this.viewHeight, intrinsicHeight);
                            this.matrix.setValues(this.m);
                        }
                        fixTrans();
                        setImageMatrix(this.matrix);
                    }
                    fMax = Math.min(1.0f, Math.min(fMax, f7));
                    f7 = fMax;
                    fMax = Math.min(fMax, f7);
                } else {
                    fMax = Math.max(fMax, f7);
                }
            } else {
                fMax = 1.0f;
            }
            f7 = fMax;
            int i13 = this.viewWidth;
            float f16 = i13 - (fMax * f);
            int i14 = this.viewHeight;
            float f17 = i14 - (f7 * f6);
            this.matchViewWidth = i13 - f16;
            this.matchViewHeight = i14 - f17;
            if (isZoomed()) {
                if (this.prevMatchViewWidth != 0.0f) {
                    savePreviousImageValues();
                } else {
                    savePreviousImageValues();
                }
                this.prevMatrix.getValues(this.m);
                float[] fArr2 = this.m;
                float f18 = this.matchViewWidth / f;
                float f19 = this.normalizedScale;
                fArr2[0] = f18 * f19;
                fArr2[4] = (this.matchViewHeight / f6) * f19;
                float f110 = fArr2[2];
                float f111 = fArr2[5];
                translateMatrixAfterRotate(2, f110, this.prevMatchViewWidth * f19, getImageWidth(), this.prevViewWidth, this.viewWidth, intrinsicWidth);
                translateMatrixAfterRotate(5, f111, this.prevMatchViewHeight * this.normalizedScale, getImageHeight(), this.prevViewHeight, this.viewHeight, intrinsicHeight);
                this.matrix.setValues(this.m);
            } else {
                if (this.prevMatchViewWidth != 0.0f) {
                    savePreviousImageValues();
                } else {
                    savePreviousImageValues();
                }
                this.prevMatrix.getValues(this.m);
                float[] fArr3 = this.m;
                float f112 = this.matchViewWidth / f;
                float f113 = this.normalizedScale;
                fArr3[0] = f112 * f113;
                fArr3[4] = (this.matchViewHeight / f6) * f113;
                float f114 = fArr3[2];
                float f115 = fArr3[5];
                translateMatrixAfterRotate(2, f114, this.prevMatchViewWidth * f113, getImageWidth(), this.prevViewWidth, this.viewWidth, intrinsicWidth);
                translateMatrixAfterRotate(5, f115, this.prevMatchViewHeight * this.normalizedScale, getImageHeight(), this.prevViewHeight, this.viewHeight, intrinsicHeight);
                this.matrix.setValues(this.m);
            }
            fixTrans();
            setImageMatrix(this.matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixScaleTrans() {
        fixTrans();
        this.matrix.getValues(this.m);
        float imageWidth = getImageWidth();
        int i10 = this.viewWidth;
        if (imageWidth < i10) {
            this.m[2] = (i10 - getImageWidth()) / 2.0f;
        }
        float imageHeight = getImageHeight();
        int i11 = this.viewHeight;
        if (imageHeight < i11) {
            this.m[5] = (i11 - getImageHeight()) / 2.0f;
        }
        this.matrix.setValues(this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF transformCoordBitmapToTouch(float f, float f6) {
        if (getDrawable() == null) {
            return new PointF(f, f6);
        }
        this.matrix.getValues(this.m);
        return new PointF(this.m[2] + (getImageWidth() * (f / getDrawable().getIntrinsicWidth())), this.m[5] + (getImageHeight() * (f6 / getDrawable().getIntrinsicHeight())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF transformCoordTouchToBitmap(float f, float f6, boolean z6) {
        if (getDrawable() == null) {
            return new PointF(f, f6);
        }
        this.matrix.getValues(this.m);
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float[] fArr = this.m;
        float f7 = fArr[2];
        float f10 = fArr[5];
        float imageWidth = ((f - f7) * intrinsicWidth) / getImageWidth();
        float imageHeight = ((f6 - f10) * intrinsicHeight) / getImageHeight();
        if (z6) {
            imageWidth = Math.min(Math.max(imageWidth, 0.0f), intrinsicWidth);
            imageHeight = Math.min(Math.max(imageHeight, 0.0f), intrinsicHeight);
        }
        return new PointF(imageWidth, imageHeight);
    }

    public boolean canScrollHorizontallyFroyo(int i10) {
        return canScrollHorizontally(i10);
    }

    public PointF getScrollPosition() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        PointF pointFTransformCoordTouchToBitmap = transformCoordTouchToBitmap(this.viewWidth / 2, this.viewHeight / 2, true);
        pointFTransformCoordTouchToBitmap.x /= intrinsicWidth;
        pointFTransformCoordTouchToBitmap.y /= intrinsicHeight;
        return pointFTransformCoordTouchToBitmap;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        savePreviousImageValues();
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        Drawable drawable = getDrawable();
        if (drawable != null && drawable.getIntrinsicWidth() != 0 && drawable.getIntrinsicHeight() != 0) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int size = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            int size2 = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.viewWidth = setViewSize(mode, size, intrinsicWidth);
            int viewSize = setViewSize(mode2, size2, intrinsicHeight);
            this.viewHeight = viewSize;
            setMeasuredDimension(this.viewWidth, viewSize);
            fitImageToView();
            return;
        }
        setMeasuredDimension(0, 0);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        savePreviousImageValues();
        fitImageToView();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        super.setImageResource(i10);
        savePreviousImageValues();
        fitImageToView();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        savePreviousImageValues();
        fitImageToView();
    }

    public void setZoom(float f, float f6, float f7, ImageView.ScaleType scaleType) {
        if (!this.onDrawReady) {
            this.delayedZoomVariables = new ZoomVariables(f, f6, f7, scaleType);
            return;
        }
        if (scaleType != this.mScaleType) {
            setScaleType(scaleType);
        }
        resetZoom();
        scaleImage(f, this.viewWidth / 2, this.viewHeight / 2, true);
        this.matrix.getValues(this.m);
        this.m[2] = -((f6 * getImageWidth()) - (this.viewWidth * 0.5f));
        this.m[5] = -((f7 * getImageHeight()) - (this.viewHeight * 0.5f));
        this.matrix.setValues(this.m);
        fixTrans();
        setImageMatrix(this.matrix);
    }

    @Override // com.narvii.widget.NVImageView, androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        savePreviousImageValues();
        fitImageToView();
    }

    public void setZoom(TouchImageView touchImageView) {
        PointF scrollPosition = touchImageView.getScrollPosition();
        if (scrollPosition == null) {
            setZoom(touchImageView.getCurrentZoom(), 0.0f, 0.0f, touchImageView.getScaleType());
        } else {
            setZoom(touchImageView.getCurrentZoom(), scrollPosition.x, scrollPosition.y, touchImageView.getScaleType());
        }
    }
}
