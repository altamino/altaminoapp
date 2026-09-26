package com.airbnb.lottie.model.content;

import android.util.Log;
import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h implements com.airbnb.lottie.model.content.b {
    private final c mode;
    private final String name;

    static class b {
        static h a(JSONObject jSONObject) {
            return new h(jSONObject.optString("nm"), c.b(jSONObject.optInt("mm", 1)));
        }
    }

    public c b() {
        return this.mode;
    }

    public String c() {
        return this.name;
    }

    public enum c {
        Merge,
        Add,
        Subtract,
        Intersect,
        ExcludeIntersections;

        /* JADX INFO: Access modifiers changed from: private */
        public static c b(int i10) {
            if (i10 == 1) {
                return Merge;
            }
            if (i10 == 2) {
                return Add;
            }
            if (i10 == 3) {
                return Subtract;
            }
            if (i10 != 4) {
                return i10 != 5 ? Merge : ExcludeIntersections;
            }
            return Intersect;
        }
    }

    private h(String str, c cVar) {
        this.name = str;
        this.mode = cVar;
    }

    public String toString() {
        return "MergePaths{mode=" + this.mode + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    @Override // com.airbnb.lottie.model.content.b
    @Nullable
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        if (!fVar.k()) {
            Log.w(com.airbnb.lottie.d.TAG, "Animation contains merge paths but they are disabled.");
            return null;
        }
        return new com.airbnb.lottie.animation.content.j(this);
    }
}
