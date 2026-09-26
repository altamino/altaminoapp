package android.support.rastermill;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.narvii.util.Utils;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public class FrameSequenceDrawable extends Drawable implements Animatable, Runnable {
    private static final long DEFAULT_DELAY_MS = 20;
    public static final int LOOP_DEFAULT = 3;
    public static final int LOOP_FINITE = 1;
    public static final int LOOP_INF = 2;

    @Deprecated
    public static final int LOOP_ONCE = 1;
    private static final long MIN_DELAY_MS = 20;
    private static final int STATE_DECODING = 2;
    private static final int STATE_READY_TO_SWAP = 4;
    private static final int STATE_SCHEDULED = 1;
    private static final int STATE_WAITING_TO_SWAP = 3;
    private static final String TAG = "FrameSequence";
    private boolean doRtl;
    private Bitmap mBackBitmap;
    private BitmapShader mBackBitmapShader;
    private final BitmapProvider mBitmapProvider;
    private boolean mCircleMaskEnabled;
    private int mCurrentLoop;
    private Runnable mDecodeRunnable;
    private boolean mDestroyed;
    private Runnable mFinishedCallbackRunnable;
    private final FrameSequence mFrameSequence;
    private final FrameSequence.State mFrameSequenceState;
    private Bitmap mFrontBitmap;
    private BitmapShader mFrontBitmapShader;
    private long mLastSwap;
    private final Object mLock;
    private int mLoopBehavior;
    private int mLoopCount;
    private int mNextFrameToDecode;
    private long mNextSwap;
    private OnFinishedListener mOnFinishedListener;
    private final Paint mPaint;
    private final Rect mSrcRect;
    private int mState;
    private RectF mTempRectF;
    private Runnable scheduleDecodeLockedRunnable;
    private static ExecutorService sExecutor = Utils.createThreadPoolExecutor(Utils.getCoreThreadCount(), "FrameSequence decoding thread");
    private static BitmapProvider sAllocatingBitmapProvider = new BitmapProvider() { // from class: android.support.rastermill.FrameSequenceDrawable.1
        @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
        public void releaseBitmap(Bitmap bitmap) {
        }

        @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
        public Bitmap acquireBitmap(int i10, int i11) {
            return Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        }
    };
    private static final Handler mHandler = new Handler(Looper.getMainLooper());

    public interface BitmapProvider {
        Bitmap acquireBitmap(int i10, int i11);

        void releaseBitmap(Bitmap bitmap);
    }

    public interface OnFinishedListener {
        void onFinished(FrameSequenceDrawable frameSequenceDrawable);
    }

    public FrameSequenceDrawable(FrameSequence frameSequence) {
        this(frameSequence, sAllocatingBitmapProvider);
    }

    private void scheduleDecodeLocked() {
        this.mState = 1;
        Utils.handler.removeCallbacks(this.scheduleDecodeLockedRunnable);
        Utils.post(this.scheduleDecodeLockedRunnable);
    }

    public Bitmap draw() {
        innerSwapBitmap();
        return this.mFrontBitmap;
    }

    public final boolean getCircleMaskEnabled() {
        return this.mCircleMaskEnabled;
    }

    public void setDoRtl(boolean z6) {
        this.doRtl = z6;
    }

    public void setLoopBehavior(int i10) {
        this.mLoopBehavior = i10;
    }

    public void setLoopCount(int i10) {
        this.mLoopCount = i10;
    }

    public void setOnFinishedListener(OnFinishedListener onFinishedListener) {
        this.mOnFinishedListener = onFinishedListener;
    }

    public FrameSequenceDrawable(FrameSequence frameSequence, BitmapProvider bitmapProvider) {
        this.mLock = new Object();
        this.mDestroyed = false;
        this.mLoopBehavior = 3;
        this.mLoopCount = 1;
        this.doRtl = false;
        this.mTempRectF = new RectF();
        this.mDecodeRunnable = new Runnable() { // from class: android.support.rastermill.FrameSequenceDrawable.2
            @Override // java.lang.Runnable
            public void run() {
                long frame;
                boolean z6;
                Bitmap bitmap;
                synchronized (FrameSequenceDrawable.this.mLock) {
                    try {
                        if (FrameSequenceDrawable.this.mDestroyed) {
                            return;
                        }
                        int i10 = FrameSequenceDrawable.this.mNextFrameToDecode;
                        if (i10 < 0) {
                            return;
                        }
                        Bitmap bitmap2 = FrameSequenceDrawable.this.mBackBitmap;
                        FrameSequenceDrawable.this.mState = 2;
                        int i11 = i10 - 2;
                        Runtime.getRuntime().availableProcessors();
                        boolean z10 = true;
                        try {
                            frame = FrameSequenceDrawable.this.mFrameSequenceState.getFrame(i10, bitmap2, i11);
                            z6 = false;
                        } catch (Exception e) {
                            Log.e(FrameSequenceDrawable.TAG, "exception during decode: " + e);
                            frame = 0;
                            z6 = true;
                        }
                        if (frame < 20) {
                            frame = 20;
                        }
                        synchronized (FrameSequenceDrawable.this.mLock) {
                            try {
                                bitmap = null;
                                if (FrameSequenceDrawable.this.mDestroyed) {
                                    Bitmap bitmap3 = FrameSequenceDrawable.this.mBackBitmap;
                                    FrameSequenceDrawable.this.mBackBitmap = null;
                                    bitmap = bitmap3;
                                } else if (FrameSequenceDrawable.this.mNextFrameToDecode >= 0 && FrameSequenceDrawable.this.mState == 2) {
                                    FrameSequenceDrawable frameSequenceDrawable = FrameSequenceDrawable.this;
                                    frameSequenceDrawable.mNextSwap = z6 ? Long.MAX_VALUE : frame + frameSequenceDrawable.mLastSwap;
                                    FrameSequenceDrawable.this.mState = 3;
                                }
                                z10 = false;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z10) {
                            Handler handler = FrameSequenceDrawable.mHandler;
                            FrameSequenceDrawable frameSequenceDrawable2 = FrameSequenceDrawable.this;
                            handler.postAtTime(frameSequenceDrawable2, frameSequenceDrawable2.mNextSwap);
                        }
                        if (bitmap != null) {
                            FrameSequenceDrawable.this.mBitmapProvider.releaseBitmap(bitmap);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        };
        this.mFinishedCallbackRunnable = new Runnable() { // from class: android.support.rastermill.FrameSequenceDrawable.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (FrameSequenceDrawable.this.mLock) {
                    FrameSequenceDrawable.this.mNextFrameToDecode = -1;
                    FrameSequenceDrawable.this.mState = 0;
                }
                if (FrameSequenceDrawable.this.mOnFinishedListener != null) {
                    FrameSequenceDrawable.this.mOnFinishedListener.onFinished(FrameSequenceDrawable.this);
                }
            }
        };
        this.scheduleDecodeLockedRunnable = new Runnable() { // from class: android.support.rastermill.FrameSequenceDrawable.4
            @Override // java.lang.Runnable
            public void run() {
                if (FrameSequenceDrawable.this.mState == 1) {
                    FrameSequenceDrawable frameSequenceDrawable = FrameSequenceDrawable.this;
                    frameSequenceDrawable.mNextFrameToDecode = (frameSequenceDrawable.mNextFrameToDecode + 1) % FrameSequenceDrawable.this.mFrameSequence.getFrameCount();
                    FrameSequenceDrawable.sExecutor.execute(FrameSequenceDrawable.this.mDecodeRunnable);
                }
            }
        };
        if (frameSequence == null || bitmapProvider == null) {
            throw new IllegalArgumentException();
        }
        this.mFrameSequence = frameSequence;
        FrameSequence.State stateCreateState = frameSequence.createState();
        this.mFrameSequenceState = stateCreateState;
        int width = frameSequence.getWidth();
        int height = frameSequence.getHeight();
        this.mBitmapProvider = bitmapProvider;
        this.mFrontBitmap = acquireAndValidateBitmap(bitmapProvider, width, height);
        this.mBackBitmap = acquireAndValidateBitmap(bitmapProvider, width, height);
        this.mSrcRect = new Rect(0, 0, width, height);
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setFilterBitmap(true);
        Bitmap bitmap = this.mFrontBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.mFrontBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.mBackBitmapShader = new BitmapShader(this.mBackBitmap, tileMode, tileMode);
        this.mLastSwap = 0L;
        this.mNextFrameToDecode = -1;
        stateCreateState.getFrame(0, this.mFrontBitmap, -1);
    }

    private void checkDestroyedLocked() {
        if (this.mDestroyed) {
            throw new IllegalStateException("Cannot perform operation on recycled drawable");
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0067 A[Catch: all -> 0x001c, TryCatch #0 {all -> 0x001c, blocks: (B:4:0x0003, B:6:0x000e, B:8:0x0019, B:11:0x001e, B:13:0x0024, B:15:0x0028, B:17:0x004a, B:19:0x0053, B:24:0x0061, B:22:0x0059, B:25:0x0067, B:26:0x006a), top: B:30:0x0003 }] */
    private void innerSwapBitmap() {
        synchronized (this.mLock) {
            try {
                checkDestroyedLocked();
                if (this.mState == 3 && this.mNextSwap - SystemClock.uptimeMillis() <= 0) {
                    this.mState = 4;
                }
                if (isRunning() && this.mState == 4) {
                    Bitmap bitmap = this.mBackBitmap;
                    this.mBackBitmap = this.mFrontBitmap;
                    this.mFrontBitmap = bitmap;
                    BitmapShader bitmapShader = this.mBackBitmapShader;
                    this.mBackBitmapShader = this.mFrontBitmapShader;
                    this.mFrontBitmapShader = bitmapShader;
                    this.mLastSwap = SystemClock.uptimeMillis();
                    if (this.mNextFrameToDecode == this.mFrameSequence.getFrameCount() - 1) {
                        int i10 = this.mCurrentLoop + 1;
                        this.mCurrentLoop = i10;
                        int i11 = this.mLoopBehavior;
                        if ((i11 == 1 && i10 == this.mLoopCount) || (i11 == 3 && i10 == this.mFrameSequence.getDefaultLoopCount())) {
                            scheduleSelf(this.mFinishedCallbackRunnable, 0L);
                        } else {
                            scheduleDecodeLocked();
                        }
                    } else {
                        scheduleDecodeLocked();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void destroy() {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this.mBitmapProvider == null) {
            throw new IllegalStateException("BitmapProvider must be non-null");
        }
        synchronized (this.mLock) {
            try {
                checkDestroyedLocked();
                bitmap = this.mFrontBitmap;
                bitmap2 = null;
                this.mFrontBitmap = null;
                if (this.mState != 2) {
                    Bitmap bitmap3 = this.mBackBitmap;
                    this.mBackBitmap = null;
                    bitmap2 = bitmap3;
                }
                this.mDestroyed = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mBitmapProvider.releaseBitmap(bitmap);
        if (bitmap2 != null) {
            this.mBitmapProvider.releaseBitmap(bitmap2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        innerSwapBitmap();
        int intrinsicWidth = getIntrinsicWidth();
        int intrinsicHeight = getIntrinsicHeight();
        if (!this.mCircleMaskEnabled) {
            this.mPaint.setShader(null);
            if (this.doRtl) {
                canvas.scale(-1.0f, 1.0f, intrinsicWidth / 2.0f, intrinsicHeight / 2.0f);
            }
            canvas.drawBitmap(this.mFrontBitmap, this.mSrcRect, getBounds(), this.mPaint);
            return;
        }
        Rect bounds = getBounds();
        float f = intrinsicWidth;
        float fWidth = (bounds.width() * 1.0f) / f;
        float f6 = intrinsicHeight;
        float fHeight = (bounds.height() * 1.0f) / f6;
        canvas.save();
        canvas.translate(bounds.left, bounds.top);
        if (this.doRtl) {
            canvas.scale(-fWidth, fHeight);
        } else {
            canvas.scale(fWidth, fHeight);
        }
        float fMin = Math.min(bounds.width(), bounds.height());
        float f7 = fMin / fWidth;
        float f10 = fMin / fHeight;
        this.mTempRectF.set((f - f7) / 2.0f, (f6 - f10) / 2.0f, (f + f7) / 2.0f, (f6 + f10) / 2.0f);
        this.mPaint.setShader(this.mFrontBitmapShader);
        canvas.drawOval(this.mTempRectF, this.mPaint);
        canvas.restore();
    }

    public void eraseFrontBitmap() {
        synchronized (this.mLock) {
            try {
                Bitmap bitmap = this.mFrontBitmap;
                if (bitmap != null && !bitmap.isRecycled()) {
                    this.mFrontBitmap.eraseColor(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            this.mFrameSequenceState.destroy();
        } finally {
            super.finalize();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mFrameSequence.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mFrameSequence.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.mFrameSequence.isOpaque() ? -1 : -2;
    }

    public boolean isDestroyed() {
        boolean z6;
        synchronized (this.mLock) {
            z6 = this.mDestroyed;
        }
        return z6;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        boolean z6;
        synchronized (this.mLock) {
            try {
                z6 = this.mNextFrameToDecode > -1 && !this.mDestroyed;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6;
        synchronized (this.mLock) {
            try {
                if (this.mNextFrameToDecode < 0 || this.mState != 3) {
                    z6 = false;
                } else {
                    this.mState = 4;
                    z6 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z6) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mPaint.setAlpha(i10);
    }

    public final void setCircleMaskEnabled(boolean z6) {
        if (this.mCircleMaskEnabled != z6) {
            this.mCircleMaskEnabled = z6;
            this.mPaint.setAntiAlias(z6);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z6) {
        this.mPaint.setFilterBitmap(z6);
    }

    private static Bitmap acquireAndValidateBitmap(BitmapProvider bitmapProvider, int i10, int i11) {
        Bitmap bitmapAcquireBitmap = bitmapProvider.acquireBitmap(i10, i11);
        if (bitmapAcquireBitmap != null && bitmapAcquireBitmap.getWidth() >= i10 && bitmapAcquireBitmap.getHeight() >= i11 && bitmapAcquireBitmap.getConfig() == Bitmap.Config.ARGB_8888) {
            return bitmapAcquireBitmap;
        }
        throw new IllegalArgumentException("Invalid bitmap provided");
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        boolean visible = super.setVisible(z6, z10);
        if (!z6) {
            stop();
        } else if (z10 || visible) {
            stop();
            start();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            synchronized (this.mLock) {
                try {
                    checkDestroyedLocked();
                    if (this.mState == 1) {
                        return;
                    }
                    this.mCurrentLoop = 0;
                    scheduleDecodeLocked();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            synchronized (this.mLock) {
                this.mNextFrameToDecode = -1;
                this.mState = 0;
            }
        }
    }
}
