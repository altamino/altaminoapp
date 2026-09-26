package com.airbnb.lottie.model.animatable;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class n<T> {
    private final com.airbnb.lottie.e composition;

    @Nullable
    private final JSONObject json;
    private final float scale;
    private final m.a<T> valueFactory;

    static class a<T> {

        @Nullable
        final T initialValue;
        final List<h0.a<T>> keyframes;

        a(List<h0.a<T>> list, @Nullable T t5) {
            this.keyframes = list;
            this.initialValue = t5;
        }
    }

    private static boolean a(Object obj) {
        if (!(obj instanceof JSONArray)) {
            return false;
        }
        Object objOpt = ((JSONArray) obj).opt(0);
        return (objOpt instanceof JSONObject) && ((JSONObject) objOpt).has("t");
    }

    static <T> n<T> b(@Nullable JSONObject jSONObject, float f, com.airbnb.lottie.e eVar, m.a<T> aVar) {
        return new n<>(jSONObject, f, eVar, aVar);
    }

    @Nullable
    private T c(List<h0.a<T>> list) {
        if (this.json != null) {
            return !list.isEmpty() ? list.get(0).startValue : this.valueFactory.a(this.json.opt("k"), this.scale);
        }
        return null;
    }

    private List<h0.a<T>> e() {
        JSONObject jSONObject = this.json;
        if (jSONObject == null) {
            return Collections.emptyList();
        }
        Object objOpt = jSONObject.opt("k");
        return a(objOpt) ? h0.a.C0382a.c((JSONArray) objOpt, this.composition, this.scale, this.valueFactory) : Collections.emptyList();
    }

    private n(@Nullable JSONObject jSONObject, float f, com.airbnb.lottie.e eVar, m.a<T> aVar) {
        this.json = jSONObject;
        this.scale = f;
        this.composition = eVar;
        this.valueFactory = aVar;
    }

    a<T> d() {
        List<h0.a<T>> listE = e();
        return new a<>(listE, c(listE));
    }
}
