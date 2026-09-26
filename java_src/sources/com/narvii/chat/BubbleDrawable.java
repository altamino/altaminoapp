package com.narvii.chat;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class BubbleDrawable extends Drawable {
    static final ColorFilter pressedFilter;
    static final Rect rect = new Rect();
    static final RectF rectf = new RectF();
    protected boolean hideArrow;
    protected int l;
    protected boolean left;
    protected boolean middleArrow;
    protected int paddingH;
    protected int paddingV;
    protected final Paint paint;
    protected final Path path;
    protected boolean pressed;
    protected int r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected int f1851t;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public void setArrowSize(int i10) {
        this.l = i10;
    }

    public void setRadius(int i10) {
        this.r = i10;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        boolean z6 = false;
        for (int i10 : iArr) {
            if (i10 == 16842919) {
                z6 = true;
            }
        }
        super.setState(iArr);
        if (this.pressed == z6) {
            return false;
        }
        this.pressed = z6;
        invalidateSelf();
        return true;
    }

    static {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setScale(0.8f, 0.8f, 0.8f, 1.0f);
        pressedFilter = new ColorMatrixColorFilter(colorMatrix);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        this.paint.setColorFilter(this.pressed ? pressedFilter : null);
        if (iWidth >= canvas.getMaximumBitmapWidth() || iHeight >= canvas.getMaximumBitmapHeight()) {
            if (this.left) {
                RectF rectF = rectf;
                rectF.left = this.l;
                rectF.right = iWidth;
                rectF.top = 0.0f;
                rectF.bottom = iHeight;
            } else {
                RectF rectF2 = rectf;
                rectF2.left = 0.0f;
                rectF2.right = iWidth - this.l;
                rectF2.top = 0.0f;
                rectF2.bottom = iHeight;
            }
            RectF rectF3 = rectf;
            int i10 = this.r;
            canvas.drawRoundRect(rectF3, i10, i10, this.paint);
            return;
        }
        if (this.middleArrow) {
            this.f1851t = iHeight / 2;
        }
        float f = this.l * 1.4f;
        if (this.left) {
            this.path.reset();
            RectF rectF4 = rectf;
            rectF4.left = this.l;
            rectF4.right = iWidth;
            rectF4.top = 0.0f;
            rectF4.bottom = iHeight;
            Path path = this.path;
            int i11 = this.r;
            path.addRoundRect(rectF4, i11, i11, Path.Direction.CCW);
            int i12 = this.l;
            if (i12 > 0 && !this.hideArrow) {
                float f6 = (this.f1851t - (i12 / 2)) - (i12 / 4);
                this.path.moveTo(i12, f6);
                Path path2 = this.path;
                int i13 = this.l;
                float f7 = (5.0f * f) / 8.0f;
                float f10 = (3.0f * f) / 8.0f;
                path2.cubicTo(i13 - (f / 2.0f), f6, i13 - f7, f6 - f10, i13 - f7, f6 - ((2.0f * f) / 8.0f));
                Path path3 = this.path;
                int i14 = this.l;
                path3.cubicTo(i14 - f7, f6, i14 - f10, f6 + ((f * 4.0f) / 8.0f), i14, f6 + f7);
                this.path.close();
            }
        } else {
            this.path.reset();
            RectF rectF5 = rectf;
            rectF5.left = 0.0f;
            rectF5.right = iWidth - this.l;
            rectF5.top = 0.0f;
            rectF5.bottom = iHeight;
            Path path4 = this.path;
            int i15 = this.r;
            path4.addRoundRect(rectF5, i15, i15, Path.Direction.CCW);
            int i16 = this.l;
            if (i16 > 0 && !this.hideArrow) {
                float f11 = (this.f1851t - (i16 / 2)) - (i16 / 4);
                this.path.moveTo(iWidth - i16, f11);
                Path path5 = this.path;
                int i17 = this.l;
                float f12 = (5.0f * f) / 8.0f;
                float f13 = (3.0f * f) / 8.0f;
                path5.cubicTo((f / 2.0f) + (iWidth - i17), f11, (iWidth - i17) + f12, f11 - f13, (iWidth - i17) + f12, f11 - ((2.0f * f) / 8.0f));
                Path path6 = this.path;
                int i18 = this.l;
                path6.cubicTo((iWidth - i18) + f12, f11, (iWidth - i18) + f13, f11 + ((f * 4.0f) / 8.0f), iWidth - i18, f11 + f12);
                this.path.close();
            }
        }
        canvas.drawPath(this.path, this.paint);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect2) {
        int i10 = this.paddingH;
        rect2.left = i10;
        rect2.right = i10;
        if (!this.left) {
            rect2.right = i10 + this.l;
        } else if (Utils.isRtl()) {
            int i11 = rect2.right;
            int i12 = this.l;
            rect2.right = i11 + i12;
            rect2.left += i12;
        } else {
            rect2.left += this.l;
        }
        int i13 = this.paddingV;
        rect2.top = i13;
        rect2.bottom = i13;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.paint.setAlpha(i10);
        invalidateSelf();
    }

    public void setArrowMiddle(boolean z6) {
        this.middleArrow = z6;
        invalidateSelf();
    }

    public void setColor(int i10) {
        this.paint.setColor(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setDirection(boolean z6) {
        if (this.left != z6) {
            this.left = z6;
            invalidateSelf();
        }
    }

    public void setHideArrow(boolean z6) {
        this.hideArrow = z6;
        invalidateSelf();
    }

    public BubbleDrawable() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(-3355444);
        this.path = new Path();
    }

    public void setDefault(Context context) {
        Resources resources = context.getResources();
        this.r = resources.getDimensionPixelSize(R.dimen.chat_bubble_corner_radius);
        this.f1851t = resources.getDimensionPixelSize(R.dimen.chat_bubble_top_margin);
        this.l = resources.getDimensionPixelSize(R.dimen.chat_bubble_left_margin);
        this.paddingH = resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_h);
        this.paddingV = resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_v);
        this.paint.setColor(resources.getColor(R.color.chat_bubble_normal));
        invalidateSelf();
    }
}
