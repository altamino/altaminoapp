package com.narvii.monetization.coupons;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class CouponBackgroundDrawable extends Drawable {
    private Context context;
    private float dividePos;
    private final Paint mBackgroundPaint = new Paint(1);
    private final Path mBackgroundPath;
    private final Paint mDashPaint;
    private final Path mDashPath;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public CouponBackgroundDrawable(Context context) {
        this.context = context;
        this.mBackgroundPaint.setStyle(Paint.Style.FILL);
        this.mBackgroundPath = new Path();
        this.mBackgroundPath.setFillType(Path.FillType.EVEN_ODD);
        this.mDashPaint = new Paint(1);
        this.mDashPaint.setStyle(Paint.Style.STROKE);
        this.mDashPaint.setColor(-1140850689);
        this.mDashPaint.setStrokeWidth(Utils.dpToPx(context, 1.5f));
        this.mDashPaint.setPathEffect(new DashPathEffect(new float[]{Utils.dpToPx(context, 6.0f), Utils.dpToPx(context, 3.0f)}, 0.0f));
        this.mDashPath = new Path();
        this.dividePos = 0.7f;
    }

    public void setDividePosition(float f) {
        this.dividePos = f;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        int iWidth = rect.width();
        int iHeight = rect.height();
        float fDpToPx = Utils.dpToPx(this.context, 10.0f);
        float fDpToPx2 = Utils.dpToPx(this.context, 10.0f);
        float f = iHeight;
        this.mBackgroundPaint.setShader(new LinearGradient(0.0f, f * 0.9f, iWidth, f * 0.1f, -23728, -60800, Shader.TileMode.CLAMP));
        this.mBackgroundPath.reset();
        this.mBackgroundPath.addRoundRect(new RectF(rect.left, rect.top, rect.right, rect.bottom), fDpToPx, fDpToPx, Path.Direction.CW);
        int i = rect.top;
        float f2 = i + (f * this.dividePos);
        int i2 = rect.left;
        float f3 = f2 + fDpToPx2;
        this.mBackgroundPath.addArc(new RectF(i2 - fDpToPx2, (i + f2) - fDpToPx2, i2 + fDpToPx2, f3), 270.0f, 180.0f);
        int i3 = rect.right;
        this.mBackgroundPath.addArc(new RectF(i3 - fDpToPx2, (rect.top + f2) - fDpToPx2, i3 + fDpToPx2, f3), 90.0f, 180.0f);
        this.mDashPath.reset();
        this.mDashPath.moveTo(getBounds().left + fDpToPx2, f2);
        this.mDashPath.lineTo(getBounds().right - fDpToPx2, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawPath(this.mBackgroundPath, this.mBackgroundPaint);
        canvas.drawPath(this.mDashPath, this.mDashPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mBackgroundPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mBackgroundPaint.setColorFilter(colorFilter);
    }
}
