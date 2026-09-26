package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.load.m;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c extends Drawable implements g.b, Animatable, Animatable2Compat {
    private static final int GRAVITY = 119;
    public static final int LOOP_FOREVER = -1;
    public static final int LOOP_INTRINSIC = 0;
    private List<Animatable2Compat.AnimationCallback> animationCallbacks;
    private boolean applyGravity;
    private Rect destRect;
    private boolean isRecycled;
    private boolean isRunning;
    private boolean isStarted;
    private boolean isVisible;
    private int loopCount;
    private int maxLoopCount;
    private Paint paint;
    private final a state;

    static final class a extends Drawable.ConstantState {

        @VisibleForTesting
        final g frameLoader;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new c(this);
        }

        a(g gVar) {
            this.frameLoader = gVar;
        }
    }

    @Deprecated
    public c(Context context, com.bumptech.glide.gifdecoder.a aVar, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, m<Bitmap> mVar, int i10, int i11, Bitmap bitmap) {
        this(context, aVar, mVar, i10, i11, bitmap);
    }

    private void l() {
        this.loopCount = 0;
    }

    private void o() {
        this.isRunning = false;
        this.state.frameLoader.s(this);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.isRunning;
    }

    public void k() {
        this.isRecycled = true;
        this.state.frameLoader.a();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.isStarted = true;
        l();
        if (this.isVisible) {
            n();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.isStarted = false;
        o();
    }

    public c(Context context, com.bumptech.glide.gifdecoder.a aVar, m<Bitmap> mVar, int i10, int i11, Bitmap bitmap) {
        this(new a(new g(com.bumptech.glide.b.c(context), aVar, i10, i11, mVar, bitmap)));
    }

    private Rect d() {
        if (this.destRect == null) {
            this.destRect = new Rect();
        }
        return this.destRect;
    }

    private Paint h() {
        if (this.paint == null) {
            this.paint = new Paint(2);
        }
        return this.paint;
    }

    private void j() {
        List<Animatable2Compat.AnimationCallback> list = this.animationCallbacks;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.animationCallbacks.get(i10).a(this);
            }
        }
    }

    private void n() {
        com.bumptech.glide.util.j.a(!this.isRecycled, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.state.frameLoader.f() == 1) {
            invalidateSelf();
        } else {
            if (this.isRunning) {
                return;
            }
            this.isRunning = true;
            this.state.frameLoader.r(this);
            invalidateSelf();
        }
    }

    public ByteBuffer c() {
        return this.state.frameLoader.b();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.isRecycled) {
            return;
        }
        if (this.applyGravity) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
            this.applyGravity = false;
        }
        canvas.drawBitmap(this.state.frameLoader.c(), (Rect) null, d(), h());
    }

    public Bitmap e() {
        return this.state.frameLoader.e();
    }

    public int f() {
        return this.state.frameLoader.f();
    }

    public int g() {
        return this.state.frameLoader.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.state.frameLoader.h();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.state.frameLoader.k();
    }

    public int i() {
        return this.state.frameLoader.j();
    }

    public void m(m<Bitmap> mVar, Bitmap bitmap) {
        this.state.frameLoader.o(mVar, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z6, boolean z10) {
        com.bumptech.glide.util.j.a(!this.isRecycled, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.isVisible = z6;
        if (!z6) {
            o();
        } else if (this.isStarted) {
            n();
        }
        return super.setVisible(z6, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    @Override // com.bumptech.glide.load.resource.gif.g.b
    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.loopCount++;
        }
        int i10 = this.maxLoopCount;
        if (i10 != -1 && this.loopCount >= i10) {
            j();
            stop();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        h().setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        h().setColorFilter(colorFilter);
    }

    c(a aVar) {
        this.isVisible = true;
        this.maxLoopCount = -1;
        this.state = (a) com.bumptech.glide.util.j.d(aVar);
    }
}
