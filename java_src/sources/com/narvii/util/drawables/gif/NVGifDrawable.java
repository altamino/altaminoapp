package com.narvii.util.drawables.gif;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import pl.droidsonroids.gif.a;
import pl.droidsonroids.gif.b;
import pl.droidsonroids.gif.g;
import pl.droidsonroids.gif.k;

/* JADX INFO: loaded from: classes4.dex */
public class NVGifDrawable extends Drawable implements Drawable.Callback, Runnable, a {
    static Handler CHECK_HANDLER = null;
    static final int CHECK_INTERVAL = 400;
    Bitmap buffer;
    Drawable.Callback callback;
    DrawToBuffer drawToBuffer;
    Canvas drawToCanvas;
    b drawable;
    final File originalFile;
    CheckTask task;
    final File writingFile;

    static class CheckTask implements Runnable {
        final WeakReference<NVGifDrawable> wr;

        @Override // java.lang.Runnable
        public void run() {
            b bVarP;
            NVGifDrawable nVGifDrawable = this.wr.get();
            if (nVGifDrawable == null || !nVGifDrawable.isWriting() || nVGifDrawable.drawable.e()) {
                return;
            }
            final g gVar = (g) nVGifDrawable.drawable;
            boolean z6 = nVGifDrawable.originalFile.length() > 0;
            synchronized (nVGifDrawable) {
                try {
                    try {
                        if (z6) {
                            bVarP = gVar.p(nVGifDrawable.originalFile);
                        } else {
                            b bVarO = gVar.o(nVGifDrawable.writingFile);
                            if (bVarO != null) {
                                NVGifDrawable.CHECK_HANDLER.post(new Runnable() { // from class: com.narvii.util.drawables.gif.NVGifDrawable.CheckTask.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        gVar.f();
                                    }
                                });
                            }
                            bVarP = bVarO;
                        }
                        if (bVarP != null) {
                            nVGifDrawable.setDrawable(bVarP);
                            nVGifDrawable.scheduleSelf(nVGifDrawable, 0L);
                        } else {
                            NVGifDrawable.CHECK_HANDLER.postDelayed(this, 400L);
                        }
                    } catch (Exception unused) {
                        NVGifDrawable.CHECK_HANDLER.postDelayed(this, 800L);
                    } catch (OutOfMemoryError e) {
                        OomHelper.test(e);
                        NVGifDrawable.CHECK_HANDLER.postDelayed(this, 1600L);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        CheckTask(NVGifDrawable nVGifDrawable) {
            this.wr = new WeakReference<>(nVGifDrawable);
        }
    }

    class DrawToBuffer implements sa.a {
        @Override // sa.a
        public void onBoundsChange(Rect rect) {
        }

        DrawToBuffer() {
        }

        @Override // sa.a
        public void onDraw(Canvas canvas, Paint paint, Bitmap bitmap) {
            NVGifDrawable.this.buffer = bitmap;
        }
    }

    public NVGifDrawable(@NonNull File file) throws IOException {
        this(file, (File) null);
    }

    @Override // android.graphics.drawable.Drawable
    public synchronized void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        this.drawable.setBounds(bounds);
        this.drawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return 255;
    }

    @Override // android.graphics.drawable.Drawable
    public synchronized int getIntrinsicHeight() {
        return this.drawable.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public synchronized int getIntrinsicWidth() {
        return this.drawable.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public synchronized int getMinimumHeight() {
        return this.drawable.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public synchronized int getMinimumWidth() {
        return this.drawable.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public synchronized int getOpacity() {
        return this.drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void invalidateDrawable(Drawable drawable) {
        if (drawable == this.drawable) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void scheduleDrawable(Drawable drawable, Runnable runnable, long j6) {
        if (drawable == this.drawable) {
            scheduleSelf(runnable, j6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z6) {
    }

    synchronized void setDrawable(b bVar) {
        try {
            b bVar2 = this.drawable;
            if (bVar2 instanceof g) {
                ((g) bVar2).dListener = null;
            }
            if (bVar2 != null) {
                bVar2.setCallback(null);
            }
            this.drawable = bVar;
            if (bVar instanceof g) {
                ((g) bVar).dListener = this;
            }
            if (bVar != null) {
                bVar.setCallback(this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z6) {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public NVGifDrawable(@NonNull File file, @Nullable File file2) throws IOException {
        this.originalFile = file;
        this.writingFile = file2;
        if (file.length() > 0) {
            setDrawable(new k(file));
        } else {
            if (file2 == null) {
                throw new FileNotFoundException(file.getAbsolutePath());
            }
            setDrawable(new g(file2));
        }
    }

    private void scheduleCheck() {
        if (this.originalFile == null || this.writingFile == null) {
            return;
        }
        Handler handler = CHECK_HANDLER;
        if (handler == null) {
            HandlerThread handlerThread = new HandlerThread("gifcheck");
            handlerThread.start();
            CHECK_HANDLER = new Handler(handlerThread.getLooper());
        } else {
            CheckTask checkTask = this.task;
            if (checkTask != null) {
                handler.removeCallbacks(checkTask);
            }
        }
        if (this.task == null) {
            this.task = new CheckTask(this);
        }
        CHECK_HANDLER.postDelayed(this.task, 400L);
    }

    public int getCurrentFrameIndex() {
        return this.drawable.b();
    }

    public int getNumberOfFrames() {
        return this.drawable.d();
    }

    boolean isWriting() {
        return this.drawable instanceof g;
    }

    public void recycle() {
        this.drawable.f();
    }

    public String toString() {
        return this.drawable.toString() + ", writing: " + isWriting();
    }

    @Override // pl.droidsonroids.gif.a
    public void onAnimationCompleted(int i10) {
        scheduleCheck();
    }

    @Override // java.lang.Runnable
    public void run() {
        invalidateSelf();
    }

    public synchronized Bitmap draw() {
        try {
            if (this.drawToCanvas == null) {
                this.drawToCanvas = new Canvas();
            }
            if (this.drawToBuffer == null) {
                this.drawToBuffer = new DrawToBuffer();
            }
            this.drawable.i(this.drawToBuffer);
            this.drawable.draw(this.drawToCanvas);
            this.drawable.i(null);
        } catch (Throwable th) {
            throw th;
        }
        return this.buffer;
    }

    public NVGifDrawable(AssetManager assetManager, String str) throws IOException {
        this.originalFile = null;
        this.writingFile = null;
        setDrawable(new b(assetManager, str));
    }
}
