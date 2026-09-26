package com.narvii.util.drawables;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class WrapDrawable<T extends Drawable> extends Drawable {
    protected final T wrapped;

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return 255;
    }

    public T getWrappedDrawable() {
        return this.wrapped;
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

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z6) {
    }

    protected abstract void setupDistCallback();

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.wrapped.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.wrapped.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.wrapped.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.wrapped.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.wrapped.getOpacity();
    }

    public WrapDrawable(T t5) {
        this.wrapped = t5;
        setupDistCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds == null) {
            return;
        }
        this.wrapped.setBounds(bounds);
        this.wrapped.draw(canvas);
    }
}
