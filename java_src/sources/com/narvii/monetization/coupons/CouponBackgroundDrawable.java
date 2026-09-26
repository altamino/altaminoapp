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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
public class CouponBackgroundDrawable extends Drawable {
    private Context context;
    private float dividePos;
    private final Paint mBackgroundPaint;
    private final Path mBackgroundPath;
    private final Paint mDashPaint;
    private final Path mDashPath;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void setDividePosition(float f) {
        this.dividePos = f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.drawPath(this.mBackgroundPath, this.mBackgroundPaint);
        canvas.drawPath(this.mDashPath, this.mDashPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.mBackgroundPaint.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.mBackgroundPaint.setColorFilter(colorFilter);
    }

    public CouponBackgroundDrawable(Context context) {
        this.context = context;
        Paint paint = new Paint(1);
        this.mBackgroundPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        Path path = new Path();
        this.mBackgroundPath = path;
        path.setFillType(Path.FillType.EVEN_ODD);
        Paint paint2 = new Paint(1);
        this.mDashPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(-1140850689);
        paint2.setStrokeWidth(Utils.dpToPx(context, 1.5f));
        paint2.setPathEffect(new DashPathEffect(new float[]{Utils.dpToPx(context, 6.0f), Utils.dpToPx(context, 3.0f)}, 0.0f));
        this.mDashPath = new Path();
        this.dividePos = 0.7f;
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
        float f6 = rect.top + (f * this.dividePos);
        int i10 = rect.left;
        float f7 = f6 + fDpToPx2;
        this.mBackgroundPath.addArc(new RectF(i10 - fDpToPx2, (rect.top + f6) - fDpToPx2, i10 + fDpToPx2, f7), 270.0f, 180.0f);
        int i11 = rect.right;
        this.mBackgroundPath.addArc(new RectF(i11 - fDpToPx2, (rect.top + f6) - fDpToPx2, i11 + fDpToPx2, f7), 90.0f, 180.0f);
        this.mDashPath.reset();
        this.mDashPath.moveTo(getBounds().left + fDpToPx2, f6);
        this.mDashPath.lineTo(getBounds().right - fDpToPx2, f6);
    }
}
