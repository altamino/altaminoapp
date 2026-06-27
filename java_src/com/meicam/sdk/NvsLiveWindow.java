package com.meicam.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* loaded from: classes2.dex */
public class NvsLiveWindow extends SurfaceView implements SurfaceHolder.Callback {
    public static final int FILLMODE_PRESERVEASPECTCROP = 0;
    public static final int FILLMODE_PRESERVEASPECTFIT = 1;
    public static final int FILLMODE_STRETCH = 2;
    protected int m_fillMode;
    protected long m_internalObject;
    private Surface m_surface;

    private native void nativeClearVideoFrame(long j);

    private native void nativeClose(long j);

    private native boolean nativeGetStopRenderingBeforeNextSurfaceChange(long j);

    private native void nativeInit();

    private native PointF nativeMapCanonicalToView(long j, PointF pointF);

    private native PointF nativeMapNormalizedToView(long j, PointF pointF);

    private native PointF nativeMapViewToCanonical(long j, PointF pointF);

    private native PointF nativeMapViewToNormalized(long j, PointF pointF);

    private native void nativeOnSizeChanged(long j, int i, int i2);

    private native void nativeRepaintVideoFrame(long j);

    private native void nativeSetBackgroundColor(long j, float f, float f2, float f3);

    private native void nativeSetFillMode(long j, int i);

    private native void nativeSetStopRenderingBeforeNextSurfaceChange(long j, boolean z);

    private native void nativeSurfaceChanged(long j, Surface surface, int i, int i2);

    private native void nativeSurfaceDestroyed(long j);

    private native Bitmap nativeTakeScreenshot(long j);

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    public NvsLiveWindow(Context context) {
        super(context);
        this.m_internalObject = 0L;
        this.m_fillMode = 0;
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsLiveWindow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m_internalObject = 0L;
        this.m_fillMode = 0;
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsLiveWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m_internalObject = 0L;
        this.m_fillMode = 0;
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public NvsLiveWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.m_internalObject = 0L;
        this.m_fillMode = 0;
        NvsUtils.checkFunctionInMainThread();
        init();
    }

    public void setFillMode(int i) {
        NvsUtils.checkFunctionInMainThread();
        if (i != 0 && i != 1 && i != 2) {
            i = 0;
        }
        if (i == this.m_fillMode) {
            return;
        }
        this.m_fillMode = i;
        nativeSetFillMode(this.m_internalObject, i);
    }

    public int getFillMode() {
        NvsUtils.checkFunctionInMainThread();
        return this.m_fillMode;
    }

    public PointF mapCanonicalToView(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapCanonicalToView(this.m_internalObject, pointF);
    }

    public PointF mapViewToCanonical(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapViewToCanonical(this.m_internalObject, pointF);
    }

    public PointF mapNormalizedToView(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapNormalizedToView(this.m_internalObject, pointF);
    }

    public PointF mapViewToNormalized(PointF pointF) {
        NvsUtils.checkFunctionInMainThread();
        return nativeMapViewToNormalized(this.m_internalObject, pointF);
    }

    public void clearVideoFrame() {
        NvsUtils.checkFunctionInMainThread();
        nativeClearVideoFrame(this.m_internalObject);
    }

    public Bitmap takeScreenshot() {
        NvsUtils.checkFunctionInMainThread();
        return nativeTakeScreenshot(this.m_internalObject);
    }

    public void setBackgroundColor(float f, float f2, float f3) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetBackgroundColor(this.m_internalObject, f, f2, f3);
    }

    public void setStopRenderingBeforeNextSurfaceChange(boolean z) {
        NvsUtils.checkFunctionInMainThread();
        nativeSetStopRenderingBeforeNextSurfaceChange(this.m_internalObject, z);
    }

    public boolean getStopRenderingBeforeNextSurfaceChange() {
        NvsUtils.checkFunctionInMainThread();
        return nativeGetStopRenderingBeforeNextSurfaceChange(this.m_internalObject);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        init();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        if (!isInEditMode()) {
            long j = this.m_internalObject;
            if (j != 0) {
                nativeClose(j);
                this.m_internalObject = 0L;
                getHolder().removeCallback(this);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (!isInEditMode()) {
            nativeOnSizeChanged(this.m_internalObject, i, i2);
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (isInEditMode() || i2 < 1 || i3 < 1) {
            return;
        }
        nativeSurfaceChanged(this.m_internalObject, surfaceHolder.getSurface(), i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (isInEditMode()) {
            return;
        }
        nativeSurfaceDestroyed(this.m_internalObject);
    }

    private void init() {
        if (isInEditMode() || this.m_internalObject != 0) {
            return;
        }
        nativeInit();
        getHolder().addCallback(this);
    }

    private void destroyCurrentSurface() {
        if (isInEditMode() || this.m_surface == null) {
            return;
        }
        nativeSurfaceDestroyed(this.m_internalObject);
        this.m_surface.release();
        this.m_surface = null;
    }
}
