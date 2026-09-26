package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class c {
    public static final int BITMAP_SHADER = 0;
    public static final int CLIP_PATH = 1;
    private static final boolean DEBUG = false;
    public static final int REVEAL_ANIMATOR = 2;
    public static final int STRATEGY = 2;
    private boolean buildingCircularRevealCache;
    private Paint debugPaint;
    private final a delegate;
    private boolean hasCircularRevealCache;

    @Nullable
    private Drawable overlayDrawable;

    @Nullable
    private d.e revealInfo;

    @NonNull
    private final Paint revealPaint;

    @NonNull
    private final Path revealPath;

    @NonNull
    private final Paint scrimPaint;

    @NonNull
    private final View view;

    public interface a {
        void b(Canvas canvas);

        boolean c();
    }

    private boolean o() {
        return (this.buildingCircularRevealCache || this.overlayDrawable == null || this.revealInfo == null) ? false : true;
    }

    @Nullable
    public Drawable e() {
        return this.overlayDrawable;
    }

    private float g(@NonNull d.e eVar) {
        return n3.a.b(eVar.centerX, eVar.centerY, 0.0f, 0.0f, this.view.getWidth(), this.view.getHeight());
    }

    private void i() {
        if (STRATEGY == 1) {
            this.revealPath.rewind();
            d.e eVar = this.revealInfo;
            if (eVar != null) {
                this.revealPath.addCircle(eVar.centerX, eVar.centerY, eVar.radius, Path.Direction.CW);
            }
        }
        this.view.invalidate();
    }

    private boolean n() {
        d.e eVar = this.revealInfo;
        boolean z6 = eVar == null || eVar.a();
        if (STRATEGY == 0) {
            return !z6 && this.hasCircularRevealCache;
        }
        return !z6;
    }

    private boolean p() {
        return (this.buildingCircularRevealCache || Color.alpha(this.scrimPaint.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (STRATEGY == 0) {
            this.buildingCircularRevealCache = true;
            this.hasCircularRevealCache = false;
            this.view.buildDrawingCache();
            Bitmap drawingCache = this.view.getDrawingCache();
            if (drawingCache == null && this.view.getWidth() != 0 && this.view.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.view.getWidth(), this.view.getHeight(), Bitmap.Config.ARGB_8888);
                this.view.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.revealPaint;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.buildingCircularRevealCache = false;
            this.hasCircularRevealCache = true;
        }
    }

    public void b() {
        if (STRATEGY == 0) {
            this.hasCircularRevealCache = false;
            this.view.destroyDrawingCache();
            this.revealPaint.setShader(null);
            this.view.invalidate();
        }
    }

    @ColorInt
    public int f() {
        return this.scrimPaint.getColor();
    }

    @Nullable
    public d.e h() {
        d.e eVar = this.revealInfo;
        if (eVar == null) {
            return null;
        }
        d.e eVar2 = new d.e(eVar);
        if (eVar2.a()) {
            eVar2.radius = g(eVar2);
        }
        return eVar2;
    }

    public boolean j() {
        return this.delegate.c() && !n();
    }

    public void k(@Nullable Drawable drawable) {
        this.overlayDrawable = drawable;
        this.view.invalidate();
    }

    public void l(@ColorInt int i10) {
        this.scrimPaint.setColor(i10);
        this.view.invalidate();
    }

    public void m(@Nullable d.e eVar) {
        if (eVar == null) {
            this.revealInfo = null;
        } else {
            d.e eVar2 = this.revealInfo;
            if (eVar2 == null) {
                this.revealInfo = new d.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (n3.a.c(eVar.radius, g(eVar), 1.0E-4f)) {
                this.revealInfo.radius = Float.MAX_VALUE;
            }
        }
        i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(a aVar) {
        this.delegate = aVar;
        View view = (View) aVar;
        this.view = view;
        view.setWillNotDraw(false);
        this.revealPath = new Path();
        this.revealPaint = new Paint(7);
        Paint paint = new Paint(1);
        this.scrimPaint = paint;
        paint.setColor(0);
    }

    private void d(@NonNull Canvas canvas) {
        if (o()) {
            Rect bounds = this.overlayDrawable.getBounds();
            float fWidth = this.revealInfo.centerX - (bounds.width() / 2.0f);
            float fHeight = this.revealInfo.centerY - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.overlayDrawable.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    public void c(@NonNull Canvas canvas) {
        if (n()) {
            int i10 = STRATEGY;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        this.delegate.b(canvas);
                        if (p()) {
                            canvas.drawRect(0.0f, 0.0f, this.view.getWidth(), this.view.getHeight(), this.scrimPaint);
                        }
                    } else {
                        throw new IllegalStateException("Unsupported strategy " + i10);
                    }
                } else {
                    int iSave = canvas.save();
                    canvas.clipPath(this.revealPath);
                    this.delegate.b(canvas);
                    if (p()) {
                        canvas.drawRect(0.0f, 0.0f, this.view.getWidth(), this.view.getHeight(), this.scrimPaint);
                    }
                    canvas.restoreToCount(iSave);
                }
            } else {
                d.e eVar = this.revealInfo;
                canvas.drawCircle(eVar.centerX, eVar.centerY, eVar.radius, this.revealPaint);
                if (p()) {
                    d.e eVar2 = this.revealInfo;
                    canvas.drawCircle(eVar2.centerX, eVar2.centerY, eVar2.radius, this.scrimPaint);
                }
            }
        } else {
            this.delegate.b(canvas);
            if (p()) {
                canvas.drawRect(0.0f, 0.0f, this.view.getWidth(), this.view.getHeight(), this.scrimPaint);
            }
        }
        d(canvas);
    }
}
