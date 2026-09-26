package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class m implements com.airbnb.lottie.model.content.b {

    @Nullable
    private final com.airbnb.lottie.model.animatable.a color;
    private final boolean fillEnabled;
    private final Path.FillType fillType;
    private final String name;

    @Nullable
    private final com.airbnb.lottie.model.animatable.d opacity;

    @Nullable
    public com.airbnb.lottie.model.animatable.a b() {
        return this.color;
    }

    public Path.FillType c() {
        return this.fillType;
    }

    public String d() {
        return this.name;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.d e() {
        return this.opacity;
    }

    static class b {
        static m a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            com.airbnb.lottie.model.animatable.a aVarA;
            com.airbnb.lottie.model.animatable.d dVarB;
            Path.FillType fillType;
            String strOptString = jSONObject.optString("nm");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("c");
            if (jSONObjectOptJSONObject != null) {
                aVarA = com.airbnb.lottie.model.animatable.a.b.a(jSONObjectOptJSONObject, eVar);
            } else {
                aVarA = null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("o");
            if (jSONObjectOptJSONObject2 != null) {
                dVarB = com.airbnb.lottie.model.animatable.d.b.b(jSONObjectOptJSONObject2, eVar);
            } else {
                dVarB = null;
            }
            boolean zOptBoolean = jSONObject.optBoolean("fillEnabled");
            if (jSONObject.optInt("r", 1) == 1) {
                fillType = Path.FillType.WINDING;
            } else {
                fillType = Path.FillType.EVEN_ODD;
            }
            return new m(strOptString, zOptBoolean, fillType, aVarA, dVarB);
        }
    }

    private m(String str, boolean z6, Path.FillType fillType, @Nullable com.airbnb.lottie.model.animatable.a aVar, @Nullable com.airbnb.lottie.model.animatable.d dVar) {
        this.name = str;
        this.fillEnabled = z6;
        this.fillType = fillType;
        this.color = aVar;
        this.opacity = dVar;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.f(fVar, aVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ShapeFill{color=");
        com.airbnb.lottie.model.animatable.a aVar = this.color;
        sb.append(aVar == null ? "null" : Integer.toHexString(aVar.c().intValue()));
        sb.append(", fillEnabled=");
        sb.append(this.fillEnabled);
        sb.append(", opacity=");
        com.airbnb.lottie.model.animatable.d dVar = this.opacity;
        sb.append(dVar != null ? dVar.e() : "null");
        sb.append(kotlinx.serialization.json.internal.b.END_OBJ);
        return sb.toString();
    }
}
