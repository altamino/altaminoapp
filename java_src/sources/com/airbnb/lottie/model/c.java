package com.airbnb.lottie.model;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    private final PointF controlPoint1;
    private final PointF controlPoint2;
    private final PointF vertex;

    public c() {
        this.controlPoint1 = new PointF();
        this.controlPoint2 = new PointF();
        this.vertex = new PointF();
    }

    public PointF a() {
        return this.controlPoint1;
    }

    public PointF b() {
        return this.controlPoint2;
    }

    public PointF c() {
        return this.vertex;
    }

    public void d(float f, float f6) {
        this.controlPoint1.set(f, f6);
    }

    public void e(float f, float f6) {
        this.controlPoint2.set(f, f6);
    }

    public void f(float f, float f6) {
        this.vertex.set(f, f6);
    }

    public c(PointF pointF, PointF pointF2, PointF pointF3) {
        this.controlPoint1 = pointF;
        this.controlPoint2 = pointF2;
        this.vertex = pointF3;
    }
}
