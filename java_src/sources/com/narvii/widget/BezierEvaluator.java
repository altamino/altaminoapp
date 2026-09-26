package com.narvii.widget;

import android.animation.TypeEvaluator;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes10.dex */
public class BezierEvaluator implements TypeEvaluator<PointF> {
    private PointF pointF1;
    private PointF pointF2;

    @Override // android.animation.TypeEvaluator
    public PointF evaluate(float f, PointF pointF, PointF pointF2) {
        float f6 = 1.0f - f;
        PointF pointF3 = new PointF();
        float f7 = f6 * f6 * f6;
        float f10 = pointF.x * f7;
        float f11 = 3.0f * f6;
        float f12 = f6 * f11 * f;
        PointF pointF4 = this.pointF1;
        float f13 = f10 + (pointF4.x * f12);
        float f14 = f11 * f * f;
        PointF pointF5 = this.pointF2;
        float f15 = f * f * f;
        pointF3.x = f13 + (pointF5.x * f14) + (pointF2.x * f15);
        pointF3.y = (f7 * pointF.y) + (f12 * pointF4.y) + (f14 * pointF5.y) + (f15 * pointF2.y);
        return pointF3;
    }

    public BezierEvaluator(PointF pointF, PointF pointF2) {
        this.pointF1 = pointF;
        this.pointF2 = pointF2;
    }
}
