package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.airbnb.lottie.model.content.b {
    private final com.airbnb.lottie.model.animatable.f endPoint;
    private final Path.FillType fillType;
    private final com.airbnb.lottie.model.animatable.c gradientColor;
    private final f gradientType;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b highlightAngle;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b highlightLength;
    private final String name;
    private final com.airbnb.lottie.model.animatable.d opacity;
    private final com.airbnb.lottie.model.animatable.f startPoint;

    public com.airbnb.lottie.model.animatable.f b() {
        return this.endPoint;
    }

    public Path.FillType c() {
        return this.fillType;
    }

    public com.airbnb.lottie.model.animatable.c d() {
        return this.gradientColor;
    }

    public f e() {
        return this.gradientType;
    }

    public String f() {
        return this.name;
    }

    public com.airbnb.lottie.model.animatable.d g() {
        return this.opacity;
    }

    public com.airbnb.lottie.model.animatable.f h() {
        return this.startPoint;
    }

    static class b {
        static d a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            com.airbnb.lottie.model.animatable.c cVarA;
            com.airbnb.lottie.model.animatable.d dVarB;
            Path.FillType fillType;
            f fVar;
            com.airbnb.lottie.model.animatable.f fVarA;
            com.airbnb.lottie.model.animatable.f fVarA2;
            String strOptString = jSONObject.optString("nm");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("g");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("k")) {
                int iOptInt = jSONObjectOptJSONObject.optInt("p");
                jSONObjectOptJSONObject = jSONObjectOptJSONObject.optJSONObject("k");
                try {
                    jSONObjectOptJSONObject.put("p", iOptInt);
                } catch (JSONException unused) {
                }
            }
            if (jSONObjectOptJSONObject != null) {
                cVarA = com.airbnb.lottie.model.animatable.c.b.a(jSONObjectOptJSONObject, eVar);
            } else {
                cVarA = null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("o");
            if (jSONObjectOptJSONObject2 != null) {
                dVarB = com.airbnb.lottie.model.animatable.d.b.b(jSONObjectOptJSONObject2, eVar);
            } else {
                dVarB = null;
            }
            if (jSONObject.optInt("r", 1) == 1) {
                fillType = Path.FillType.WINDING;
            } else {
                fillType = Path.FillType.EVEN_ODD;
            }
            Path.FillType fillType2 = fillType;
            if (jSONObject.optInt("t", 1) == 1) {
                fVar = f.Linear;
            } else {
                fVar = f.Radial;
            }
            f fVar2 = fVar;
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(CmcdHeadersFactory.STREAMING_FORMAT_SS);
            if (jSONObjectOptJSONObject3 != null) {
                fVarA = com.airbnb.lottie.model.animatable.f.b.a(jSONObjectOptJSONObject3, eVar);
            } else {
                fVarA = null;
            }
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("e");
            if (jSONObjectOptJSONObject4 != null) {
                fVarA2 = com.airbnb.lottie.model.animatable.f.b.a(jSONObjectOptJSONObject4, eVar);
            } else {
                fVarA2 = null;
            }
            return new d(strOptString, fVar2, fillType2, cVarA, dVarB, fVarA, fVarA2, null, null);
        }
    }

    private d(String str, f fVar, Path.FillType fillType, com.airbnb.lottie.model.animatable.c cVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.f fVar2, com.airbnb.lottie.model.animatable.f fVar3, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2) {
        this.gradientType = fVar;
        this.fillType = fillType;
        this.gradientColor = cVar;
        this.opacity = dVar;
        this.startPoint = fVar2;
        this.endPoint = fVar3;
        this.name = str;
        this.highlightLength = bVar;
        this.highlightAngle = bVar2;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.g(fVar, aVar, this);
    }
}
