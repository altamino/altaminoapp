package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
class d extends com.google.android.material.shape.g {

    @NonNull
    private final RectF cutoutBounds;

    @NonNull
    private final Paint cutoutPaint;

    d() {
        this(null);
    }

    void q0() {
        r0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    d(@Nullable com.google.android.material.shape.k kVar) {
        super(kVar == null ? new com.google.android.material.shape.k() : kVar);
        this.cutoutPaint = new Paint(1);
        t0();
        this.cutoutBounds = new RectF();
    }

    private void t0() {
        this.cutoutPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.cutoutPaint.setColor(-1);
        this.cutoutPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    boolean p0() {
        return !this.cutoutBounds.isEmpty();
    }

    @Override // com.google.android.material.shape.g
    protected void r(@NonNull Canvas canvas) {
        if (this.cutoutBounds.isEmpty()) {
            super.r(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.cutoutBounds);
        } else {
            canvas.clipRect(this.cutoutBounds, Region.Op.DIFFERENCE);
        }
        super.r(canvas);
        canvas.restore();
    }

    void r0(float f, float f6, float f7, float f10) {
        RectF rectF = this.cutoutBounds;
        if (f == rectF.left && f6 == rectF.top && f7 == rectF.right && f10 == rectF.bottom) {
            return;
        }
        rectF.set(f, f6, f7, f10);
        invalidateSelf();
    }

    void s0(@NonNull RectF rectF) {
        r0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
