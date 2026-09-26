package com.airbnb.lottie.model.content;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class n implements b {
    private final List<b> items;
    private final String name;

    static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static n b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("it");
            String strOptString = jSONObject.optString("nm");
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                b bVarD = n.d(jSONArrayOptJSONArray.optJSONObject(i10), eVar);
                if (bVarD != null) {
                    arrayList.add(bVarD);
                }
            }
            return new n(strOptString, arrayList);
        }
    }

    public List<b> b() {
        return this.items;
    }

    public String c() {
        return this.name;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.b a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.c(fVar, aVar, this);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.name + "' Shapes: " + Arrays.toString(this.items.toArray()) + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public n(String str, List<b> list) {
        this.name = str;
        this.items = list;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    public static b d(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
        String strOptString = jSONObject.optString("ty");
        strOptString.hashCode();
        byte b7 = -1;
        switch (strOptString.hashCode()) {
            case 3239:
                if (strOptString.equals("el")) {
                    b7 = 0;
                }
                break;
            case 3270:
                if (strOptString.equals("fl")) {
                    b7 = 1;
                }
                break;
            case 3295:
                if (strOptString.equals("gf")) {
                    b7 = 2;
                }
                break;
            case 3307:
                if (strOptString.equals("gr")) {
                    b7 = 3;
                }
                break;
            case 3308:
                if (strOptString.equals("gs")) {
                    b7 = 4;
                }
                break;
            case 3488:
                if (strOptString.equals("mm")) {
                    b7 = 5;
                }
                break;
            case 3633:
                if (strOptString.equals("rc")) {
                    b7 = 6;
                }
                break;
            case 3646:
                if (strOptString.equals("rp")) {
                    b7 = 7;
                }
                break;
            case 3669:
                if (strOptString.equals("sh")) {
                    b7 = 8;
                }
                break;
            case 3679:
                if (strOptString.equals("sr")) {
                    b7 = 9;
                }
                break;
            case 3681:
                if (strOptString.equals(CmcdConfiguration.KEY_STREAM_TYPE)) {
                    b7 = 10;
                }
                break;
            case 3705:
                if (strOptString.equals("tm")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 3710:
                if (strOptString.equals("tr")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
        }
        switch (b7) {
            case 0:
                return com.airbnb.lottie.model.content.a.b.a(jSONObject, eVar);
            case 1:
                return m.b.a(jSONObject, eVar);
            case 2:
                return d.b.a(jSONObject, eVar);
            case 3:
                return a.b(jSONObject, eVar);
            case 4:
                return e.b.a(jSONObject, eVar);
            case 5:
                return h.b.a(jSONObject);
            case 6:
                return j.b.a(jSONObject, eVar);
            case 7:
                return k.a.a(jSONObject, eVar);
            case 8:
                return o.b.a(jSONObject, eVar);
            case 9:
                return i.b.a(jSONObject, eVar);
            case 10:
                return p.b.a(jSONObject, eVar);
            case 11:
                return q.b.a(jSONObject, eVar);
            case 12:
                return com.airbnb.lottie.model.animatable.l.b.b(jSONObject, eVar);
            default:
                Log.w(com.airbnb.lottie.d.TAG, "Unknown shape type " + strOptString);
                return null;
        }
    }
}
