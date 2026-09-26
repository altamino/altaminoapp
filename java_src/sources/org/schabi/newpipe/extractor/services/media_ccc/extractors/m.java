package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import oa.s;

/* JADX INFO: loaded from: classes6.dex */
public class m extends oa.h {
    private static final String STREAMS = "streams";
    private static final String URL = "url";
    private static final String URLS = "urls";
    private JsonObject conference;
    private String group;
    private JsonObject room;

    @Override // oa.h
    public long Z() {
        return -1L;
    }

    @Override // oa.h
    public String r() {
        return this.group;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {
        final JsonObject streamJsonObj;
        final String urlKey;
        final JsonObject urlValue;

        a(JsonObject jsonObject, String str, JsonObject jsonObject2) {
            this.streamJsonObj = jsonObject;
            this.urlKey = str;
            this.urlValue = jsonObject2;
        }
    }

    private String m0(final String str) {
        return (String) this.room.getArray(STREAMS).stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new d(JsonObject.class)).map(new Function() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m.p0((JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.f
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return m.q0(str, (JsonObject) obj);
            }
        }).map(new Function() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m.r0(str, (JsonObject) obj);
            }
        }).findFirst().orElse("");
    }

    private <T extends oa.g> List<T> n0(final String str, Function<a, T> function) {
        return (List) this.room.getArray(STREAMS).stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new d(JsonObject.class)).filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.j
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return m.s0(str, (JsonObject) obj);
            }
        }).flatMap(new Function() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m.v0((JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return m.w0((m.a) obj);
            }
        }).map(function).collect(Collectors.toList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ oa.a o0(a aVar) {
        oa.a.C0472a c0472aF = new oa.a.C0472a().i(aVar.urlValue.getString("tech", " ")).g(aVar.urlValue.getString("url"), true).f(-1);
        return "hls".equals(aVar.urlKey) ? c0472aF.h(oa.d.HLS).a() : c0472aF.l(x9.m.b(aVar.urlKey)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject p0(JsonObject jsonObject) {
        return jsonObject.getObject(URLS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean s0(String str, JsonObject jsonObject) {
        return str.equals(jsonObject.getString("type"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a u0(JsonObject jsonObject, Map.Entry entry) {
        return new a(jsonObject, (String) entry.getKey(), (JsonObject) entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream v0(final JsonObject jsonObject) {
        return jsonObject.getObject(URLS).entrySet().stream().filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.b
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return m.t0((Map.Entry) obj);
            }
        }).map(new Function() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m.u0(jsonObject, (Map.Entry) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean w0(a aVar) {
        return !"dash".equals(aVar.urlKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s x0(a aVar) {
        JsonArray array = aVar.streamJsonObj.getArray("videoSize");
        s.a aVarI = new s.a().d(aVar.urlValue.getString("tech", " ")).b(aVar.urlValue.getString("url"), true).e(false).i(array.getInt(0) + "x" + array.getInt(1));
        return "hls".equals(aVar.urlKey) ? aVarI.c(oa.d.HLS).a() : aVarI.h(x9.m.b(aVar.urlKey)).a();
    }

    @Override // oa.h
    public oa.o H() throws aa.h {
        return oa.o.LIVE_STREAM;
    }

    @Override // oa.h
    public List<x9.c> P() throws aa.h {
        return p.c(this.room);
    }

    @Override // oa.h
    public String U() throws aa.h {
        return this.conference.getString("conference");
    }

    @Override // oa.h
    public String W() throws aa.h {
        return "https://streaming.media.ccc.de/" + this.conference.getString("slug");
    }

    @Override // oa.h
    public List<s> Y() throws IOException, aa.d {
        return n0("video", new Function() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m.x0((m.a) obj);
            }
        });
    }

    @Override // x9.b
    public String i() throws aa.h {
        return this.room.getString("display");
    }

    @Override // oa.h
    public List<oa.a> q() throws IOException, aa.d {
        return n0("audio", new Function() { // from class: org.schabi.newpipe.extractor.services.media_ccc.extractors.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return m.o0((m.a) obj);
            }
        });
    }

    @Override // oa.h
    public String s() throws aa.h {
        return m0("dash");
    }

    @Override // oa.h
    public oa.e t() throws aa.h {
        return new oa.e(this.conference.getString("description") + " - " + this.group, 3);
    }

    @Override // oa.h
    public String x() {
        return m0("hls");
    }

    public m(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
        this.conference = null;
        this.group = "";
        this.room = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean q0(String str, JsonObject jsonObject) {
        return jsonObject.has(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String r0(String str, JsonObject jsonObject) {
        return jsonObject.getObject(str).getString("url", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean t0(Map.Entry entry) {
        return entry.getValue() instanceof JsonObject;
    }

    @Override // oa.h
    public List<s> X() {
        return Collections.emptyList();
    }

    @Override // x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        JsonArray jsonArrayB = p.b(aVar, f());
        for (int i10 = 0; i10 < jsonArrayB.size(); i10++) {
            JsonObject object = jsonArrayB.getObject(i10);
            JsonArray array = object.getArray("groups");
            for (int i11 = 0; i11 < array.size(); i11++) {
                String string = array.getObject(i11).getString("group");
                JsonArray array2 = array.getObject(i11).getArray("rooms");
                for (int i12 = 0; i12 < array2.size(); i12++) {
                    JsonObject object2 = array2.getObject(i12);
                    if (g().equals(object.getString("slug") + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + object2.getString("slug"))) {
                        this.conference = object;
                        this.group = string;
                        this.room = object2;
                        return;
                    }
                }
            }
        }
        throw new aa.d("Could not find room matching id: '" + g() + "'");
    }
}
