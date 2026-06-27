package com.github.mmin18.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v8.renderscript.Allocation;
import android.support.v8.renderscript.Element;
import android.support.v8.renderscript.RSRuntimeException;
import android.support.v8.renderscript.RenderScript;
import android.support.v8.renderscript.ScriptIntrinsicBlur;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* loaded from: classes.dex */
public class RealtimeBlurLayout extends FrameLayout {
    static Boolean DEBUG;
    static boolean Loge;
    private Bitmap mBitmapToBlur;
    private Allocation mBlurInput;
    private Allocation mBlurOutput;
    private float mBlurRadius;
    private ScriptIntrinsicBlur mBlurScript;
    private Bitmap mBlurredBitmap;
    private Canvas mBlurringCanvas;
    private boolean mDirty;
    private float mDownsampleFactor;
    private boolean mIsRendering;
    private int mOverlayColor;
    private final Rect mRectDst;
    private final Rect mRectSrc;
    private RenderScript mRenderScript;

    public RealtimeBlurLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDirty = true;
        this.mRectSrc = new Rect();
        this.mRectDst = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RealtimeBlurLayout);
        this.mBlurRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RealtimeBlurLayout_blurLayoutRadius, TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        this.mDownsampleFactor = typedArrayObtainStyledAttributes.getFloat(R.styleable.RealtimeBlurLayout_blurLayoutDownsampleFactor, 4.0f);
        this.mOverlayColor = typedArrayObtainStyledAttributes.getColor(R.styleable.RealtimeBlurLayout_blurLayoutOverlayColor, -1426063361);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setBlurRadius(float f) {
        if (this.mBlurRadius != f) {
            this.mBlurRadius = f;
            this.mDirty = true;
            invalidate();
        }
    }

    public void setDownsampleFactor(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Downsample factor must be greater than 0.");
        }
        if (this.mDownsampleFactor != f) {
            this.mDownsampleFactor = f;
            this.mDirty = true;
            releaseBitmap();
            invalidate();
        }
    }

    public void setOverlayColor(int i) {
        if (this.mOverlayColor != i) {
            this.mOverlayColor = i;
            invalidate();
        }
    }

    private void releaseBitmap() {
        Allocation allocation = this.mBlurInput;
        if (allocation != null) {
            allocation.destroy();
            this.mBlurInput = null;
        }
        Allocation allocation2 = this.mBlurOutput;
        if (allocation2 != null) {
            allocation2.destroy();
            this.mBlurOutput = null;
        }
        Bitmap bitmap = this.mBitmapToBlur;
        if (bitmap != null) {
            bitmap.recycle();
            this.mBitmapToBlur = null;
        }
        Bitmap bitmap2 = this.mBlurredBitmap;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.mBlurredBitmap = null;
        }
    }

    private void releaseScript() {
        RenderScript renderScript = this.mRenderScript;
        if (renderScript != null) {
            renderScript.destroy();
            this.mRenderScript = null;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlur = this.mBlurScript;
        if (scriptIntrinsicBlur != null) {
            scriptIntrinsicBlur.destroy();
            this.mBlurScript = null;
        }
    }

    protected void release() {
        releaseBitmap();
        releaseScript();
    }

    protected boolean prepare() {
        Bitmap bitmap;
        if (this.mBlurRadius == 0.0f) {
            release();
            return false;
        }
        float f = this.mDownsampleFactor;
        if (this.mDirty || this.mRenderScript == null) {
            if (this.mRenderScript == null) {
                try {
                    this.mRenderScript = RenderScript.create(getContext());
                    this.mBlurScript = ScriptIntrinsicBlur.create(this.mRenderScript, Element.U8_4(this.mRenderScript));
                } catch (RSRuntimeException e) {
                    if (isDebug(getContext())) {
                        if (e.getMessage() != null && e.getMessage().startsWith("Error loading RS jni library: java.lang.UnsatisfiedLinkError:")) {
                            throw new RuntimeException("Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue");
                        }
                        throw e;
                    }
                    releaseScript();
                    if (!Loge) {
                        Log.e("fail to init render script", e);
                        Loge = true;
                    }
                    return false;
                }
            }
            this.mDirty = false;
            float f2 = this.mBlurRadius / f;
            if (f2 > 25.0f) {
                f = (f * f2) / 25.0f;
                f2 = 25.0f;
            }
            this.mBlurScript.setRadius(f2);
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f));
        int iMax2 = Math.max(1, (int) (height / f));
        if (this.mBlurringCanvas == null || (bitmap = this.mBlurredBitmap) == null || bitmap.getWidth() != iMax || this.mBlurredBitmap.getHeight() != iMax2) {
            releaseBitmap();
            try {
                try {
                    this.mBitmapToBlur = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                    if (this.mBitmapToBlur != null) {
                        this.mBlurringCanvas = new Canvas(this.mBitmapToBlur);
                        this.mBlurInput = Allocation.createFromBitmap(this.mRenderScript, this.mBitmapToBlur, Allocation.MipmapControl.MIPMAP_NONE, 1);
                        this.mBlurOutput = Allocation.createTyped(this.mRenderScript, this.mBlurInput.getType());
                        this.mBlurredBitmap = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
                        if (this.mBlurredBitmap == null) {
                            releaseBitmap();
                            return false;
                        }
                    } else {
                        releaseBitmap();
                        return false;
                    }
                } catch (OutOfMemoryError e2) {
                    Log.e("OOM when create blur bitmap", e2);
                    releaseBitmap();
                    return false;
                }
            } catch (Throwable unused) {
                releaseBitmap();
                return false;
            }
        }
        return true;
    }

    protected void blur(Bitmap bitmap, Bitmap bitmap2) {
        this.mBlurInput.copyFrom(bitmap);
        this.mBlurScript.setInput(this.mBlurInput);
        this.mBlurScript.forEach(this.mBlurOutput);
        this.mBlurOutput.copyTo(bitmap2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        release();
        this.mDirty = true;
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        this.mDirty = true;
        return super.invalidateChildInParent(iArr, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        this.mDirty = true;
        super.onDescendantInvalidated(view, view2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mDirty = true;
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int iSave;
        if (this.mDirty) {
            if (prepare()) {
                this.mBitmapToBlur.eraseColor(this.mOverlayColor & ViewCompat.MEASURED_SIZE_MASK);
                iSave = this.mBlurringCanvas.save();
                this.mIsRendering = true;
                this.mBlurringCanvas.scale((this.mBitmapToBlur.getWidth() * 1.0f) / getWidth(), (this.mBitmapToBlur.getHeight() * 1.0f) / getHeight());
            } else {
                iSave = 0;
            }
            super.dispatchDraw(canvas);
            if (this.mIsRendering) {
                blur(this.mBitmapToBlur, this.mBlurredBitmap);
                this.mIsRendering = false;
                this.mBlurringCanvas.restoreToCount(iSave);
                drawBlurredBitmap(canvas, this.mBlurredBitmap, this.mOverlayColor);
                return;
            }
            return;
        }
        Bitmap bitmap = this.mBlurredBitmap;
        if (bitmap == null) {
            super.dispatchDraw(canvas);
        } else {
            drawBlurredBitmap(canvas, bitmap, this.mOverlayColor);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (this.mIsRendering) {
            return super.drawChild(this.mBlurringCanvas, view, j);
        }
        return super.drawChild(canvas, view, j);
    }

    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i) {
        if (bitmap != null) {
            this.mRectSrc.right = bitmap.getWidth();
            this.mRectSrc.bottom = bitmap.getHeight();
            this.mRectDst.right = getWidth();
            this.mRectDst.bottom = getHeight();
            canvas.drawBitmap(bitmap, this.mRectSrc, this.mRectDst, (Paint) null);
        }
        canvas.drawColor(i);
    }

    static {
        try {
            RealtimeBlurLayout.class.getClassLoader().loadClass("android.support.v8.renderscript.RenderScript");
            DEBUG = null;
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("RenderScript support not enabled. Add \"android { defaultConfig { renderscriptSupportModeEnabled true }}\" in your build.gradle");
        }
    }

    static boolean isDebug(Context context) {
        if (DEBUG == null && context != null) {
            DEBUG = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
        }
        return DEBUG == Boolean.TRUE;
    }
}
