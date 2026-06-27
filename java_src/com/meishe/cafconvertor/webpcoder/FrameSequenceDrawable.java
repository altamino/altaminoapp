package com.meishe.cafconvertor.webpcoder;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.meishe.cafconvertor.webpcoder.FrameSequence;

/* loaded from: classes2.dex */
public class FrameSequenceDrawable extends Drawable implements Animatable, Runnable {
    public static final int LOOP_DEFAULT = 3;
    public static final int LOOP_INF = 2;
    public static final int LOOP_ONCE = 1;
    private static String a = FrameSequenceDrawable.class.getSimpleName();
    public static BitmapProvider sAllocatingBitmapProvider = new BitmapProvider() { // from class: com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.1
        @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.BitmapProvider
        public Bitmap acquireBitmap(int i, int i2) {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        }

        @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.BitmapProvider
        public void releaseBitmap(Bitmap bitmap) {
        }
    };
    private OnCallback A;
    private final Object b;
    private HandlerThread c;
    private Handler d;
    private final FrameSequence e;
    private final FrameSequence.State f;
    private final Paint g;
    private BitmapShader h;
    private BitmapShader i;
    private final Rect j;
    private boolean k;
    private final Object l;
    private final BitmapProvider m;
    private boolean n;
    private Bitmap o;
    private Bitmap p;
    private int q;
    private int r;
    private int s;
    private long t;
    private long u;
    private int v;
    private OnAnimationListener w;
    private Runnable x;
    private Runnable y;
    private Runnable z;

    public interface BitmapProvider {
        Bitmap acquireBitmap(int i, int i2);

        void releaseBitmap(Bitmap bitmap);
    }

    public interface OnAnimationListener {
        void onFinished(FrameSequenceDrawable frameSequenceDrawable);

        void onStart(FrameSequenceDrawable frameSequenceDrawable);
    }

    public interface OnCallback {
        void callback(int i, Bitmap bitmap, long j);
    }

    public FrameSequenceDrawable(FrameSequence frameSequence) {
        this(frameSequence, sAllocatingBitmapProvider);
    }

    public FrameSequenceDrawable(FrameSequence frameSequence, BitmapProvider bitmapProvider) {
        this.b = new Object();
        this.l = new Object();
        this.n = false;
        this.s = 3;
        this.x = new Runnable() { // from class: com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.2
            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmap;
                synchronized (FrameSequenceDrawable.this.l) {
                    if (FrameSequenceDrawable.this.n) {
                        return;
                    }
                    int i = FrameSequenceDrawable.this.v;
                    if (i < 0) {
                        return;
                    }
                    Bitmap bitmap2 = FrameSequenceDrawable.this.p;
                    FrameSequenceDrawable.this.q = 2;
                    long frame = FrameSequenceDrawable.this.f.getFrame(i, bitmap2, i - 2);
                    if (frame < 20) {
                        frame = 100;
                    }
                    boolean z = false;
                    synchronized (FrameSequenceDrawable.this.l) {
                        bitmap = null;
                        if (FrameSequenceDrawable.this.n) {
                            Bitmap bitmap3 = FrameSequenceDrawable.this.p;
                            FrameSequenceDrawable.this.p = null;
                            bitmap = bitmap3;
                        } else if (FrameSequenceDrawable.this.v >= 0 && FrameSequenceDrawable.this.q == 2) {
                            z = true;
                            FrameSequenceDrawable.this.u = FrameSequenceDrawable.this.t + frame;
                            FrameSequenceDrawable.this.q = 3;
                        }
                    }
                    if (z) {
                        if (FrameSequenceDrawable.this.A != null) {
                            FrameSequenceDrawable.this.A.callback(i, FrameSequenceDrawable.this.p, frame);
                        }
                        FrameSequenceDrawable frameSequenceDrawable = FrameSequenceDrawable.this;
                        frameSequenceDrawable.scheduleSelf(frameSequenceDrawable, frameSequenceDrawable.u);
                    }
                    if (bitmap != null) {
                        FrameSequenceDrawable.this.m.releaseBitmap(bitmap);
                    }
                }
            }
        };
        this.y = new Runnable() { // from class: com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.3
            @Override // java.lang.Runnable
            public void run() {
                if (FrameSequenceDrawable.this.w != null) {
                    FrameSequenceDrawable.this.w.onStart(FrameSequenceDrawable.this);
                }
            }
        };
        this.z = new Runnable() { // from class: com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.4
            @Override // java.lang.Runnable
            public void run() {
                if (FrameSequenceDrawable.this.w != null) {
                    FrameSequenceDrawable.this.w.onFinished(FrameSequenceDrawable.this);
                }
            }
        };
        if (frameSequence == null || bitmapProvider == null) {
            throw new IllegalArgumentException();
        }
        this.e = frameSequence;
        this.f = frameSequence.a();
        int width = frameSequence.getWidth();
        int height = frameSequence.getHeight();
        this.m = bitmapProvider;
        this.o = a(bitmapProvider, width, height);
        this.p = a(bitmapProvider, width, height);
        this.j = new Rect(0, 0, width, height);
        this.g = new Paint();
        this.g.setFilterBitmap(true);
        Bitmap bitmap = this.o;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.h = new BitmapShader(bitmap, tileMode, tileMode);
        Bitmap bitmap2 = this.p;
        Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
        this.i = new BitmapShader(bitmap2, tileMode2, tileMode2);
        this.t = 0L;
        this.v = -1;
        this.f.getFrame(0, this.o, -1);
        a();
    }

    private static Bitmap a(BitmapProvider bitmapProvider, int i, int i2) {
        Bitmap bitmapAcquireBitmap = bitmapProvider.acquireBitmap(i, i2);
        if (bitmapAcquireBitmap.getWidth() < i || bitmapAcquireBitmap.getHeight() < i2 || bitmapAcquireBitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            throw new IllegalArgumentException("Invalid bitmap provided");
        }
        return bitmapAcquireBitmap;
    }

    private void a() {
        synchronized (this.b) {
            if (this.c != null) {
                return;
            }
            this.c = new HandlerThread("FrameSequence decoding thread", 10);
            this.c.start();
            this.d = new Handler(this.c.getLooper());
        }
    }

    private void b() {
        if (this.n) {
            throw new IllegalStateException("Cannot perform operation on recycled drawable");
        }
    }

    private void c() {
        this.q = 1;
        this.v = (this.v + 1) % this.e.getFrameCount();
        this.d.post(this.x);
    }

    public void destroy() {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this.m == null) {
            throw new IllegalStateException("BitmapProvider must be non-null");
        }
        synchronized (this.l) {
            b();
            bitmap = this.o;
            this.o = null;
            if (this.q != 2) {
                bitmap2 = this.p;
                this.p = null;
            } else {
                bitmap2 = null;
            }
            this.n = true;
        }
        this.f.destroy();
        this.m.releaseBitmap(bitmap);
        if (bitmap2 != null) {
            this.m.releaseBitmap(bitmap2);
        }
        HandlerThread handlerThread = this.c;
        if (handlerThread != null) {
            handlerThread.quit();
            this.c = null;
        }
        Handler handler = this.d;
        if (handler != null) {
            handler.removeCallbacks(this.x);
            this.x = null;
        }
        unscheduleSelf(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        synchronized (this.l) {
            b();
            if (this.q == 3 && this.u - SystemClock.uptimeMillis() <= 0) {
                this.q = 4;
            }
            if (isRunning() && this.q == 4) {
                Bitmap bitmap = this.p;
                this.p = this.o;
                this.o = bitmap;
                BitmapShader bitmapShader = this.i;
                this.i = this.h;
                this.h = bitmapShader;
                this.t = SystemClock.uptimeMillis();
                if (this.r == 0 && this.v == 0) {
                    scheduleSelf(this.y, 0L);
                }
                boolean z = true;
                if (this.v == this.e.getFrameCount() - 1) {
                    this.r++;
                    if ((this.s == 1 && this.r == 1) || (this.s == 3 && this.r == this.e.getDefaultLoopCount())) {
                        z = false;
                    }
                }
                if (z) {
                    c();
                } else {
                    scheduleSelf(this.z, 0L);
                }
            }
        }
        if (!this.k) {
            this.g.setShader(null);
            canvas.drawBitmap(this.o, this.j, getBounds(), this.g);
            return;
        }
        Rect bounds = getBounds();
        this.g.setShader(this.h);
        float fWidth = bounds.width();
        float fHeight = bounds.height();
        canvas.drawCircle(fWidth / 2.0f, fHeight / 2.0f, Math.min(fWidth, fHeight) / 2.0f, this.g);
    }

    protected void finalize() throws Throwable {
        try {
            this.f.destroy();
        } finally {
            super.finalize();
        }
    }

    public int getCount() {
        FrameSequence frameSequence = this.e;
        if (frameSequence != null) {
            return frameSequence.getFrameCount();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.e.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.e.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.e.isOpaque() ? -1 : -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        boolean z;
        synchronized (this.l) {
            z = this.v > -1 && !this.n;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.n) {
            return;
        }
        boolean z = false;
        synchronized (this.l) {
            if (this.v >= 0 && this.q == 3) {
                this.q = 4;
                z = true;
            }
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.g.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.g.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.g.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            stop();
        } else if (z2 || visible) {
            stop();
            start();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        b();
        this.r = 0;
        c();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            unscheduleSelf(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        synchronized (this.l) {
            this.v = -1;
            this.q = 0;
        }
        super.unscheduleSelf(runnable);
    }
}
