package com.github.mmin18.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.support.v8.renderscript.Allocation;
import android.support.v8.renderscript.Element;
import android.support.v8.renderscript.RSRuntimeException;
import android.support.v8.renderscript.RenderScript;
import android.support.v8.renderscript.ScriptIntrinsicBlur;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* loaded from: classes.dex */
public class RealtimeBlurView extends View {
    private static Boolean DEBUG;
    static boolean Loge;
    private static int PREDRAW_COUNTER;
    private static Handler PREDRAW_HANDLER;
    private static long PREDRAW_LAST_WARN_TIME;
    private static Runnable PREDRAW_WARN;
    public static int RENDERING_COUNT;
    private static StopException STOP_EXCEPTION = new StopException(null);
    private View mBackView;
    private Bitmap mBitmapToBlur;
    private Allocation mBlurInput;
    private Allocation mBlurOutput;
    private float mBlurRadius;
    private ScriptIntrinsicBlur mBlurScript;
    private Bitmap mBlurredBitmap;
    private Canvas mBlurringCanvas;
    private View mDecorView;
    private boolean mDifferentRoot;
    private boolean mDirty;
    private float mDownsampleFactor;
    private boolean mIsRendering;
    private long mMinBlurInterval;
    private int mOverlayColor;
    private Paint mPaint;
    private final Rect mRectDst;
    private final Rect mRectSrc;
    private RenderScript mRenderScript;
    private final ViewTreeObserver.OnPreDrawListener preDrawListener;

    public RealtimeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRectSrc = new Rect();
        this.mRectDst = new Rect();
        this.mMinBlurInterval = 0L;
        this.preDrawListener = new AnonymousClass1();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RealtimeBlurView);
        this.mBlurRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.RealtimeBlurView_realtimeBlurRadius, TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        this.mDownsampleFactor = typedArrayObtainStyledAttributes.getFloat(R.styleable.RealtimeBlurView_realtimeDownsampleFactor, 4.0f);
        this.mOverlayColor = typedArrayObtainStyledAttributes.getColor(R.styleable.RealtimeBlurView_realtimeOverlayColor, -1426063361);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.RealtimeBlurView_realtimeBlurMaxFPS, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (f > 0.0f) {
            this.mMinBlurInterval = (long) (1000.0f / f);
        }
        this.mPaint = new Paint();
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

    public void setBackView(View view) {
        if (this.mBackView != view) {
            this.mBackView = view;
            invalidate();
        }
    }

    public void setMaxFPS(float f) {
        if (f > 0.0f) {
            this.mMinBlurInterval = (long) (1000.0f / f);
        } else {
            this.mMinBlurInterval = 0L;
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
        float f = this.mBlurRadius;
        if (f == 0.0f) {
            release();
            return false;
        }
        float f2 = this.mDownsampleFactor;
        float f3 = f / f2;
        if (f3 > 25.0f) {
            f2 = (f2 * f3) / 25.0f;
            f3 = 25.0f;
        }
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
            this.mBlurScript.setRadius(f3);
            this.mDirty = false;
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f2));
        int iMax2 = Math.max(1, (int) (height / f2));
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

    /* renamed from: com.github.mmin18.widget.RealtimeBlurView$1, reason: invalid class name */
    class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        boolean invalidateScheduled;
        long prevBlurTimestamp;
        long prevCoord;
        final int[] locations = new int[2];
        final Runnable invalidateDelayed = new Runnable() { // from class: com.github.mmin18.widget.RealtimeBlurView.1.1
            @Override // java.lang.Runnable
            public void run() {
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                anonymousClass1.invalidateScheduled = false;
                RealtimeBlurView.this.invalidate();
            }
        };

        AnonymousClass1() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            Bitmap bitmap = RealtimeBlurView.this.mBlurredBitmap;
            View view = RealtimeBlurView.this.mBackView == null ? RealtimeBlurView.this.mDecorView : RealtimeBlurView.this.mBackView;
            if (view != null && RealtimeBlurView.this.isShown()) {
                view.getLocationOnScreen(this.locations);
                int[] iArr = this.locations;
                int i = -iArr[0];
                int i2 = -iArr[1];
                RealtimeBlurView.this.getLocationOnScreen(iArr);
                int[] iArr2 = this.locations;
                int i3 = i + iArr2[0];
                long width = (((((RealtimeBlurView.this.getWidth() << 16) | RealtimeBlurView.this.getHeight()) << 16) | i3) << 16) | (i2 + iArr2[1]);
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (width == this.prevCoord && jUptimeMillis < this.prevBlurTimestamp + RealtimeBlurView.this.mMinBlurInterval) {
                    if (!this.invalidateScheduled) {
                        RealtimeBlurView.this.getHandler().postDelayed(this.invalidateDelayed, ((this.prevBlurTimestamp + RealtimeBlurView.this.mMinBlurInterval) - jUptimeMillis) + 67);
                        this.invalidateScheduled = true;
                    }
                    return true;
                }
                if (RealtimeBlurView.this.prepare()) {
                    boolean z = RealtimeBlurView.this.mBlurredBitmap != bitmap;
                    RealtimeBlurView.this.mBitmapToBlur.eraseColor(RealtimeBlurView.this.mOverlayColor & ViewCompat.MEASURED_SIZE_MASK);
                    int iSave = RealtimeBlurView.this.mBlurringCanvas.save();
                    RealtimeBlurView.this.mIsRendering = true;
                    RealtimeBlurView.RENDERING_COUNT++;
                    try {
                        RealtimeBlurView.this.mBlurringCanvas.scale((RealtimeBlurView.this.mBitmapToBlur.getWidth() * 1.0f) / RealtimeBlurView.this.getWidth(), (RealtimeBlurView.this.mBitmapToBlur.getHeight() * 1.0f) / RealtimeBlurView.this.getHeight());
                        RealtimeBlurView.this.mBlurringCanvas.translate(-i3, -r6);
                        if (view.getBackground() != null) {
                            view.getBackground().draw(RealtimeBlurView.this.mBlurringCanvas);
                        }
                        RealtimeBlurView.this.render(RealtimeBlurView.this.mBlurringCanvas, view);
                    } catch (StopException unused) {
                    } catch (Throwable th) {
                        RealtimeBlurView.this.mIsRendering = false;
                        RealtimeBlurView.RENDERING_COUNT--;
                        RealtimeBlurView.this.mBlurringCanvas.restoreToCount(iSave);
                        throw th;
                    }
                    RealtimeBlurView.this.mIsRendering = false;
                    RealtimeBlurView.RENDERING_COUNT--;
                    RealtimeBlurView.this.mBlurringCanvas.restoreToCount(iSave);
                    RealtimeBlurView realtimeBlurView = RealtimeBlurView.this;
                    realtimeBlurView.blur(realtimeBlurView.mBitmapToBlur, RealtimeBlurView.this.mBlurredBitmap);
                    RealtimeBlurView.reportPreDraw(RealtimeBlurView.this.getContext());
                    this.prevBlurTimestamp = jUptimeMillis;
                    this.prevCoord = width;
                    if (this.invalidateScheduled) {
                        RealtimeBlurView.this.getHandler().removeCallbacks(this.invalidateDelayed);
                        this.invalidateScheduled = false;
                    }
                    if (z || RealtimeBlurView.this.mDifferentRoot) {
                        RealtimeBlurView.this.invalidate();
                    }
                }
            }
            return true;
        }
    }

    protected void render(Canvas canvas, View view) {
        view.draw(canvas);
    }

    protected View getActivityDecorView() {
        Context context = getContext();
        for (int i = 0; i < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView();
        }
        return null;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mDecorView = getActivityDecorView();
        View view = this.mDecorView;
        if (view != null) {
            view.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
            this.mDifferentRoot = this.mDecorView.getRootView() != getRootView();
            if (this.mDifferentRoot) {
                this.mDecorView.postInvalidate();
                return;
            }
            return;
        }
        this.mDifferentRoot = false;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        View view = this.mDecorView;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.preDrawListener);
        }
        release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mIsRendering) {
            throw STOP_EXCEPTION;
        }
        if (RENDERING_COUNT > 0) {
            return;
        }
        super.draw(canvas);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawBlurredBitmap(canvas, this.mBlurredBitmap, this.mOverlayColor);
    }

    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i) {
        if (bitmap != null) {
            this.mRectSrc.right = bitmap.getWidth();
            this.mRectSrc.bottom = bitmap.getHeight();
            this.mRectDst.right = getWidth();
            this.mRectDst.bottom = getHeight();
            canvas.drawBitmap(bitmap, this.mRectSrc, this.mRectDst, (Paint) null);
        }
        this.mPaint.setColor(i);
        canvas.drawRect(this.mRectDst, this.mPaint);
    }

    private static class StopException extends RuntimeException {
        private StopException() {
        }

        /* synthetic */ StopException(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    static {
        try {
            RealtimeBlurView.class.getClassLoader().loadClass("android.support.v8.renderscript.RenderScript");
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

    static void reportPreDraw(Context context) {
        if (isDebug(context)) {
            int i = PREDRAW_COUNTER;
            PREDRAW_COUNTER = i + 1;
            if (i == 0) {
                if (PREDRAW_HANDLER == null) {
                    PREDRAW_HANDLER = new Handler(Looper.getMainLooper());
                }
                if (PREDRAW_WARN == null) {
                    PREDRAW_WARN = new Runnable() { // from class: com.github.mmin18.widget.RealtimeBlurView.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RealtimeBlurView.PREDRAW_COUNTER > 3 && SystemClock.uptimeMillis() - RealtimeBlurView.PREDRAW_LAST_WARN_TIME > 1000) {
                                Log.w("blur " + RealtimeBlurView.PREDRAW_COUNTER + " in same frame");
                                long unused = RealtimeBlurView.PREDRAW_LAST_WARN_TIME = SystemClock.uptimeMillis();
                            }
                            int unused2 = RealtimeBlurView.PREDRAW_COUNTER = 0;
                        }
                    };
                }
                PREDRAW_HANDLER.removeCallbacks(PREDRAW_WARN);
                PREDRAW_HANDLER.post(PREDRAW_WARN);
            }
        }
    }
}
