package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class j extends f<PointF> {
    private final PointF point;

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public PointF h(h0.a<PointF> aVar, float f) {
        PointF pointF;
        PointF pointF2 = aVar.startValue;
        if (pointF2 == null || (pointF = aVar.endValue) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF3 = pointF2;
        PointF pointF4 = pointF;
        PointF pointF5 = this.point;
        float f6 = pointF3.x;
        float f7 = f6 + ((pointF4.x - f6) * f);
        float f10 = pointF3.y;
        pointF5.set(f7, f10 + (f * (pointF4.y - f10)));
        return this.point;
    }

    public j(List<h0.a<PointF>> list) {
        super(list);
        this.point = new PointF();
    }
}
