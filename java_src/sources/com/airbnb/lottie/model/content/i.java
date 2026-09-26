package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class i implements com.airbnb.lottie.model.content.b {
    private final com.airbnb.lottie.model.animatable.b innerRadius;
    private final com.airbnb.lottie.model.animatable.b innerRoundedness;
    private final String name;
    private final com.airbnb.lottie.model.animatable.b outerRadius;
    private final com.airbnb.lottie.model.animatable.b outerRoundedness;
    private final com.airbnb.lottie.model.animatable.b points;
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> position;
    private final com.airbnb.lottie.model.animatable.b rotation;
    private final c type;

    public com.airbnb.lottie.model.animatable.b b() {
        return this.innerRadius;
    }

    public com.airbnb.lottie.model.animatable.b c() {
        return this.innerRoundedness;
    }

    public String d() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.b e() {
        return this.outerRadius;
    }

    public com.airbnb.lottie.model.animatable.b f() {
        return this.outerRoundedness;
    }

    public com.airbnb.lottie.model.animatable.b g() {
        return this.points;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> h() {
        return this.position;
    }

    public com.airbnb.lottie.model.animatable.b i() {
        return this.rotation;
    }

    public c j() {
        return this.type;
    }

    static class b {
        static i a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            com.airbnb.lottie.model.animatable.b bVar;
            com.airbnb.lottie.model.animatable.b bVarC;
            String strOptString = jSONObject.optString("nm");
            c cVarA = c.a(jSONObject.optInt("sy"));
            com.airbnb.lottie.model.animatable.b bVarC2 = com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("pt"), eVar, false);
            com.airbnb.lottie.model.animatable.m<PointF, PointF> mVarB = com.airbnb.lottie.model.animatable.e.b(jSONObject.optJSONObject("p"), eVar);
            com.airbnb.lottie.model.animatable.b bVarC3 = com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("r"), eVar, false);
            com.airbnb.lottie.model.animatable.b bVarB = com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObject.optJSONObject("or"), eVar);
            com.airbnb.lottie.model.animatable.b bVarC4 = com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("os"), eVar, false);
            if (cVarA == c.Star) {
                com.airbnb.lottie.model.animatable.b bVarB2 = com.airbnb.lottie.model.animatable.b.C0111b.b(jSONObject.optJSONObject("ir"), eVar);
                bVarC = com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("is"), eVar, false);
                bVar = bVarB2;
            } else {
                bVar = null;
                bVarC = null;
            }
            return new i(strOptString, cVarA, bVarC2, mVarB, bVarC3, bVar, bVarB, bVarC, bVarC4);
        }
    }

    public enum c {
        Star(1),
        Polygon(2);

        private final int value;

        c(int i10) {
            this.value = i10;
        }

        static c a(int i10) {
            for (c cVar : values()) {
                if (cVar.value == i10) {
                    return cVar;
                }
            }
            return null;
        }
    }

    private i(String str, c cVar, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.b bVar3, com.airbnb.lottie.model.animatable.b bVar4, com.airbnb.lottie.model.animatable.b bVar5, com.airbnb.lottie.model.animatable.b bVar6) {
        this.name = str;
        this.type = cVar;
        this.points = bVar;
        this.position = mVar;
        this.rotation = bVar2;
        this.innerRadius = bVar3;
        this.outerRadius = bVar4;
        this.innerRoundedness = bVar5;
        this.outerRoundedness = bVar6;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.l(fVar, aVar, this);
    }
}
