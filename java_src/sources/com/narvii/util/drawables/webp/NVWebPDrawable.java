package com.narvii.util.drawables.webp;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.support.rastermill.FrameSequence;
import android.support.rastermill.FrameSequenceDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public class NVWebPDrawable extends Drawable implements Drawable.Callback {
    Drawable.Callback callback;
    public FrameSequenceDrawable drawable;

    public Bitmap draw() {
        this.drawable.setBounds(getBounds());
        return this.drawable.draw();
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
    public int getOpacity() {
        return this.drawable.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        if (drawable == this.drawable) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j6) {
        if (drawable == this.drawable) {
            scheduleSelf(runnable, j6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.drawable.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter);
    }

    public NVWebPDrawable(@NonNull FrameSequenceDrawable frameSequenceDrawable) {
        this.drawable = frameSequenceDrawable;
        frameSequenceDrawable.setCallback(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    public static NVWebPDrawable getFromFile(@NonNull File file) throws Throwable {
        FileInputStream fileInputStream;
        NVWebPDrawable nVWebPDrawable = null;
        nVWebPDrawable = null;
        nVWebPDrawable = null;
        nVWebPDrawable = null;
        ?? r1 = 0;
        nVWebPDrawable = null;
        if (file.exists()) {
            ?? r5 = (file.length() > 0L ? 1 : (file.length() == 0L ? 0 : -1));
            try {
                if (r5 > 0) {
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            FrameSequence frameSequenceDecodeStream = FrameSequence.decodeStream(fileInputStream);
                            if (frameSequenceDecodeStream != null && frameSequenceDecodeStream.getFrameCount() > 0) {
                                FrameSequenceDrawable frameSequenceDrawable = new FrameSequenceDrawable(frameSequenceDecodeStream);
                                if (frameSequenceDecodeStream.getFrameCount() == 1) {
                                    frameSequenceDrawable.setLoopBehavior(1);
                                } else {
                                    frameSequenceDrawable.setLoopBehavior(2);
                                    frameSequenceDrawable.start();
                                }
                                nVWebPDrawable = new NVWebPDrawable(frameSequenceDrawable);
                            }
                        } catch (IOException e) {
                            e = e;
                            e.printStackTrace();
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            e.printStackTrace();
                        }
                    } catch (IOException e6) {
                        e = e6;
                        fileInputStream = null;
                        e.printStackTrace();
                        Utils.safeClose(fileInputStream);
                        return nVWebPDrawable;
                    } catch (IllegalArgumentException e7) {
                        e = e7;
                        fileInputStream = null;
                        e.printStackTrace();
                        Utils.safeClose(fileInputStream);
                        return nVWebPDrawable;
                    } catch (Throwable th) {
                        th = th;
                        Utils.safeClose((InputStream) r1);
                        throw th;
                    }
                    Utils.safeClose(fileInputStream);
                }
            } catch (Throwable th2) {
                th = th2;
                r1 = r5;
            }
        }
        return nVWebPDrawable;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.drawable.setBounds(getBounds());
        this.drawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
