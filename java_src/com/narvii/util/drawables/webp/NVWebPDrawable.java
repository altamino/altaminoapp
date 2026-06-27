package com.narvii.util.drawables.webp;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.support.rastermill.FrameSequence;
import android.support.rastermill.FrameSequenceDrawable;
import com.narvii.util.Utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class NVWebPDrawable extends Drawable implements Drawable.Callback {
    Drawable.Callback callback;
    public FrameSequenceDrawable drawable;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v3 */
    public static NVWebPDrawable getFromFile(File file) throws Throwable {
        FileInputStream fileInputStream;
        NVWebPDrawable nVWebPDrawable = null;
        if (file.exists()) {
            ?? r0 = (file.length() > 0L ? 1 : (file.length() == 0L ? 0 : -1));
            try {
                if (r0 > 0) {
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
                            Utils.safeClose(fileInputStream);
                            return nVWebPDrawable;
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            e.printStackTrace();
                            Utils.safeClose(fileInputStream);
                            return nVWebPDrawable;
                        }
                    } catch (IOException e3) {
                        e = e3;
                        fileInputStream = null;
                        e.printStackTrace();
                        Utils.safeClose(fileInputStream);
                        return nVWebPDrawable;
                    } catch (IllegalArgumentException e4) {
                        e = e4;
                        fileInputStream = null;
                        e.printStackTrace();
                        Utils.safeClose(fileInputStream);
                        return nVWebPDrawable;
                    } catch (Throwable th) {
                        th = th;
                        r0 = 0;
                        Utils.safeClose((InputStream) r0);
                        throw th;
                    }
                    Utils.safeClose(fileInputStream);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return nVWebPDrawable;
    }

    public NVWebPDrawable(FrameSequenceDrawable frameSequenceDrawable) {
        this.drawable = frameSequenceDrawable;
        this.drawable.setCallback(this);
    }

    public Bitmap draw() {
        this.drawable.setBounds(getBounds());
        return this.drawable.draw();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.drawable.setBounds(getBounds());
        this.drawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.drawable.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.drawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.drawable.getOpacity();
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

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.drawable) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable == this.drawable) {
            scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
