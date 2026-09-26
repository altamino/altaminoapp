package com.google.android.material.floatingactionbutton;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.shape.k;
import com.google.android.material.shape.l;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
class c extends Drawable {
    private static final float DRAW_STROKE_WIDTH_MULTIPLE = 1.3333f;

    @Nullable
    private ColorStateList borderTint;

    @Dimension
    float borderWidth;

    @ColorInt
    private int bottomInnerStrokeColor;

    @ColorInt
    private int bottomOuterStrokeColor;

    @ColorInt
    private int currentBorderTintColor;

    @NonNull
    private final Paint paint;
    private k shapeAppearanceModel;

    @ColorInt
    private int topInnerStrokeColor;

    @ColorInt
    private int topOuterStrokeColor;
    private final l pathProvider = l.k();
    private final Path shapePath = new Path();
    private final Rect rect = new Rect();
    private final RectF rectF = new RectF();
    private final RectF boundsRectF = new RectF();
    private final b state = new b();
    private boolean invalidateShader = true;

    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return c.this;
        }
    }

    void e(@ColorInt int i10, @ColorInt int i11, @ColorInt int i12, @ColorInt int i13) {
        this.topOuterStrokeColor = i10;
        this.topInnerStrokeColor = i11;
        this.bottomOuterStrokeColor = i12;
        this.bottomInnerStrokeColor = i13;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.borderWidth > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.invalidateShader = true;
    }

    @NonNull
    private Shader a() {
        Rect rect = this.rect;
        copyBounds(rect);
        float fHeight = this.borderWidth / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{ColorUtils.j(this.topOuterStrokeColor, this.currentBorderTintColor), ColorUtils.j(this.topInnerStrokeColor, this.currentBorderTintColor), ColorUtils.j(ColorUtils.o(this.topInnerStrokeColor, 0), this.currentBorderTintColor), ColorUtils.j(ColorUtils.o(this.bottomInnerStrokeColor, 0), this.currentBorderTintColor), ColorUtils.j(this.bottomInnerStrokeColor, this.currentBorderTintColor), ColorUtils.j(this.bottomOuterStrokeColor, this.currentBorderTintColor)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    @NonNull
    protected RectF b() {
        this.boundsRectF.set(getBounds());
        return this.boundsRectF;
    }

    void c(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.currentBorderTintColor = colorStateList.getColorForState(getState(), this.currentBorderTintColor);
        }
        this.borderTint = colorStateList;
        this.invalidateShader = true;
        invalidateSelf();
    }

    public void d(@Dimension float f) {
        if (this.borderWidth != f) {
            this.borderWidth = f;
            this.paint.setStrokeWidth(f * DRAW_STROKE_WIDTH_MULTIPLE);
            this.invalidateShader = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.invalidateShader) {
            this.paint.setShader(a());
            this.invalidateShader = false;
        }
        float strokeWidth = this.paint.getStrokeWidth() / 2.0f;
        copyBounds(this.rect);
        this.rectF.set(this.rect);
        float fMin = Math.min(this.shapeAppearanceModel.r().a(b()), this.rectF.width() / 2.0f);
        if (this.shapeAppearanceModel.u(b())) {
            this.rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.rectF, fMin, fMin, this.paint);
        }
    }

    public void f(k kVar) {
        this.shapeAppearanceModel = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.shapeAppearanceModel.u(b())) {
            outline.setRoundRect(getBounds(), this.shapeAppearanceModel.r().a(b()));
            return;
        }
        copyBounds(this.rect);
        this.rectF.set(this.rect);
        this.pathProvider.d(this.shapeAppearanceModel, 1.0f, this.rectF, this.shapePath);
        if (this.shapePath.isConvex()) {
            outline.setConvexPath(this.shapePath);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        if (!this.shapeAppearanceModel.u(b())) {
            return true;
        }
        int iRound = Math.round(this.borderWidth);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.borderTint;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.borderTint;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.currentBorderTintColor)) != this.currentBorderTintColor) {
            this.invalidateShader = true;
            this.currentBorderTintColor = colorForState;
        }
        if (this.invalidateShader) {
            invalidateSelf();
        }
        return this.invalidateShader;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange int i10) {
        this.paint.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    c(k kVar) {
        this.shapeAppearanceModel = kVar;
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
    }
}
