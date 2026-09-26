package com.github.mmin18.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RSRuntimeException;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes7.dex */
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
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        this.mDirty = true;
        super.onLayout(z6, i10, i11, i12, i13);
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

    static {
        try {
            RealtimeBlurLayout.class.getClassLoader().loadClass("androidx.renderscript.RenderScript");
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

    protected void blur(Bitmap bitmap, Bitmap bitmap2) {
        this.mBlurInput.copyFrom(bitmap);
        this.mBlurScript.setInput(this.mBlurInput);
        this.mBlurScript.forEach(this.mBlurOutput);
        this.mBlurOutput.copyTo(bitmap2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int iSave;
        if (!this.mDirty) {
            Bitmap bitmap = this.mBlurredBitmap;
            if (bitmap == null) {
                super.dispatchDraw(canvas);
                return;
            } else {
                drawBlurredBitmap(canvas, bitmap, this.mOverlayColor);
                return;
            }
        }
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
        }
    }

    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i10) {
        if (bitmap != null) {
            this.mRectSrc.right = bitmap.getWidth();
            this.mRectSrc.bottom = bitmap.getHeight();
            this.mRectDst.right = getWidth();
            this.mRectDst.bottom = getHeight();
            canvas.drawBitmap(bitmap, this.mRectSrc, this.mRectDst, (Paint) null);
        }
        canvas.drawColor(i10);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        return this.mIsRendering ? super.drawChild(this.mBlurringCanvas, view, j6) : super.drawChild(canvas, view, j6);
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
                    RenderScript renderScriptCreate = RenderScript.create(getContext());
                    this.mRenderScript = renderScriptCreate;
                    this.mBlurScript = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                } catch (RSRuntimeException e) {
                    if (isDebug(getContext())) {
                        if (e.getMessage() == null || !e.getMessage().startsWith("Error loading RS jni library: java.lang.UnsatisfiedLinkError:")) {
                            throw e;
                        }
                        throw new RuntimeException("Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue");
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
            float f6 = this.mBlurRadius / f;
            if (f6 > 25.0f) {
                f = (f * f6) / 25.0f;
                f6 = 25.0f;
            }
            this.mBlurScript.setRadius(f6);
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f));
        int iMax2 = Math.max(1, (int) (height / f));
        if (this.mBlurringCanvas == null || (bitmap = this.mBlurredBitmap) == null || bitmap.getWidth() != iMax || this.mBlurredBitmap.getHeight() != iMax2) {
            releaseBitmap();
            try {
                try {
                    Bitmap.Config config = Bitmap.Config.ARGB_8888;
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, config);
                    this.mBitmapToBlur = bitmapCreateBitmap;
                    if (bitmapCreateBitmap == null) {
                        releaseBitmap();
                        return false;
                    }
                    this.mBlurringCanvas = new Canvas(this.mBitmapToBlur);
                    Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.mRenderScript, this.mBitmapToBlur, Allocation.MipmapControl.MIPMAP_NONE, 1);
                    this.mBlurInput = allocationCreateFromBitmap;
                    this.mBlurOutput = Allocation.createTyped(this.mRenderScript, allocationCreateFromBitmap.getType());
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, iMax2, config);
                    this.mBlurredBitmap = bitmapCreateBitmap2;
                    if (bitmapCreateBitmap2 == null) {
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

    public void setBlurRadius(float f) {
        if (this.mBlurRadius != f) {
            this.mBlurRadius = f;
            this.mDirty = true;
            invalidate();
        }
    }

    public void setOverlayColor(int i10) {
        if (this.mOverlayColor != i10) {
            this.mOverlayColor = i10;
            invalidate();
        }
    }

    public RealtimeBlurLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        release();
        this.mDirty = true;
        super.onDetachedFromWindow();
    }

    protected void release() {
        releaseBitmap();
        releaseScript();
    }
}
