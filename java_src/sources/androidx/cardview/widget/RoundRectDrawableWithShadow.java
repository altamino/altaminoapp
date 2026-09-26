package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.cardview.R;

/* JADX INFO: loaded from: classes4.dex */
class RoundRectDrawableWithShadow extends Drawable {
    private static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    private static final float SHADOW_MULTIPLIER = 1.5f;
    static RoundRectHelper sRoundRectHelper;
    private ColorStateList mBackground;
    private final RectF mCardBounds;
    private float mCornerRadius;
    private Paint mCornerShadowPaint;
    private Path mCornerShadowPath;
    private Paint mEdgeShadowPaint;
    private final int mInsetShadow;
    private float mRawMaxShadowSize;
    private float mRawShadowSize;
    private final int mShadowEndColor;
    private float mShadowSize;
    private final int mShadowStartColor;
    private boolean mDirty = true;
    private boolean mAddPaddingForCorners = true;
    private boolean mPrintedShadowClipWarning = false;
    private Paint mPaint = new Paint(5);

    interface RoundRectHelper {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    static float c(float f, float f6, boolean z6) {
        return z6 ? (float) (((double) f) + ((1.0d - COS_45) * ((double) f6))) : f;
    }

    static float d(float f, float f6, boolean z6) {
        return z6 ? (float) (((double) (f * 1.5f)) + ((1.0d - COS_45) * ((double) f6))) : f * 1.5f;
    }

    private void s(float f, float f6) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f6 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f6 + ". Must be >= 0");
        }
        float fT = t(f);
        float fT2 = t(f6);
        if (fT > fT2) {
            if (!this.mPrintedShadowClipWarning) {
                this.mPrintedShadowClipWarning = true;
            }
            fT = fT2;
        }
        if (this.mRawShadowSize == fT && this.mRawMaxShadowSize == fT2) {
            return;
        }
        this.mRawShadowSize = fT;
        this.mRawMaxShadowSize = fT2;
        this.mShadowSize = (int) ((fT * 1.5f) + this.mInsetShadow + 0.5f);
        this.mDirty = true;
        invalidateSelf();
    }

    ColorStateList f() {
        return this.mBackground;
    }

    float g() {
        return this.mCornerRadius;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    float i() {
        return this.mRawMaxShadowSize;
    }

    float l() {
        return this.mRawShadowSize;
    }

    void p(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f6 = (int) (f + 0.5f);
        if (this.mCornerRadius == f6) {
            return;
        }
        this.mCornerRadius = f6;
        this.mDirty = true;
        invalidateSelf();
    }

    private void a(Rect rect) {
        float f = this.mRawMaxShadowSize;
        float f6 = 1.5f * f;
        this.mCardBounds.set(rect.left + f, rect.top + f6, rect.right - f, rect.bottom - f6);
        b();
    }

    private void b() {
        float f = this.mCornerRadius;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f6 = this.mShadowSize;
        rectF2.inset(-f6, -f6);
        Path path = this.mCornerShadowPath;
        if (path == null) {
            this.mCornerShadowPath = new Path();
        } else {
            path.reset();
        }
        this.mCornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.mCornerShadowPath.moveTo(-this.mCornerRadius, 0.0f);
        this.mCornerShadowPath.rLineTo(-this.mShadowSize, 0.0f);
        this.mCornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.mCornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.mCornerShadowPath.close();
        float f7 = this.mCornerRadius;
        float f10 = f7 / (this.mShadowSize + f7);
        Paint paint = this.mCornerShadowPaint;
        float f11 = this.mCornerRadius + this.mShadowSize;
        int i10 = this.mShadowStartColor;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f11, new int[]{i10, i10, this.mShadowEndColor}, new float[]{0.0f, f10, 1.0f}, tileMode));
        Paint paint2 = this.mEdgeShadowPaint;
        float f12 = this.mCornerRadius;
        float f13 = this.mShadowSize;
        float f14 = (-f12) + f13;
        float f15 = (-f12) - f13;
        int i11 = this.mShadowStartColor;
        paint2.setShader(new LinearGradient(0.0f, f14, 0.0f, f15, new int[]{i11, i11, this.mShadowEndColor}, new float[]{0.0f, 0.5f, 1.0f}, tileMode));
        this.mEdgeShadowPaint.setAntiAlias(false);
    }

    private void e(Canvas canvas) {
        float f = this.mCornerRadius;
        float f6 = (-f) - this.mShadowSize;
        float f7 = f + this.mInsetShadow + (this.mRawShadowSize / 2.0f);
        float f10 = f7 * 2.0f;
        boolean z6 = this.mCardBounds.width() - f10 > 0.0f;
        boolean z10 = this.mCardBounds.height() - f10 > 0.0f;
        int iSave = canvas.save();
        RectF rectF = this.mCardBounds;
        canvas.translate(rectF.left + f7, rectF.top + f7);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z6) {
            canvas.drawRect(0.0f, f6, this.mCardBounds.width() - f10, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.mCardBounds;
        canvas.translate(rectF2.right - f7, rectF2.bottom - f7);
        canvas.rotate(180.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z6) {
            canvas.drawRect(0.0f, f6, this.mCardBounds.width() - f10, (-this.mCornerRadius) + this.mShadowSize, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.mCardBounds;
        canvas.translate(rectF3.left + f7, rectF3.bottom - f7);
        canvas.rotate(270.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z10) {
            canvas.drawRect(0.0f, f6, this.mCardBounds.height() - f10, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.mCardBounds;
        canvas.translate(rectF4.right - f7, rectF4.top + f7);
        canvas.rotate(90.0f);
        canvas.drawPath(this.mCornerShadowPath, this.mCornerShadowPaint);
        if (z10) {
            canvas.drawRect(0.0f, f6, this.mCardBounds.height() - f10, -this.mCornerRadius, this.mEdgeShadowPaint);
        }
        canvas.restoreToCount(iSave4);
    }

    private void n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.mBackground = colorStateList;
        this.mPaint.setColor(colorStateList.getColorForState(getState(), this.mBackground.getDefaultColor()));
    }

    private int t(float f) {
        int i10 = (int) (f + 0.5f);
        return i10 % 2 == 1 ? i10 - 1 : i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mDirty) {
            a(getBounds());
            this.mDirty = false;
        }
        canvas.translate(0.0f, this.mRawShadowSize / 2.0f);
        e(canvas);
        canvas.translate(0.0f, (-this.mRawShadowSize) / 2.0f);
        sRoundRectHelper.a(canvas, this.mCardBounds, this.mCornerRadius, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(d(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        int iCeil2 = (int) Math.ceil(c(this.mRawMaxShadowSize, this.mCornerRadius, this.mAddPaddingForCorners));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.mBackground;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    float j() {
        float f = this.mRawMaxShadowSize;
        return (Math.max(f, this.mCornerRadius + this.mInsetShadow + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.mRawMaxShadowSize * 1.5f) + this.mInsetShadow) * 2.0f);
    }

    float k() {
        float f = this.mRawMaxShadowSize;
        return (Math.max(f, this.mCornerRadius + this.mInsetShadow + (f / 2.0f)) * 2.0f) + ((this.mRawMaxShadowSize + this.mInsetShadow) * 2.0f);
    }

    void m(boolean z6) {
        this.mAddPaddingForCorners = z6;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.mBackground;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.mPaint.getColor() == colorForState) {
            return false;
        }
        this.mPaint.setColor(colorForState);
        this.mDirty = true;
        invalidateSelf();
        return true;
    }

    void q(float f) {
        s(this.mRawShadowSize, f);
    }

    void r(float f) {
        s(f, this.mRawMaxShadowSize);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mPaint.setAlpha(i10);
        this.mCornerShadowPaint.setAlpha(i10);
        this.mEdgeShadowPaint.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    RoundRectDrawableWithShadow(Resources resources, ColorStateList colorStateList, float f, float f6, float f7) {
        this.mShadowStartColor = resources.getColor(R.color.cardview_shadow_start_color);
        this.mShadowEndColor = resources.getColor(R.color.cardview_shadow_end_color);
        this.mInsetShadow = resources.getDimensionPixelSize(R.dimen.cardview_compat_inset_shadow);
        n(colorStateList);
        Paint paint = new Paint(5);
        this.mCornerShadowPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mCornerRadius = (int) (f + 0.5f);
        this.mCardBounds = new RectF();
        Paint paint2 = new Paint(this.mCornerShadowPaint);
        this.mEdgeShadowPaint = paint2;
        paint2.setAntiAlias(false);
        s(f6, f7);
    }

    void h(Rect rect) {
        getPadding(rect);
    }

    void o(@Nullable ColorStateList colorStateList) {
        n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mDirty = true;
    }
}
