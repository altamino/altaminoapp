package com.narvii.widget;

import android.animation.TypeEvaluator;
import android.graphics.PointF;

/* loaded from: classes3.dex */
public class BezierEvaluator implements TypeEvaluator<PointF> {
    private PointF pointF1;
    private PointF pointF2;

    public BezierEvaluator(PointF pointF, PointF pointF2) {
        this.pointF1 = pointF;
        this.pointF2 = pointF2;
    }

    @Override // android.animation.TypeEvaluator
    public PointF evaluate(float f, PointF pointF, PointF pointF2) {
        float f2 = 1.0f - f;
        PointF pointF3 = new PointF();
        float f3 = f2 * f2 * f2;
        float f4 = pointF.x * f3;
        float f5 = 3.0f * f2;
        float f6 = f2 * f5 * f;
        PointF pointF4 = this.pointF1;
        float f7 = f4 + (pointF4.x * f6);
        float f8 = f5 * f * f;
        PointF pointF5 = this.pointF2;
        float f9 = f * f * f;
        pointF3.x = f7 + (pointF5.x * f8) + (pointF2.x * f9);
        pointF3.y = (f3 * pointF.y) + (f6 * pointF4.y) + (f8 * pointF5.y) + (f9 * pointF2.y);
        return pointF3;
    }
}
