package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.f;
import com.google.android.material.shape.m;

/* JADX INFO: loaded from: classes8.dex */
public class a extends f implements Cloneable {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private static final float ROUNDED_CORNER_FAB_OFFSET = 1.75f;
    private float cradleVerticalOffset;
    private float fabCornerSize = -1.0f;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    float e() {
        return this.cradleVerticalOffset;
    }

    public float f() {
        return this.fabCornerSize;
    }

    float g() {
        return this.fabMargin;
    }

    float i() {
        return this.roundedCornerRadius;
    }

    @RestrictTo
    public float j() {
        return this.fabDiameter;
    }

    @RestrictTo
    public float k() {
        return this.horizontalOffset;
    }

    void l(@FloatRange float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.cradleVerticalOffset = f;
    }

    public void m(float f) {
        this.fabCornerSize = f;
    }

    void n(float f) {
        this.fabMargin = f;
    }

    void o(float f) {
        this.roundedCornerRadius = f;
    }

    @RestrictTo
    public void p(float f) {
        this.fabDiameter = f;
    }

    void q(float f) {
        this.horizontalOffset = f;
    }

    @Override // com.google.android.material.shape.f
    public void c(float f, float f6, float f7, @NonNull m mVar) {
        float f10;
        float f11;
        float f12 = this.fabDiameter;
        if (f12 == 0.0f) {
            mVar.m(f, 0.0f);
            return;
        }
        float f13 = ((this.fabMargin * 2.0f) + f12) / 2.0f;
        float f14 = f7 * this.roundedCornerRadius;
        float f15 = f6 + this.horizontalOffset;
        float f16 = (this.cradleVerticalOffset * f7) + ((1.0f - f7) * f13);
        if (f16 / f13 >= 1.0f) {
            mVar.m(f, 0.0f);
            return;
        }
        float f17 = this.fabCornerSize;
        float f18 = f17 * f7;
        boolean z6 = f17 == -1.0f || Math.abs((f17 * 2.0f) - f12) < 0.1f;
        if (z6) {
            f10 = f16;
            f11 = 0.0f;
        } else {
            f11 = ROUNDED_CORNER_FAB_OFFSET;
            f10 = 0.0f;
        }
        float f19 = f13 + f14;
        float f20 = f10 + f14;
        float fSqrt = (float) Math.sqrt((f19 * f19) - (f20 * f20));
        float f21 = f15 - fSqrt;
        float f22 = f15 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f20));
        float f23 = (90.0f - degrees) + f11;
        mVar.m(f21, 0.0f);
        float f24 = f14 * 2.0f;
        mVar.a(f21 - f14, 0.0f, f21 + f14, f24, 270.0f, degrees);
        if (z6) {
            mVar.a(f15 - f13, (-f13) - f10, f15 + f13, f13 - f10, 180.0f - f23, (f23 * 2.0f) - 180.0f);
        } else {
            float f25 = this.fabMargin;
            float f26 = f18 * 2.0f;
            float f27 = f15 - f13;
            mVar.a(f27, -(f18 + f25), f27 + f25 + f26, f25 + f18, 180.0f - f23, ((f23 * 2.0f) - 180.0f) / 2.0f);
            float f28 = f15 + f13;
            float f29 = this.fabMargin;
            mVar.m(f28 - ((f29 / 2.0f) + f18), f29 + f18);
            float f30 = this.fabMargin;
            mVar.a(f28 - (f26 + f30), -(f18 + f30), f28, f30 + f18, 90.0f, f23 - 90.0f);
        }
        mVar.a(f22 - f14, 0.0f, f22 + f14, f24, 270.0f - degrees, degrees);
        mVar.m(f, 0.0f);
    }

    public a(float f, float f6, float f7) {
        this.fabMargin = f;
        this.roundedCornerRadius = f6;
        l(f7);
        this.horizontalOffset = 0.0f;
    }
}
