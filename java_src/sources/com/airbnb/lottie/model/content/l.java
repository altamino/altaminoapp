package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class l {
    private boolean closed;
    private final List<com.airbnb.lottie.model.c> curves;
    private PointF initialPoint;

    public static class b implements com.airbnb.lottie.model.animatable.m.a<l> {
        public static final b INSTANCE = new b();

        /* JADX WARN: Code duplicated, block: B:14:0x002b  */
        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l a(Object obj, float f) {
            JSONObject jSONObject;
            boolean z6 = false;
            if (obj instanceof JSONArray) {
                Object objOpt = ((JSONArray) obj).opt(0);
                if (objOpt instanceof JSONObject) {
                    jSONObject = (JSONObject) objOpt;
                    if (!jSONObject.has("v")) {
                        jSONObject = null;
                    }
                } else {
                    jSONObject = null;
                }
            } else if (obj instanceof JSONObject) {
                jSONObject = (JSONObject) obj;
                if (!jSONObject.has("v")) {
                    jSONObject = null;
                }
            } else {
                jSONObject = null;
            }
            if (jSONObject == null) {
                return null;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("v");
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT);
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("o");
            boolean zOptBoolean = jSONObject.optBoolean("c", false);
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray.length() != jSONArrayOptJSONArray2.length() || jSONArrayOptJSONArray.length() != jSONArrayOptJSONArray3.length()) {
                throw new IllegalStateException("Unable to process points array or tangents. " + jSONObject);
            }
            if (jSONArrayOptJSONArray.length() == 0) {
                return new l(new PointF(), z6, Collections.emptyList());
            }
            int length = jSONArrayOptJSONArray.length();
            PointF pointFC = c(0, jSONArrayOptJSONArray);
            pointFC.x *= f;
            pointFC.y *= f;
            ArrayList arrayList = new ArrayList(length);
            for (int i10 = 1; i10 < length; i10++) {
                PointF pointFC2 = c(i10, jSONArrayOptJSONArray);
                int i11 = i10 - 1;
                PointF pointFC3 = c(i11, jSONArrayOptJSONArray);
                PointF pointFC4 = c(i11, jSONArrayOptJSONArray3);
                PointF pointFC5 = c(i10, jSONArrayOptJSONArray2);
                PointF pointFA = com.airbnb.lottie.utils.e.a(pointFC3, pointFC4);
                PointF pointFA2 = com.airbnb.lottie.utils.e.a(pointFC2, pointFC5);
                pointFA.x *= f;
                pointFA.y *= f;
                pointFA2.x *= f;
                pointFA2.y *= f;
                pointFC2.x *= f;
                pointFC2.y *= f;
                arrayList.add(new com.airbnb.lottie.model.c(pointFA, pointFA2, pointFC2));
            }
            if (zOptBoolean) {
                PointF pointFC6 = c(0, jSONArrayOptJSONArray);
                int i12 = length - 1;
                PointF pointFC7 = c(i12, jSONArrayOptJSONArray);
                PointF pointFC8 = c(i12, jSONArrayOptJSONArray3);
                PointF pointFC9 = c(0, jSONArrayOptJSONArray2);
                PointF pointFA3 = com.airbnb.lottie.utils.e.a(pointFC7, pointFC8);
                PointF pointFA4 = com.airbnb.lottie.utils.e.a(pointFC6, pointFC9);
                if (f != 1.0f) {
                    pointFA3.x *= f;
                    pointFA3.y *= f;
                    pointFA4.x *= f;
                    pointFA4.y *= f;
                    pointFC6.x *= f;
                    pointFC6.y *= f;
                }
                arrayList.add(new com.airbnb.lottie.model.c(pointFA3, pointFA4, pointFC6));
            }
            return new l(pointFC, zOptBoolean, arrayList);
        }

        private b() {
        }

        private static PointF c(int i10, JSONArray jSONArray) {
            float fIntValue;
            float fIntValue2;
            if (i10 < jSONArray.length()) {
                JSONArray jSONArrayOptJSONArray = jSONArray.optJSONArray(i10);
                Object objOpt = jSONArrayOptJSONArray.opt(0);
                Object objOpt2 = jSONArrayOptJSONArray.opt(1);
                if (objOpt instanceof Double) {
                    fIntValue = ((Double) objOpt).floatValue();
                } else {
                    fIntValue = ((Integer) objOpt).intValue();
                }
                if (objOpt2 instanceof Double) {
                    fIntValue2 = ((Double) objOpt2).floatValue();
                } else {
                    fIntValue2 = ((Integer) objOpt2).intValue();
                }
                return new PointF(fIntValue, fIntValue2);
            }
            throw new IllegalArgumentException("Invalid index " + i10 + ". There are only " + jSONArray.length() + " points.");
        }
    }

    public List<com.airbnb.lottie.model.c> a() {
        return this.curves;
    }

    public PointF b() {
        return this.initialPoint;
    }

    public boolean d() {
        return this.closed;
    }

    private l(PointF pointF, boolean z6, List<com.airbnb.lottie.model.c> list) {
        ArrayList arrayList = new ArrayList();
        this.curves = arrayList;
        this.initialPoint = pointF;
        this.closed = z6;
        arrayList.addAll(list);
    }

    private void e(float f, float f6) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.initialPoint.set(f, f6);
    }

    public void c(l lVar, l lVar2, @FloatRange float f) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.closed = lVar.d() || lVar2.d();
        if (!this.curves.isEmpty() && this.curves.size() != lVar.a().size() && this.curves.size() != lVar2.a().size()) {
            throw new IllegalStateException("Curves must have the same number of control points. This: " + a().size() + "\tShape 1: " + lVar.a().size() + "\tShape 2: " + lVar2.a().size());
        }
        if (this.curves.isEmpty()) {
            for (int size = lVar.a().size() - 1; size >= 0; size--) {
                this.curves.add(new com.airbnb.lottie.model.c());
            }
        }
        PointF pointFB = lVar.b();
        PointF pointFB2 = lVar2.b();
        e(com.airbnb.lottie.utils.e.h(pointFB.x, pointFB2.x, f), com.airbnb.lottie.utils.e.h(pointFB.y, pointFB2.y, f));
        for (int size2 = this.curves.size() - 1; size2 >= 0; size2--) {
            com.airbnb.lottie.model.c cVar = lVar.a().get(size2);
            com.airbnb.lottie.model.c cVar2 = lVar2.a().get(size2);
            PointF pointFA = cVar.a();
            PointF pointFB3 = cVar.b();
            PointF pointFC = cVar.c();
            PointF pointFA2 = cVar2.a();
            PointF pointFB4 = cVar2.b();
            PointF pointFC2 = cVar2.c();
            this.curves.get(size2).d(com.airbnb.lottie.utils.e.h(pointFA.x, pointFA2.x, f), com.airbnb.lottie.utils.e.h(pointFA.y, pointFA2.y, f));
            this.curves.get(size2).e(com.airbnb.lottie.utils.e.h(pointFB3.x, pointFB4.x, f), com.airbnb.lottie.utils.e.h(pointFB3.y, pointFB4.y, f));
            this.curves.get(size2).f(com.airbnb.lottie.utils.e.h(pointFC.x, pointFC2.x, f), com.airbnb.lottie.utils.e.h(pointFC.y, pointFC2.y, f));
        }
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.curves.size() + "closed=" + this.closed + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public l() {
        this.curves = new ArrayList();
    }
}
