package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class p implements com.airbnb.lottie.model.content.b {
    private final c capType;
    private final com.airbnb.lottie.model.animatable.a color;
    private final d joinType;
    private final List<com.airbnb.lottie.model.animatable.b> lineDashPattern;
    private final String name;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b offset;
    private final com.airbnb.lottie.model.animatable.d opacity;
    private final com.airbnb.lottie.model.animatable.b width;

    static class b {
        static p a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            JSONArray jSONArray;
            String strOptString = jSONObject.optString("nm");
            ArrayList arrayList = new ArrayList();
            com.airbnb.lottie.model.animatable.a aVarA = com.airbnb.lottie.model.animatable.a.b.a(jSONObject.optJSONObject("c"), eVar);
            com.airbnb.lottie.model.animatable.b bVarB = com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObject.optJSONObject("w"), eVar);
            com.airbnb.lottie.model.animatable.d dVarB = com.airbnb.lottie.model.animatable.d.b.b(jSONObject.optJSONObject("o"), eVar);
            c cVar = c.values()[jSONObject.optInt("lc") - 1];
            d dVar = d.values()[jSONObject.optInt("lj") - 1];
            com.airbnb.lottie.model.animatable.b bVarB2 = null;
            if (jSONObject.has("d")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("d");
                int i10 = 0;
                while (i10 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                    String strOptString2 = jSONObjectOptJSONObject.optString("n");
                    if (strOptString2.equals("o")) {
                        jSONArray = jSONArrayOptJSONArray;
                        bVarB2 = com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObjectOptJSONObject.optJSONObject("v"), eVar);
                    } else {
                        if (strOptString2.equals("d")) {
                            jSONArray = jSONArrayOptJSONArray;
                        } else {
                            jSONArray = jSONArrayOptJSONArray;
                            if (strOptString2.equals("g")) {
                            }
                        }
                        arrayList.add(com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObjectOptJSONObject.optJSONObject("v"), eVar));
                    }
                    i10++;
                    jSONArrayOptJSONArray = jSONArray;
                }
                if (arrayList.size() == 1) {
                    arrayList.add(arrayList.get(0));
                }
            }
            return new p(strOptString, bVarB2, arrayList, aVarA, dVarB, bVarB, cVar, dVar, null);
        }
    }

    public enum c {
        Butt,
        Round,
        Unknown;

        public Paint.Cap a() {
            int i10 = a.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType[ordinal()];
            if (i10 != 1) {
                return i10 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum d {
        Miter,
        Round,
        Bevel;

        public Paint.Join a() {
            int i10 = a.$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType[ordinal()];
            if (i10 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i10 == 2) {
                return Paint.Join.MITER;
            }
            if (i10 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    /* synthetic */ p(String str, com.airbnb.lottie.model.animatable.b bVar, List list, com.airbnb.lottie.model.animatable.a aVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar2, c cVar, d dVar2, a aVar2) {
        this(str, bVar, list, aVar, dVar, bVar2, cVar, dVar2);
    }

    public c b() {
        return this.capType;
    }

    public com.airbnb.lottie.model.animatable.a c() {
        return this.color;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.offset;
    }

    public d e() {
        return this.joinType;
    }

    public List<com.airbnb.lottie.model.animatable.b> f() {
        return this.lineDashPattern;
    }

    public String g() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.d h() {
        return this.opacity;
    }

    public com.airbnb.lottie.model.animatable.b i() {
        return this.width;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType;
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType;

        static {
            int[] iArr = new int[d.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType = iArr;
            try {
                iArr[d.Bevel.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType[d.Miter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineJoinType[d.Round.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[c.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType = iArr2;
            try {
                iArr2[c.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType[c.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType[c.Unknown.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private p(String str, @Nullable com.airbnb.lottie.model.animatable.b bVar, List<com.airbnb.lottie.model.animatable.b> list, com.airbnb.lottie.model.animatable.a aVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar2, c cVar, d dVar2) {
        this.name = str;
        this.offset = bVar;
        this.lineDashPattern = list;
        this.color = aVar;
        this.opacity = dVar;
        this.width = bVar2;
        this.capType = cVar;
        this.joinType = dVar2;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.p(fVar, aVar, this);
    }
}
