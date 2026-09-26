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
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import androidx.renderscript.Allocation;
import androidx.renderscript.Element;
import androidx.renderscript.RSRuntimeException;
import androidx.renderscript.RenderScript;
import androidx.renderscript.ScriptIntrinsicBlur;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class RealtimeBlurView extends View {
    private static Boolean DEBUG;
    static boolean Loge;
    private static int PREDRAW_COUNTER;
    private static Handler PREDRAW_HANDLER;
    private static long PREDRAW_LAST_WARN_TIME;
    private static Runnable PREDRAW_WARN;
    public static int RENDERING_COUNT;
    private static c STOP_EXCEPTION = new c();
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

    class a implements ViewTreeObserver.OnPreDrawListener {
        boolean invalidateScheduled;
        long prevBlurTimestamp;
        long prevCoord;
        final int[] locations = new int[2];
        final Runnable invalidateDelayed = new RunnableC0155a();

        /* JADX INFO: renamed from: com.github.mmin18.widget.RealtimeBlurView$a$a, reason: collision with other inner class name */
        class RunnableC0155a implements Runnable {
            RunnableC0155a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.invalidateScheduled = false;
                RealtimeBlurView.this.invalidate();
            }
        }

        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            Bitmap bitmap = RealtimeBlurView.this.mBlurredBitmap;
            View view = RealtimeBlurView.this.mBackView == null ? RealtimeBlurView.this.mDecorView : RealtimeBlurView.this.mBackView;
            if (view != null && RealtimeBlurView.this.isShown()) {
                view.getLocationOnScreen(this.locations);
                int[] iArr = this.locations;
                int i10 = -iArr[0];
                int i11 = -iArr[1];
                RealtimeBlurView.this.getLocationOnScreen(iArr);
                int[] iArr2 = this.locations;
                int i12 = i10 + iArr2[0];
                int i13 = i11 + iArr2[1];
                long width = (((((((long) RealtimeBlurView.this.getWidth()) << 16) | ((long) RealtimeBlurView.this.getHeight())) << 16) | ((long) i12)) << 16) | ((long) i13);
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (width == this.prevCoord && jUptimeMillis < this.prevBlurTimestamp + RealtimeBlurView.this.mMinBlurInterval) {
                    if (!this.invalidateScheduled) {
                        RealtimeBlurView.this.getHandler().postDelayed(this.invalidateDelayed, ((this.prevBlurTimestamp + RealtimeBlurView.this.mMinBlurInterval) - jUptimeMillis) + 67);
                        this.invalidateScheduled = true;
                    }
                    return true;
                }
                if (RealtimeBlurView.this.prepare()) {
                    boolean z6 = RealtimeBlurView.this.mBlurredBitmap != bitmap;
                    RealtimeBlurView.this.mBitmapToBlur.eraseColor(RealtimeBlurView.this.mOverlayColor & ViewCompat.MEASURED_SIZE_MASK);
                    int iSave = RealtimeBlurView.this.mBlurringCanvas.save();
                    RealtimeBlurView.this.mIsRendering = true;
                    RealtimeBlurView.RENDERING_COUNT++;
                    try {
                        RealtimeBlurView.this.mBlurringCanvas.scale((RealtimeBlurView.this.mBitmapToBlur.getWidth() * 1.0f) / RealtimeBlurView.this.getWidth(), (RealtimeBlurView.this.mBitmapToBlur.getHeight() * 1.0f) / RealtimeBlurView.this.getHeight());
                        RealtimeBlurView.this.mBlurringCanvas.translate(-i12, -i13);
                        if (view.getBackground() != null) {
                            view.getBackground().draw(RealtimeBlurView.this.mBlurringCanvas);
                        }
                        RealtimeBlurView realtimeBlurView = RealtimeBlurView.this;
                        realtimeBlurView.render(realtimeBlurView.mBlurringCanvas, view);
                    } catch (c unused) {
                    } finally {
                        RealtimeBlurView.this.mIsRendering = false;
                        RealtimeBlurView.RENDERING_COUNT--;
                        RealtimeBlurView.this.mBlurringCanvas.restoreToCount(iSave);
                    }
                    RealtimeBlurView realtimeBlurView2 = RealtimeBlurView.this;
                    realtimeBlurView2.blur(realtimeBlurView2.mBitmapToBlur, RealtimeBlurView.this.mBlurredBitmap);
                    RealtimeBlurView.reportPreDraw(RealtimeBlurView.this.getContext());
                    this.prevBlurTimestamp = jUptimeMillis;
                    this.prevCoord = width;
                    if (this.invalidateScheduled) {
                        RealtimeBlurView.this.getHandler().removeCallbacks(this.invalidateDelayed);
                        this.invalidateScheduled = false;
                    }
                    if (z6 || RealtimeBlurView.this.mDifferentRoot) {
                        RealtimeBlurView.this.invalidate();
                    }
                }
            }
            return true;
        }
    }

    private static class c extends RuntimeException {
        private c() {
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

    public void setMaxFPS(float f) {
        if (f > 0.0f) {
            this.mMinBlurInterval = (long) (1000.0f / f);
        } else {
            this.mMinBlurInterval = 0L;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RealtimeBlurView.PREDRAW_COUNTER > 3 && SystemClock.uptimeMillis() - RealtimeBlurView.PREDRAW_LAST_WARN_TIME > 1000) {
                Log.w("blur " + RealtimeBlurView.PREDRAW_COUNTER + " in same frame");
                RealtimeBlurView.PREDRAW_LAST_WARN_TIME = SystemClock.uptimeMillis();
            }
            RealtimeBlurView.PREDRAW_COUNTER = 0;
        }
    }

    static {
        try {
            RealtimeBlurView.class.getClassLoader().loadClass("androidx.renderscript.RenderScript");
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

    protected void drawBlurredBitmap(Canvas canvas, Bitmap bitmap, int i10) {
        if (bitmap != null) {
            this.mRectSrc.right = bitmap.getWidth();
            this.mRectSrc.bottom = bitmap.getHeight();
            this.mRectDst.right = getWidth();
            this.mRectDst.bottom = getHeight();
            canvas.drawBitmap(bitmap, this.mRectSrc, this.mRectDst, (Paint) null);
        }
        this.mPaint.setColor(i10);
        canvas.drawRect(this.mRectDst, this.mPaint);
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

    protected boolean prepare() {
        Bitmap bitmap;
        float f = this.mBlurRadius;
        if (f == 0.0f) {
            release();
            return false;
        }
        float f6 = this.mDownsampleFactor;
        float f7 = f / f6;
        if (f7 > 25.0f) {
            f6 = (f6 * f7) / 25.0f;
            f7 = 25.0f;
        }
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
            this.mBlurScript.setRadius(f7);
            this.mDirty = false;
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f6));
        int iMax2 = Math.max(1, (int) (height / f6));
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

    public void setBackView(View view) {
        if (this.mBackView != view) {
            this.mBackView = view;
            invalidate();
        }
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

    public RealtimeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRectSrc = new Rect();
        this.mRectDst = new Rect();
        this.mMinBlurInterval = 0L;
        this.preDrawListener = new a();
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

    static void reportPreDraw(Context context) {
        if (isDebug(context)) {
            int i10 = PREDRAW_COUNTER;
            PREDRAW_COUNTER = i10 + 1;
            if (i10 == 0) {
                if (PREDRAW_HANDLER == null) {
                    PREDRAW_HANDLER = new Handler(Looper.getMainLooper());
                }
                if (PREDRAW_WARN == null) {
                    PREDRAW_WARN = new b();
                }
                PREDRAW_HANDLER.removeCallbacks(PREDRAW_WARN);
                PREDRAW_HANDLER.post(PREDRAW_WARN);
            }
        }
    }

    protected View getActivityDecorView() {
        Context context = getContext();
        for (int i10 = 0; i10 < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i10++) {
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
        View activityDecorView = getActivityDecorView();
        this.mDecorView = activityDecorView;
        boolean z6 = false;
        if (activityDecorView != null) {
            activityDecorView.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
            if (this.mDecorView.getRootView() != getRootView()) {
                z6 = true;
            }
            this.mDifferentRoot = z6;
            if (z6) {
                this.mDecorView.postInvalidate();
                return;
            }
            return;
        }
        this.mDifferentRoot = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawBlurredBitmap(canvas, this.mBlurredBitmap, this.mOverlayColor);
    }

    protected void release() {
        releaseBitmap();
        releaseScript();
    }

    protected void render(Canvas canvas, View view) {
        view.draw(canvas);
    }
}
