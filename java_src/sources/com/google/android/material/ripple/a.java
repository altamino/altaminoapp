package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.g;
import com.google.android.material.shape.k;
import com.google.android.material.shape.o;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public class a extends Drawable implements o, TintAwareDrawable {
    private b drawableState;

    static final class b extends Drawable.ConstantState {

        @NonNull
        g delegate;
        boolean shouldDrawDelegate;

        public b(g gVar) {
            this.delegate = gVar;
            this.shouldDrawDelegate = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(@NonNull b bVar) {
            this.delegate = (g) bVar.delegate.getConstantState().newDrawable();
            this.shouldDrawDelegate = bVar.shouldDrawDelegate;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new b(this));
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.drawableState;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public a(k kVar) {
        this(new b(new g(kVar)));
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a mutate() {
        this.drawableState = new b(this.drawableState);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.drawableState;
        if (bVar.shouldDrawDelegate) {
            bVar.delegate.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.drawableState.delegate.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.drawableState.delegate.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.drawableState.delegate.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.o
    public void setShapeAppearanceModel(@NonNull k kVar) {
        this.drawableState.delegate.setShapeAppearanceModel(kVar);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(@ColorInt int i10) {
        this.drawableState.delegate.setTint(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.drawableState.delegate.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.drawableState.delegate.setTintMode(mode);
    }

    private a(b bVar) {
        this.drawableState = bVar;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.drawableState.delegate.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NonNull int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.drawableState.delegate.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zE = com.google.android.material.ripple.b.e(iArr);
        b bVar = this.drawableState;
        if (bVar.shouldDrawDelegate != zE) {
            bVar.shouldDrawDelegate = zE;
            return true;
        }
        return zOnStateChange;
    }
}
