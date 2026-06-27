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
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import pl.droidsonroids.gif.AnimationListener;
import pl.droidsonroids.gif.GifDrawable;
import pl.droidsonroids.gif.LGifDrawable;
import pl.droidsonroids.gif.SafeGifDrawable;
import pl.droidsonroids.gif.transforms.Transform;

/* loaded from: classes3.dex */
public class NVGifDrawable extends Drawable implements Drawable.Callback, Runnable, AnimationListener {
    static Handler CHECK_HANDLER = null;
    static final int CHECK_INTERVAL = 400;
    Bitmap buffer;
    Drawable.Callback callback;
    DrawToBuffer drawToBuffer;
    Canvas drawToCanvas;
    GifDrawable drawable;
    final File originalFile;
    CheckTask task;
    final File writingFile;

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return 255;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
    }

    public NVGifDrawable(File file) throws IOException {
        this(file, (File) null);
    }

    public NVGifDrawable(File file, File file2) throws IOException {
        this.originalFile = file;
        this.writingFile = file2;
        if (this.originalFile.length() > 0) {
            setDrawable(new SafeGifDrawable(this.originalFile));
        } else {
            if (file2 != null) {
                setDrawable(new LGifDrawable(file2));
                return;
            }
            throw new FileNotFoundException(file.getAbsolutePath());
        }
    }

    public NVGifDrawable(AssetManager assetManager, String str) throws IOException {
        this.originalFile = null;
        this.writingFile = null;
        setDrawable(new GifDrawable(assetManager, str));
    }

    boolean isWriting() {
        return this.drawable instanceof LGifDrawable;
    }

    public void recycle() {
        this.drawable.recycle();
    }

    public int getNumberOfFrames() {
        return this.drawable.getNumberOfFrames();
    }

    public int getCurrentFrameIndex() {
        return this.drawable.getCurrentFrameIndex();
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
    public synchronized int getOpacity() {
        return this.drawable.getOpacity();
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
    public synchronized void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        this.drawable.setBounds(bounds);
        this.drawable.draw(canvas);
    }

    synchronized void setDrawable(GifDrawable gifDrawable) {
        if (this.drawable instanceof LGifDrawable) {
            ((LGifDrawable) this.drawable).dListener = null;
        }
        if (this.drawable != null) {
            this.drawable.setCallback(null);
        }
        this.drawable = gifDrawable;
        if (gifDrawable instanceof LGifDrawable) {
            ((LGifDrawable) gifDrawable).dListener = this;
        }
        if (gifDrawable != null) {
            gifDrawable.setCallback(this);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void invalidateDrawable(Drawable drawable) {
        if (drawable == this.drawable) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.drawable) {
            scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public synchronized void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public String toString() {
        return this.drawable.toString() + ", writing: " + isWriting();
    }

    public synchronized Bitmap draw() {
        if (this.drawToCanvas == null) {
            this.drawToCanvas = new Canvas();
        }
        if (this.drawToBuffer == null) {
            this.drawToBuffer = new DrawToBuffer();
        }
        this.drawable.setTransform(this.drawToBuffer);
        this.drawable.draw(this.drawToCanvas);
        this.drawable.setTransform(null);
        return this.buffer;
    }

    class DrawToBuffer implements Transform {
        @Override // pl.droidsonroids.gif.transforms.Transform
        public void onBoundsChange(Rect rect) {
        }

        DrawToBuffer() {
        }

        @Override // pl.droidsonroids.gif.transforms.Transform
        public void onDraw(Canvas canvas, Paint paint, Bitmap bitmap) {
            NVGifDrawable.this.buffer = bitmap;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        invalidateSelf();
    }

    @Override // pl.droidsonroids.gif.AnimationListener
    public void onAnimationCompleted(int i) {
        scheduleCheck();
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

    static class CheckTask implements Runnable {
        final WeakReference<NVGifDrawable> wr;

        CheckTask(NVGifDrawable nVGifDrawable) {
            this.wr = new WeakReference<>(nVGifDrawable);
        }

        @Override // java.lang.Runnable
        public void run() {
            GifDrawable gifDrawableRecreateFinal;
            NVGifDrawable nVGifDrawable = this.wr.get();
            if (nVGifDrawable == null || !nVGifDrawable.isWriting() || nVGifDrawable.drawable.isRecycled()) {
                return;
            }
            final LGifDrawable lGifDrawable = (LGifDrawable) nVGifDrawable.drawable;
            boolean z = nVGifDrawable.originalFile.length() > 0;
            synchronized (nVGifDrawable) {
                try {
                    if (z) {
                        gifDrawableRecreateFinal = lGifDrawable.recreateFinal(nVGifDrawable.originalFile);
                    } else {
                        GifDrawable gifDrawableRecreate = lGifDrawable.recreate(nVGifDrawable.writingFile);
                        if (gifDrawableRecreate != null) {
                            NVGifDrawable.CHECK_HANDLER.post(new Runnable() { // from class: com.narvii.util.drawables.gif.NVGifDrawable.CheckTask.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    lGifDrawable.recycle();
                                }
                            });
                        }
                        gifDrawableRecreateFinal = gifDrawableRecreate;
                    }
                    if (gifDrawableRecreateFinal != null) {
                        nVGifDrawable.setDrawable(gifDrawableRecreateFinal);
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
            }
        }
    }
}
