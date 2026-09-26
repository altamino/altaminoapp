package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: loaded from: classes11.dex */
public class m extends a<PointF, PointF> {
    private final PointF point;
    private final a<Float, Float> xAnimation;
    private final a<Float, Float> yAnimation;

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public PointF g() {
        return h(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public PointF h(h0.a<PointF> aVar, float f) {
        return this.point;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void j(float f) {
        this.xAnimation.j(f);
        this.yAnimation.j(f);
        this.point.set(this.xAnimation.g().floatValue(), this.yAnimation.g().floatValue());
        for (int i10 = 0; i10 < this.listeners.size(); i10++) {
            this.listeners.get(i10).e();
        }
    }

    public m(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.point = new PointF();
        this.xAnimation = aVar;
        this.yAnimation = aVar2;
    }
}
