package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes9.dex */
public class i implements m<PointF, PointF> {
    private final b animatableXDimension;
    private final b animatableYDimension;

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        return new com.airbnb.lottie.animation.keyframe.m(this.animatableXDimension.a(), this.animatableYDimension.a());
    }

    i(b bVar, b bVar2) {
        this.animatableXDimension = bVar;
        this.animatableYDimension = bVar2;
    }
}
