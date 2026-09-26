package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements com.airbnb.lottie.model.content.b {
    private final p.c capType;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b dashOffset;
    private final com.airbnb.lottie.model.animatable.f endPoint;
    private final com.airbnb.lottie.model.animatable.c gradientColor;
    private final f gradientType;
    private final p.d joinType;
    private final List<com.airbnb.lottie.model.animatable.b> lineDashPattern;
    private final String name;
    private final com.airbnb.lottie.model.animatable.d opacity;
    private final com.airbnb.lottie.model.animatable.f startPoint;
    private final com.airbnb.lottie.model.animatable.b width;

    static class b {
        static e a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            com.airbnb.lottie.model.animatable.b bVar;
            String strOptString = jSONObject.optString("nm");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("g");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("k")) {
                jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject("k");
            }
            com.airbnb.lottie.model.animatable.c cVarA = jSONObjectOptJSONObject != null ? com.airbnb.lottie.model.animatable.c.b.a(jSONObjectOptJSONObject, eVar) : null;
            String str = "o";
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("o");
            com.airbnb.lottie.model.animatable.d dVarB = jSONObjectOptJSONObject2 != null ? com.airbnb.lottie.model.animatable.d.b.b(jSONObjectOptJSONObject2, eVar) : null;
            f fVar = jSONObject.optInt("t", 1) == 1 ? f.Linear : f.Radial;
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(CmcdHeadersFactory.STREAMING_FORMAT_SS);
            com.airbnb.lottie.model.animatable.f fVarA = jSONObjectOptJSONObject3 != null ? com.airbnb.lottie.model.animatable.f.b.a(jSONObjectOptJSONObject3, eVar) : null;
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("e");
            com.airbnb.lottie.model.animatable.f fVarA2 = jSONObjectOptJSONObject4 != null ? com.airbnb.lottie.model.animatable.f.b.a(jSONObjectOptJSONObject4, eVar) : null;
            com.airbnb.lottie.model.animatable.b bVarB = com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObject.optJSONObject("w"), eVar);
            p.c cVar = p.c.values()[jSONObject.optInt("lc") - 1];
            p.d dVar = p.d.values()[jSONObject.optInt("lj") - 1];
            ArrayList arrayList = new ArrayList();
            if (jSONObject.has("d")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("d");
                int i10 = 0;
                com.airbnb.lottie.model.animatable.b bVarB2 = null;
                while (i10 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(i10);
                    JSONArray jSONArray = jSONArrayOptJSONArray;
                    String strOptString2 = jSONObjectOptJSONObject5.optString("n");
                    String str2 = str;
                    if (strOptString2.equals(str)) {
                        bVarB2 = com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObjectOptJSONObject5.optJSONObject("v"), eVar);
                    } else if (strOptString2.equals("d") || strOptString2.equals("g")) {
                        arrayList.add(com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObjectOptJSONObject5.optJSONObject("v"), eVar));
                    }
                    i10++;
                    jSONArrayOptJSONArray = jSONArray;
                    str = str2;
                }
                if (arrayList.size() == 1) {
                    arrayList.add(arrayList.get(0));
                }
                bVar = bVarB2;
            } else {
                bVar = null;
            }
            return new e(strOptString, fVar, cVarA, dVarB, fVarA, fVarA2, bVarB, cVar, dVar, arrayList, bVar);
        }
    }

    public p.c b() {
        return this.capType;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.b c() {
        return this.dashOffset;
    }

    public com.airbnb.lottie.model.animatable.f d() {
        return this.endPoint;
    }

    public com.airbnb.lottie.model.animatable.c e() {
        return this.gradientColor;
    }

    public f f() {
        return this.gradientType;
    }

    public p.d g() {
        return this.joinType;
    }

    public List<com.airbnb.lottie.model.animatable.b> h() {
        return this.lineDashPattern;
    }

    public String i() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.d j() {
        return this.opacity;
    }

    public com.airbnb.lottie.model.animatable.f k() {
        return this.startPoint;
    }

    public com.airbnb.lottie.model.animatable.b l() {
        return this.width;
    }

    private e(String str, f fVar, com.airbnb.lottie.model.animatable.c cVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.f fVar2, com.airbnb.lottie.model.animatable.f fVar3, com.airbnb.lottie.model.animatable.b bVar, p.c cVar2, p.d dVar2, List<com.airbnb.lottie.model.animatable.b> list, @Nullable com.airbnb.lottie.model.animatable.b bVar2) {
        this.name = str;
        this.gradientType = fVar;
        this.gradientColor = cVar;
        this.opacity = dVar;
        this.startPoint = fVar2;
        this.endPoint = fVar3;
        this.width = bVar;
        this.capType = cVar2;
        this.joinType = dVar2;
        this.lineDashPattern = list;
        this.dashOffset = bVar2;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.h(fVar, aVar, this);
    }
}
