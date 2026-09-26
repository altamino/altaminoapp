package ka;

import aa.f;
import aa.k;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.ImagesContract;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.mixpanel.android.mpmetrics.e;
import com.narvii.master.home.profile.GlobalProfileFragment;
import ja.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
import oa.g;
import oa.h;
import oa.o;
import qa.y;
import x9.m;
import x9.p;
import x9.s;

/* JADX INFO: loaded from: classes6.dex */
public class c extends h {
    private boolean isAvailable;
    private JsonObject track;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean k0(JsonObject jsonObject) {
        return jsonObject.getString("preset").contains("mp3") && jsonObject.getObject("format").getString("protocol").equals("progressive");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(boolean z6, List list, JsonObject jsonObject) {
        String string = jsonObject.getString(ImagesContract.URL);
        if (y.m(string)) {
            return;
        }
        try {
            String string2 = jsonObject.getString("preset", " ");
            String string3 = jsonObject.getObject("format").getString("protocol");
            oa.a.C0472a c0472aI = new oa.a.C0472a().i(string2);
            boolean zEquals = string3.equals("hls");
            if (zEquals) {
                c0472aI.h(oa.d.HLS);
            }
            c0472aI.g(j0(string), true);
            if (string2.contains("mp3")) {
                if (z6 && zEquals) {
                    return;
                }
                c0472aI.l(m.MP3);
                c0472aI.f(128);
            } else {
                if (!string2.contains("opus")) {
                    return;
                }
                c0472aI.l(m.OPUS);
                c0472aI.f(64);
                c0472aI.h(oa.d.HLS);
            }
            oa.a aVarA = c0472aI.a();
            if (g.a(aVarA, list)) {
                return;
            }
            list.add(aVarA);
        } catch (aa.d | IOException unused) {
        }
    }

    @Override // oa.h
    public long A() {
        return this.track.getLong(TypedValues.TransitionType.S_DURATION) / 1000;
    }

    @Override // oa.h
    public String B() {
        return this.track.getString("license");
    }

    @Override // oa.h
    public long C() {
        return this.track.getLong("likes_count", -1L);
    }

    @Override // oa.h
    public h.a E() {
        return this.track.getString("sharing").equals("public") ? h.a.PUBLIC : h.a.PRIVATE;
    }

    @Override // oa.h
    public o H() {
        return o.AUDIO_STREAM;
    }

    @Override // oa.h
    public List<String> N() {
        String[] strArrSplit = this.track.getString("tag_list").split(" ");
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        boolean z6 = false;
        for (String str : strArrSplit) {
            if (str.startsWith("\"")) {
                sb.append(str.replace("\"", ""));
                z6 = true;
            } else if (z6) {
                if (str.endsWith("\"")) {
                    sb.append(" ");
                    sb.append(str.replace("\"", ""));
                    arrayList.add(sb.toString());
                    z6 = false;
                } else {
                    sb.append(" ");
                    sb.append(str);
                }
            } else if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @Override // oa.h
    public String O() {
        return this.track.getString(e.KEY_CREATED_AT).replace(ExifInterface.GPS_DIRECTION_TRUE, " ").replace("Z", "");
    }

    @Override // oa.h
    public List<x9.c> P() throws aa.h {
        return i.e(this.track);
    }

    @Override // oa.h
    public long Q() throws aa.h {
        return R("(#t=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)");
    }

    @Override // oa.h
    public org.schabi.newpipe.extractor.localization.e S() throws aa.h {
        return new org.schabi.newpipe.extractor.localization.e(i.m(this.track.getString(e.KEY_CREATED_AT)));
    }

    @Override // oa.h
    public List<x9.c> T() {
        return i.c(i.f(this.track));
    }

    @Override // oa.h
    public String U() {
        return i.j(this.track);
    }

    @Override // oa.h
    public String W() {
        return i.k(this.track);
    }

    @Override // oa.h
    public long Z() {
        return this.track.getLong("playback_count");
    }

    @Override // oa.h
    public boolean b0() throws aa.h {
        return this.track.getObject(GlobalProfileFragment.KEY_USER).getBoolean("verified");
    }

    @Override // x9.b
    public String g() {
        return String.valueOf(this.track.getInt("id"));
    }

    public void g0(List<oa.a> list) {
        if (this.track.getBoolean("downloadable") && this.track.getBoolean("has_downloads_left")) {
            try {
                String strH0 = h0(g());
                if (y.m(strH0)) {
                    return;
                }
                list.add(new oa.a.C0472a().i("original-format").g(strH0, true).f(-1).a());
            } catch (Exception unused) {
            }
        }
    }

    @Override // x9.b
    public String i() {
        return this.track.getString("title");
    }

    @Override // oa.h
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public oa.m F() throws IOException, aa.d {
        oa.m mVar = new oa.m(l());
        i.h(mVar, "https://api-v2.soundcloud.com/tracks/" + y.e(g()) + "/related?client_id=" + y.e(i.b()));
        return mVar;
    }

    @Override // oa.h
    public List<oa.a> q() throws aa.d {
        ArrayList arrayList = new ArrayList();
        if (!this.track.getBoolean("streamable") || !this.isAvailable) {
            return arrayList;
        }
        try {
            JsonArray array = this.track.getObject("media").getArray("transcodings");
            if (!y.n(array)) {
                f0(array, e0(array), arrayList);
            }
            g0(arrayList);
            return arrayList;
        } catch (NullPointerException e) {
            throw new aa.d("Could not get audio streams", e);
        }
    }

    @Override // oa.h
    public String r() {
        return this.track.getString("genre");
    }

    @Override // oa.h
    public oa.e t() {
        return new oa.e(this.track.getString("description"), 3);
    }

    public c(s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
        this.isAvailable = true;
    }

    private static boolean e0(JsonArray jsonArray) {
        return jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).anyMatch(new Predicate() { // from class: ka.b
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return c.k0((JsonObject) obj);
            }
        });
    }

    private void f0(JsonArray jsonArray, final boolean z6, final List<oa.a> list) {
        jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).forEachOrdered(new Consumer() { // from class: ka.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f3255a.l0(z6, list, (JsonObject) obj);
            }
        });
    }

    private String h0(String str) throws IOException, aa.d {
        try {
            String string = ((JsonObject) JsonParser.object().from(p.a().get("https://api-v2.soundcloud.com/tracks/" + str + "/download?client_id=" + i.b()).c())).getString("redirectUri");
            if (!y.m(string)) {
                return string;
            }
            return null;
        } catch (JsonParserException e) {
            throw new aa.h("Could not parse download URL", e);
        }
    }

    private String j0(String str) throws IOException, aa.d {
        try {
            return ((JsonObject) JsonParser.object().from(p.a().get(str + "?client_id=" + i.b()).c())).getString(ImagesContract.URL);
        } catch (JsonParserException e) {
            throw new aa.h("Could not parse streamable URL", e);
        }
    }

    @Override // oa.h
    public List<oa.s> X() {
        return Collections.emptyList();
    }

    @Override // oa.h
    public List<oa.s> Y() {
        return Collections.emptyList();
    }

    @Override // x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        JsonObject jsonObjectN = i.n(aVar, n());
        this.track = jsonObjectN;
        String string = jsonObjectN.getString("policy", "");
        if (!string.equals("ALLOW") && !string.equals("MONETIZE")) {
            this.isAvailable = false;
            if (!string.equals("SNIP")) {
                if (string.equals("BLOCK")) {
                    throw new f("This track is not available in user's country");
                }
                throw new aa.b("Content not available: policy " + string);
            }
            throw new k();
        }
    }
}
