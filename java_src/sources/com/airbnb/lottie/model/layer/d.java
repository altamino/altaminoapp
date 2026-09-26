package com.airbnb.lottie.model.layer;

import android.graphics.Color;
import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.airbnb.lottie.model.animatable.j;
import com.airbnb.lottie.model.animatable.k;
import com.airbnb.lottie.model.animatable.l;
import com.airbnb.lottie.model.content.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    private static final String TAG = "d";
    private final com.airbnb.lottie.e composition;
    private final List<h0.a<Float>> inOutKeyframes;
    private final long layerId;
    private final String layerName;
    private final c layerType;
    private final List<com.airbnb.lottie.model.content.g> masks;
    private final EnumC0115d matteType;
    private final long parentId;
    private final int preCompHeight;
    private final int preCompWidth;

    @Nullable
    private final String refId;
    private final List<com.airbnb.lottie.model.content.b> shapes;
    private final int solidColor;
    private final int solidHeight;
    private final int solidWidth;
    private final float startProgress;

    @Nullable
    private final j text;

    @Nullable
    private final k textProperties;

    @Nullable
    private final com.airbnb.lottie.model.animatable.b timeRemapping;
    private final float timeStretch;
    private final l transform;

    public static class b {
        public static d a(com.airbnb.lottie.e eVar) {
            Rect rectH = eVar.h();
            return new d(Collections.emptyList(), eVar, "root", -1L, c.PreComp, -1L, null, Collections.emptyList(), l.b.a(), 0, 0, 0, 0.0f, 0.0f, rectH.width(), rectH.height(), null, null, Collections.emptyList(), EnumC0115d.None, null);
        }

        public static d b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            c cVar;
            int iOptInt;
            int iOptInt2;
            int color;
            j jVar;
            k kVarA;
            int iOptInt3;
            int iOptInt4;
            ArrayList arrayList;
            String strOptString = jSONObject.optString("nm");
            String strOptString2 = jSONObject.optString("refId");
            if (strOptString.endsWith(".ai") || jSONObject.optString("cl", "").equals("ai")) {
                eVar.g("Convert your Illustrator layers to shape layers.");
            }
            long jOptLong = jSONObject.optLong("ind");
            int iOptInt5 = jSONObject.optInt("ty", -1);
            c cVar2 = c.Unknown;
            c cVar3 = iOptInt5 < cVar2.ordinal() ? c.values()[iOptInt5] : cVar2;
            if (cVar3 != c.Text || com.airbnb.lottie.utils.f.h(eVar, 4, 8, 0)) {
                cVar = cVar3;
            } else {
                eVar.g("Text is only supported on bodymovin >= 4.8.0");
                cVar = cVar2;
            }
            long jOptLong2 = jSONObject.optLong("parent", -1L);
            if (cVar == c.Solid) {
                iOptInt = (int) (jSONObject.optInt("sw") * eVar.j());
                iOptInt2 = (int) (jSONObject.optInt("sh") * eVar.j());
                color = Color.parseColor(jSONObject.optString("sc"));
            } else {
                iOptInt = 0;
                iOptInt2 = 0;
                color = 0;
            }
            l lVarB = l.b.b(jSONObject.optJSONObject("ks"), eVar);
            EnumC0115d enumC0115d = EnumC0115d.values()[jSONObject.optInt("tt")];
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("masksProperties");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList2.add(com.airbnb.lottie.model.content.g.b.a(jSONArrayOptJSONArray.optJSONObject(i10), eVar));
                }
            }
            ArrayList arrayList4 = new ArrayList();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("shapes");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                    com.airbnb.lottie.model.content.b bVarD = n.d(jSONArrayOptJSONArray2.optJSONObject(i11), eVar);
                    if (bVarD != null) {
                        arrayList4.add(bVarD);
                    }
                }
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("t");
            if (jSONObjectOptJSONObject != null) {
                j jVarA = j.a.a(jSONObjectOptJSONObject.optJSONObject("d"), eVar);
                kVarA = k.a.a(jSONObjectOptJSONObject.optJSONArray(CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY).optJSONObject(0), eVar);
                jVar = jVarA;
            } else {
                jVar = null;
                kVarA = null;
            }
            if (jSONObject.has("ef")) {
                eVar.g("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape.");
            }
            float fOptDouble = (float) jSONObject.optDouble("sr", 1.0d);
            float fOptDouble2 = ((float) jSONObject.optDouble(CmcdConfiguration.KEY_STREAM_TYPE)) / eVar.l();
            if (cVar == c.PreComp) {
                iOptInt3 = (int) (jSONObject.optInt("w") * eVar.j());
                iOptInt4 = (int) (jSONObject.optInt(CmcdHeadersFactory.STREAMING_FORMAT_HLS) * eVar.j());
            } else {
                iOptInt3 = 0;
                iOptInt4 = 0;
            }
            float fOptLong = jSONObject.optLong("ip") / fOptDouble;
            float fOptLong2 = jSONObject.optLong("op") / fOptDouble;
            if (fOptLong > 0.0f) {
                arrayList = arrayList3;
                arrayList.add(new h0.a(eVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(fOptLong)));
            } else {
                arrayList = arrayList3;
            }
            if (fOptLong2 <= 0.0f) {
                fOptLong2 = eVar.m() + 1;
            }
            ArrayList arrayList5 = arrayList;
            arrayList5.add(new h0.a(eVar, Float.valueOf(1.0f), Float.valueOf(1.0f), null, fOptLong, Float.valueOf(fOptLong2)));
            arrayList5.add(new h0.a(eVar, Float.valueOf(0.0f), Float.valueOf(0.0f), null, fOptLong2, Float.valueOf(Float.MAX_VALUE)));
            return new d(arrayList4, eVar, strOptString, jOptLong, cVar, jOptLong2, strOptString2, arrayList2, lVarB, iOptInt, iOptInt2, color, fOptDouble, fOptDouble2, iOptInt3, iOptInt4, jVar, kVarA, arrayList5, enumC0115d, jSONObject.has("tm") ? com.airbnb.lottie.model.animatable.b.C0111b.c(jSONObject.optJSONObject("tm"), eVar, false) : null);
        }
    }

    public enum c {
        PreComp,
        Solid,
        Image,
        Null,
        Shape,
        Text,
        Unknown
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.d$d, reason: collision with other inner class name */
    enum EnumC0115d {
        None,
        Add,
        Invert,
        Unknown
    }

    com.airbnb.lottie.e a() {
        return this.composition;
    }

    public long b() {
        return this.layerId;
    }

    List<h0.a<Float>> c() {
        return this.inOutKeyframes;
    }

    public c d() {
        return this.layerType;
    }

    List<com.airbnb.lottie.model.content.g> e() {
        return this.masks;
    }

    EnumC0115d f() {
        return this.matteType;
    }

    String g() {
        return this.layerName;
    }

    long h() {
        return this.parentId;
    }

    int i() {
        return this.preCompHeight;
    }

    int j() {
        return this.preCompWidth;
    }

    @Nullable
    String k() {
        return this.refId;
    }

    List<com.airbnb.lottie.model.content.b> l() {
        return this.shapes;
    }

    int m() {
        return this.solidColor;
    }

    int n() {
        return this.solidHeight;
    }

    int o() {
        return this.solidWidth;
    }

    float p() {
        return this.startProgress;
    }

    @Nullable
    j q() {
        return this.text;
    }

    @Nullable
    k r() {
        return this.textProperties;
    }

    @Nullable
    com.airbnb.lottie.model.animatable.b s() {
        return this.timeRemapping;
    }

    float t() {
        return this.timeStretch;
    }

    l u() {
        return this.transform;
    }

    private d(List<com.airbnb.lottie.model.content.b> list, com.airbnb.lottie.e eVar, String str, long j6, c cVar, long j10, @Nullable String str2, List<com.airbnb.lottie.model.content.g> list2, l lVar, int i10, int i11, int i12, float f, float f6, int i13, int i14, @Nullable j jVar, @Nullable k kVar, List<h0.a<Float>> list3, EnumC0115d enumC0115d, @Nullable com.airbnb.lottie.model.animatable.b bVar) {
        this.shapes = list;
        this.composition = eVar;
        this.layerName = str;
        this.layerId = j6;
        this.layerType = cVar;
        this.parentId = j10;
        this.refId = str2;
        this.masks = list2;
        this.transform = lVar;
        this.solidWidth = i10;
        this.solidHeight = i11;
        this.solidColor = i12;
        this.timeStretch = f;
        this.startProgress = f6;
        this.preCompWidth = i13;
        this.preCompHeight = i14;
        this.text = jVar;
        this.textProperties = kVar;
        this.inOutKeyframes = list3;
        this.matteType = enumC0115d;
        this.timeRemapping = bVar;
    }

    public String toString() {
        return v("");
    }

    public String v(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(g());
        sb.append("\n");
        d dVarW = this.composition.w(h());
        if (dVarW != null) {
            sb.append("\t\tParents: ");
            sb.append(dVarW.g());
            d dVarW2 = this.composition.w(dVarW.h());
            while (dVarW2 != null) {
                sb.append("->");
                sb.append(dVarW2.g());
                dVarW2 = this.composition.w(dVarW2.h());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!e().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(e().size());
            sb.append("\n");
        }
        if (o() != 0 && n() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(o()), Integer.valueOf(n()), Integer.valueOf(m())));
        }
        if (!this.shapes.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (com.airbnb.lottie.model.content.b bVar : this.shapes) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(bVar);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
