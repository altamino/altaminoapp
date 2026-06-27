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
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
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
    protected final Paint paint = new Paint();
    protected final Path path;
    protected boolean pressed;
    protected int r;
    protected int t;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    static {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setScale(0.8f, 0.8f, 0.8f, 1.0f);
        pressedFilter = new ColorMatrixColorFilter(colorMatrix);
    }

    public BubbleDrawable() {
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(-3355444);
        this.path = new Path();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        this.paint.setColorFilter(this.pressed ? pressedFilter : null);
        if (iWidth < canvas.getMaximumBitmapWidth() && iHeight < canvas.getMaximumBitmapHeight()) {
            if (this.middleArrow) {
                this.t = iHeight / 2;
            }
            float f = this.l * 1.4f;
            if (this.left) {
                this.path.reset();
                RectF rectF = rectf;
                rectF.left = this.l;
                rectF.right = iWidth;
                rectF.top = 0.0f;
                rectF.bottom = iHeight;
                Path path = this.path;
                int i = this.r;
                path.addRoundRect(rectF, i, i, Path.Direction.CCW);
                int i2 = this.l;
                if (i2 > 0 && !this.hideArrow) {
                    float f2 = (this.t - (i2 / 2)) - (i2 / 4);
                    this.path.moveTo(i2, f2);
                    Path path2 = this.path;
                    int i3 = this.l;
                    float f3 = (5.0f * f) / 8.0f;
                    float f4 = (3.0f * f) / 8.0f;
                    path2.cubicTo(i3 - (f / 2.0f), f2, i3 - f3, f2 - f4, i3 - f3, f2 - ((2.0f * f) / 8.0f));
                    Path path3 = this.path;
                    int i4 = this.l;
                    path3.cubicTo(i4 - f3, f2, i4 - f4, f2 + ((f * 4.0f) / 8.0f), i4, f2 + f3);
                    this.path.close();
                }
            } else {
                this.path.reset();
                RectF rectF2 = rectf;
                rectF2.left = 0.0f;
                rectF2.right = iWidth - this.l;
                rectF2.top = 0.0f;
                rectF2.bottom = iHeight;
                Path path4 = this.path;
                int i5 = this.r;
                path4.addRoundRect(rectF2, i5, i5, Path.Direction.CCW);
                int i6 = this.l;
                if (i6 > 0 && !this.hideArrow) {
                    float f5 = (this.t - (i6 / 2)) - (i6 / 4);
                    this.path.moveTo(iWidth - i6, f5);
                    Path path5 = this.path;
                    int i7 = this.l;
                    float f6 = (5.0f * f) / 8.0f;
                    float f7 = (3.0f * f) / 8.0f;
                    path5.cubicTo((f / 2.0f) + (iWidth - i7), f5, (iWidth - i7) + f6, f5 - f7, (iWidth - i7) + f6, f5 - ((2.0f * f) / 8.0f));
                    Path path6 = this.path;
                    int i8 = this.l;
                    path6.cubicTo((iWidth - i8) + f6, f5, (iWidth - i8) + f7, f5 + ((f * 4.0f) / 8.0f), iWidth - i8, f5 + f6);
                    this.path.close();
                }
            }
            canvas.drawPath(this.path, this.paint);
            return;
        }
        if (this.left) {
            RectF rectF3 = rectf;
            rectF3.left = this.l;
            rectF3.right = iWidth;
            rectF3.top = 0.0f;
            rectF3.bottom = iHeight;
        } else {
            RectF rectF4 = rectf;
            rectF4.left = 0.0f;
            rectF4.right = iWidth - this.l;
            rectF4.top = 0.0f;
            rectF4.bottom = iHeight;
        }
        RectF rectF5 = rectf;
        int i9 = this.r;
        canvas.drawRoundRect(rectF5, i9, i9, this.paint);
    }

    public void setDefault(Context context) {
        Resources resources = context.getResources();
        this.r = resources.getDimensionPixelSize(R.dimen.chat_bubble_corner_radius);
        this.t = resources.getDimensionPixelSize(R.dimen.chat_bubble_top_margin);
        this.l = resources.getDimensionPixelSize(R.dimen.chat_bubble_left_margin);
        this.paddingH = resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_h);
        this.paddingV = resources.getDimensionPixelSize(R.dimen.chat_bubble_padding_v);
        this.paint.setColor(resources.getColor(R.color.chat_bubble_normal));
        invalidateSelf();
    }

    public void setArrowSize(int i) {
        this.l = i;
    }

    public void setRadius(int i) {
        this.r = i;
    }

    public void setHideArrow(boolean z) {
        this.hideArrow = z;
        invalidateSelf();
    }

    public void setArrowMiddle(boolean z) {
        this.middleArrow = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        boolean z = false;
        for (int i : iArr) {
            if (i == 16842919) {
                z = true;
            }
        }
        super.setState(iArr);
        if (this.pressed == z) {
            return false;
        }
        this.pressed = z;
        invalidateSelf();
        return true;
    }

    public void setColor(int i) {
        this.paint.setColor(i);
        invalidateSelf();
    }

    public void setDirection(boolean z) {
        if (this.left != z) {
            this.left = z;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect2) {
        int i = this.paddingH;
        rect2.left = i;
        rect2.right = i;
        if (this.left) {
            if (Utils.isRtl()) {
                int i2 = rect2.right;
                int i3 = this.l;
                rect2.right = i2 + i3;
                rect2.left += i3;
            } else {
                rect2.left += this.l;
            }
        } else {
            rect2.right += this.l;
        }
        int i4 = this.paddingV;
        rect2.top = i4;
        rect2.bottom = i4;
        return true;
    }
}
