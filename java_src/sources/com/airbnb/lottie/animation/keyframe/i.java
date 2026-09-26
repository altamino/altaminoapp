package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class i extends f<PointF> {
    private PathMeasure pathMeasure;
    private h pathMeasureKeyframe;
    private final PointF point;
    private final float[] pos;

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public PointF h(h0.a<PointF> aVar, float f) {
        h hVar = (h) aVar;
        Path pathH = hVar.h();
        if (pathH == null) {
            return aVar.startValue;
        }
        if (this.pathMeasureKeyframe != hVar) {
            this.pathMeasure = new PathMeasure(pathH, false);
            this.pathMeasureKeyframe = hVar;
        }
        PathMeasure pathMeasure = this.pathMeasure;
        pathMeasure.getPosTan(f * pathMeasure.getLength(), this.pos, null);
        PointF pointF = this.point;
        float[] fArr = this.pos;
        pointF.set(fArr[0], fArr[1]);
        return this.point;
    }

    public i(List<? extends h0.a<PointF>> list) {
        super(list);
        this.point = new PointF();
        this.pos = new float[2];
    }
}
