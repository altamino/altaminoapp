package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.widget.MediaController;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class b extends Drawable implements Animatable, MediaController.MediaPlayerControl {
    final Bitmap mBuffer;
    private final Rect mDstRect;
    final ScheduledThreadPoolExecutor mExecutor;
    final f mInvalidationHandler;
    final boolean mIsRenderingTriggeredOnDraw;
    volatile boolean mIsRunning;
    final ConcurrentLinkedQueue<pl.droidsonroids.gif.a> mListeners;
    final GifInfoHandle mNativeInfoHandle;
    long mNextFrameRenderTime;
    protected final Paint mPaint;
    private final j mRenderTask;
    ScheduledFuture<?> mRenderTaskSchedule;
    private int mScaledHeight;
    private int mScaledWidth;
    private final Rect mSrcRect;
    private ColorStateList mTint;
    private PorterDuffColorFilter mTintFilter;
    private PorterDuff.Mode mTintMode;
    private sa.a mTransform;

    class a extends l {
        a(b bVar) {
            super(bVar);
        }

        @Override // pl.droidsonroids.gif.l
        public void a() {
            if (b.this.mNativeInfoHandle.q()) {
                b.this.start();
            }
        }
    }

    /* JADX INFO: renamed from: pl.droidsonroids.gif.b$b, reason: collision with other inner class name */
    class C0492b extends l {
        final /* synthetic */ int val$position;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0492b(b bVar, int i10) {
            super(bVar);
            this.val$position = i10;
        }

        @Override // pl.droidsonroids.gif.l
        public void a() {
            b bVar = b.this;
            bVar.mNativeInfoHandle.u(this.val$position, bVar.mBuffer);
            this.mGifDrawable.mInvalidationHandler.sendEmptyMessageAtTime(-1, 0L);
        }
    }

    public b(@NonNull Resources resources, @DrawableRes @RawRes int i10) throws Resources.NotFoundException, IOException {
        this(resources.openRawResourceFd(i10));
        float fA = e.a(resources, i10);
        this.mScaledHeight = (int) (this.mNativeInfoHandle.e() * fA);
        this.mScaledWidth = (int) (this.mNativeInfoHandle.j() * fA);
    }

    private void j() {
        this.mIsRunning = false;
        this.mInvalidationHandler.removeMessages(-1);
        this.mNativeInfoHandle.o();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return 100;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mScaledHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mScaledWidth;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return this.mIsRunning;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mIsRunning;
    }

    @Override // android.graphics.drawable.Animatable, android.widget.MediaController.MediaPlayerControl
    public void start() {
        synchronized (this) {
            try {
                if (this.mIsRunning) {
                    return;
                }
                this.mIsRunning = true;
                k(this.mNativeInfoHandle.r());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        synchronized (this) {
            try {
                if (this.mIsRunning) {
                    this.mIsRunning = false;
                    a();
                    this.mNativeInfoHandle.s();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a() {
        ScheduledFuture<?> scheduledFuture = this.mRenderTaskSchedule;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.mInvalidationHandler.removeMessages(-1);
    }

    private void h() {
        if (this.mIsRenderingTriggeredOnDraw && this.mIsRunning) {
            long j6 = this.mNextFrameRenderTime;
            if (j6 != Long.MIN_VALUE) {
                long jMax = Math.max(0L, j6 - SystemClock.uptimeMillis());
                this.mNextFrameRenderTime = Long.MIN_VALUE;
                this.mExecutor.remove(this.mRenderTask);
                this.mRenderTaskSchedule = this.mExecutor.schedule(this.mRenderTask, jMax, TimeUnit.MILLISECONDS);
            }
        }
    }

    private PorterDuffColorFilter l(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public int b() {
        return this.mNativeInfoHandle.a();
    }

    public int c() {
        int iB = this.mNativeInfoHandle.b();
        return (iB == 0 || iB < this.mNativeInfoHandle.f()) ? iB : iB - 1;
    }

    public int d() {
        return this.mNativeInfoHandle.i();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        boolean z6;
        if (this.mTintFilter == null || this.mPaint.getColorFilter() != null) {
            z6 = false;
        } else {
            this.mPaint.setColorFilter(this.mTintFilter);
            z6 = true;
        }
        sa.a aVar = this.mTransform;
        if (aVar == null) {
            canvas.drawBitmap(this.mBuffer, this.mSrcRect, this.mDstRect, this.mPaint);
        } else {
            aVar.onDraw(canvas, this.mPaint, this.mBuffer);
        }
        if (z6) {
            this.mPaint.setColorFilter(null);
        }
    }

    public boolean e() {
        return this.mNativeInfoHandle.l();
    }

    public void g() {
        this.mExecutor.execute(new a(this));
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mPaint.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mPaint.getColorFilter();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        return this.mNativeInfoHandle.c();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        return this.mNativeInfoHandle.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (!this.mNativeInfoHandle.k() || this.mPaint.getAlpha() < 255) ? -2 : -1;
    }

    public void i(@Nullable sa.a aVar) {
        this.mTransform = aVar;
        if (aVar != null) {
            aVar.onBoundsChange(this.mDstRect);
        }
    }

    void k(long j6) {
        if (this.mIsRenderingTriggeredOnDraw) {
            this.mNextFrameRenderTime = 0L;
            this.mInvalidationHandler.sendEmptyMessageAtTime(-1, 0L);
        } else {
            a();
            this.mRenderTaskSchedule = this.mExecutor.schedule(this.mRenderTask, Math.max(j6, 0L), TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.mDstRect.set(rect);
        sa.a aVar = this.mTransform;
        if (aVar != null) {
            aVar.onBoundsChange(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.mTint;
        if (colorStateList == null || (mode = this.mTintMode) == null) {
            return false;
        }
        this.mTintFilter = l(colorStateList, mode);
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(@IntRange int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Position is not positive");
        }
        this.mExecutor.execute(new C0492b(this, i10));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange int i10) {
        this.mPaint.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public void setDither(boolean z6) {
        this.mPaint.setDither(z6);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z6) {
        this.mPaint.setFilterBitmap(z6);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.mTint = colorStateList;
        this.mTintFilter = l(colorStateList, this.mTintMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        this.mTintMode = mode;
        this.mTintFilter = l(this.mTint, mode);
        invalidateSelf();
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, error: %d", Integer.valueOf(this.mNativeInfoHandle.j()), Integer.valueOf(this.mNativeInfoHandle.e()), Integer.valueOf(this.mNativeInfoHandle.i()), Integer.valueOf(this.mNativeInfoHandle.g()));
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        if (d() > 1) {
            return true;
        }
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        if (d() > 1) {
            return true;
        }
        return false;
    }

    public void f() {
        j();
        this.mBuffer.recycle();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        h();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        if (!super.isStateful() && ((colorStateList = this.mTint) == null || !colorStateList.isStateful())) {
            return false;
        }
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        boolean visible = super.setVisible(z6, z10);
        if (!this.mIsRenderingTriggeredOnDraw) {
            if (z6) {
                if (z10) {
                    g();
                }
                if (visible) {
                    start();
                }
            } else if (visible) {
                stop();
            }
        }
        return visible;
    }

    public b(@NonNull AssetManager assetManager, @NonNull String str) throws IOException {
        this(assetManager.openFd(str));
    }

    public b(@NonNull String str) throws IOException {
        this(new GifInfoHandle(str), null, null, true);
    }

    public b(@NonNull File file) throws IOException {
        this(file.getPath());
    }

    public b(@NonNull InputStream inputStream) throws IOException {
        this(new GifInfoHandle(inputStream), null, null, true);
    }

    public b(@NonNull AssetFileDescriptor assetFileDescriptor) throws IOException {
        this(new GifInfoHandle(assetFileDescriptor), null, null, true);
    }

    public b(@NonNull FileDescriptor fileDescriptor) throws IOException {
        this(new GifInfoHandle(fileDescriptor), null, null, true);
    }

    public b(@NonNull byte[] bArr) throws IOException {
        this(new GifInfoHandle(bArr), null, null, true);
    }

    public b(@NonNull ByteBuffer byteBuffer) throws IOException {
        this(new GifInfoHandle(byteBuffer), null, null, true);
    }

    public b(@Nullable ContentResolver contentResolver, @NonNull Uri uri) throws IOException {
        this(GifInfoHandle.n(contentResolver, uri), null, null, true);
    }

    b(GifInfoHandle gifInfoHandle, b bVar, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, boolean z6) {
        this.mIsRunning = true;
        this.mNextFrameRenderTime = Long.MIN_VALUE;
        this.mDstRect = new Rect();
        this.mPaint = new Paint(6);
        this.mListeners = new ConcurrentLinkedQueue<>();
        j jVar = new j(this);
        this.mRenderTask = jVar;
        this.mIsRenderingTriggeredOnDraw = z6;
        this.mExecutor = scheduledThreadPoolExecutor == null ? d.a() : scheduledThreadPoolExecutor;
        this.mNativeInfoHandle = gifInfoHandle;
        Bitmap bitmap = null;
        if (bVar != null) {
            synchronized (bVar.mNativeInfoHandle) {
                try {
                    if (!bVar.mNativeInfoHandle.l() && bVar.mNativeInfoHandle.e() >= gifInfoHandle.e() && bVar.mNativeInfoHandle.j() >= gifInfoHandle.j()) {
                        bVar.j();
                        bitmap = bVar.mBuffer;
                        bitmap.eraseColor(0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (bitmap == null) {
            this.mBuffer = Bitmap.createBitmap(gifInfoHandle.j(), gifInfoHandle.e(), Bitmap.Config.ARGB_8888);
        } else {
            this.mBuffer = bitmap;
        }
        this.mBuffer.setHasAlpha(!gifInfoHandle.k());
        this.mSrcRect = new Rect(0, 0, gifInfoHandle.j(), gifInfoHandle.e());
        this.mInvalidationHandler = new f(this);
        jVar.a();
        this.mScaledWidth = gifInfoHandle.j();
        this.mScaledHeight = gifInfoHandle.e();
    }
}
