package com.airbnb.lottie.model.animatable;

import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class k {

    @Nullable
    public final com.airbnb.lottie.model.animatable.a color;

    @Nullable
    public final com.airbnb.lottie.model.animatable.a stroke;

    @Nullable
    public final b strokeWidth;

    @Nullable
    public final b tracking;

    public static final class a {
        public static k a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            if (jSONObject == null || !jSONObject.has(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY)) {
                return new k(null, null, null, null);
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("fc");
            com.airbnb.lottie.model.animatable.a aVarA = jSONObjectOptJSONObject2 != null ? com.airbnb.lottie.model.animatable.a.b.a(jSONObjectOptJSONObject2, eVar) : null;
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("sc");
            com.airbnb.lottie.model.animatable.a aVarA2 = jSONObjectOptJSONObject3 != null ? com.airbnb.lottie.model.animatable.a.b.a(jSONObjectOptJSONObject3, eVar) : null;
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("sw");
            b bVarB = jSONObjectOptJSONObject4 != null ? b.C0111b.b(jSONObjectOptJSONObject4, eVar) : null;
            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("t");
            return new k(aVarA, aVarA2, bVarB, jSONObjectOptJSONObject5 != null ? b.C0111b.b(jSONObjectOptJSONObject5, eVar) : null);
        }
    }

    k(@Nullable com.airbnb.lottie.model.animatable.a aVar, @Nullable com.airbnb.lottie.model.animatable.a aVar2, @Nullable b bVar, @Nullable b bVar2) {
        this.color = aVar;
        this.stroke = aVar2;
        this.strokeWidth = bVar;
        this.tracking = bVar2;
    }
}
