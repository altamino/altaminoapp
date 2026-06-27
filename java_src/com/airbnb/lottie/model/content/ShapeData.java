package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class ShapeData {
    private boolean closed;
    private final List<CubicCurveData> curves;
    private PointF initialPoint;

    private ShapeData(PointF pointF, boolean z, List<CubicCurveData> list) {
        this.curves = new ArrayList();
        this.initialPoint = pointF;
        this.closed = z;
        this.curves.addAll(list);
    }

    public ShapeData() {
        this.curves = new ArrayList();
    }

    private void setInitialPoint(float f, float f2) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.initialPoint.set(f, f2);
    }

    public PointF getInitialPoint() {
        return this.initialPoint;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public List<CubicCurveData> getCurves() {
        return this.curves;
    }

    public void interpolateBetween(ShapeData shapeData, ShapeData shapeData2, float f) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.closed = shapeData.isClosed() || shapeData2.isClosed();
        if (!this.curves.isEmpty() && this.curves.size() != shapeData.getCurves().size() && this.curves.size() != shapeData2.getCurves().size()) {
            throw new IllegalStateException("Curves must have the same number of control points. This: " + getCurves().size() + "\tShape 1: " + shapeData.getCurves().size() + "\tShape 2: " + shapeData2.getCurves().size());
        }
        if (this.curves.isEmpty()) {
            for (int size = shapeData.getCurves().size() - 1; size >= 0; size--) {
                this.curves.add(new CubicCurveData());
            }
        }
        PointF initialPoint = shapeData.getInitialPoint();
        PointF initialPoint2 = shapeData2.getInitialPoint();
        setInitialPoint(MiscUtils.lerp(initialPoint.x, initialPoint2.x, f), MiscUtils.lerp(initialPoint.y, initialPoint2.y, f));
        for (int size2 = this.curves.size() - 1; size2 >= 0; size2--) {
            CubicCurveData cubicCurveData = shapeData.getCurves().get(size2);
            CubicCurveData cubicCurveData2 = shapeData2.getCurves().get(size2);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            PointF controlPoint12 = cubicCurveData2.getControlPoint1();
            PointF controlPoint22 = cubicCurveData2.getControlPoint2();
            PointF vertex2 = cubicCurveData2.getVertex();
            this.curves.get(size2).setControlPoint1(MiscUtils.lerp(controlPoint1.x, controlPoint12.x, f), MiscUtils.lerp(controlPoint1.y, controlPoint12.y, f));
            this.curves.get(size2).setControlPoint2(MiscUtils.lerp(controlPoint2.x, controlPoint22.x, f), MiscUtils.lerp(controlPoint2.y, controlPoint22.y, f));
            this.curves.get(size2).setVertex(MiscUtils.lerp(vertex.x, vertex2.x, f), MiscUtils.lerp(vertex.y, vertex2.y, f));
        }
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.curves.size() + "closed=" + this.closed + '}';
    }

    public static class Factory implements AnimatableValue.Factory<ShapeData> {
        public static final Factory INSTANCE = new Factory();

        private Factory() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.airbnb.lottie.model.content.ShapeData valueFromObject(java.lang.Object r16, float r17) {
            /*
                Method dump skipped, instructions count: 326
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.content.ShapeData.Factory.valueFromObject(java.lang.Object, float):com.airbnb.lottie.model.content.ShapeData");
        }

        private static PointF vertexAtIndex(int i, JSONArray jSONArray) {
            if (i >= jSONArray.length()) {
                throw new IllegalArgumentException("Invalid index " + i + ". There are only " + jSONArray.length() + " points.");
            }
            JSONArray jSONArrayOptJSONArray = jSONArray.optJSONArray(i);
            Object objOpt = jSONArrayOptJSONArray.opt(0);
            Object objOpt2 = jSONArrayOptJSONArray.opt(1);
            return new PointF(objOpt instanceof Double ? ((Double) objOpt).floatValue() : ((Integer) objOpt).intValue(), objOpt2 instanceof Double ? ((Double) objOpt2).floatValue() : ((Integer) objOpt2).intValue());
        }
    }
}
