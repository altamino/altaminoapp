package org.schabi.newpipe.extractor.services.peertube.extractors;

import aa.j;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.narvii.chat.input.MentionedEditText;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import oa.g;
import oa.h;
import oa.n;
import oa.o;
import oa.q;
import oa.s;
import qa.y;
import x9.m;
import x9.p;

/* JADX INFO: loaded from: classes10.dex */
public class e extends h {
    private static final String ACCOUNT_HOST = "account.host";
    private static final String ACCOUNT_NAME = "account.name";
    private static final String FILES = "files";
    private static final String FILE_DOWNLOAD_URL = "fileDownloadUrl";
    private static final String FILE_URL = "fileUrl";
    private static final String PLAYLIST_URL = "playlistUrl";
    private static final String RESOLUTION_ID = "resolution.id";
    private static final String STREAMING_PLAYLISTS = "streamingPlaylists";
    private final List<oa.a> audioStreams;
    private final String baseUrl;
    private JsonObject json;
    private final List<q> subtitles;
    private aa.h subtitlesException;
    private final List<s> videoStreams;

    private void d0(JsonObject jsonObject, boolean z6, String str, String str2, String str3, String str4) throws aa.h {
        String strSubstring = str3.substring(str3.lastIndexOf(".") + 1);
        m mVarB = m.b(strSubstring);
        String str5 = str + "-" + strSubstring;
        this.audioStreams.add(new oa.a.C0472a().i(str5 + "-" + str2 + "-" + oa.d.PROGRESSIVE_HTTP).g(str3, true).l(mVarB).f(-1).a());
        if (!y.m(str4)) {
            String strI0 = z6 ? i0(jsonObject, str2, strSubstring, str3) : j0(jsonObject, str4);
            oa.a.C0472a c0472a = new oa.a.C0472a();
            oa.d dVar = oa.d.HLS;
            oa.a aVarA = c0472a.i(str5 + "-" + dVar).g(strI0, true).h(dVar).l(mVarB).f(-1).k(str4).a();
            if (!g.a(aVarA, this.audioStreams)) {
                this.audioStreams.add(aVarA);
            }
        }
        String strH = qa.e.h(jsonObject, "torrentUrl");
        if (y.m(strH)) {
            return;
        }
        List<oa.a> list = this.audioStreams;
        oa.a.C0472a c0472a2 = new oa.a.C0472a();
        oa.d dVar2 = oa.d.TORRENT;
        list.add(c0472a2.i(str5 + "-" + str2 + "-" + dVar2).g(strH, true).h(dVar2).l(mVarB).f(-1).a());
    }

    private void e0(JsonObject jsonObject, boolean z6, String str, String str2, String str3, String str4) throws aa.h {
        String strSubstring = str3.substring(str3.lastIndexOf(".") + 1);
        m mVarB = m.b(strSubstring);
        String str5 = str + "-" + strSubstring;
        this.videoStreams.add(new s.a().d(str5 + "-" + str2 + "-" + oa.d.PROGRESSIVE_HTTP).b(str3, true).e(false).i(str).h(mVarB).a());
        if (!y.m(str4)) {
            String strI0 = z6 ? i0(jsonObject, str2, strSubstring, str3) : j0(jsonObject, str4);
            s.a aVar = new s.a();
            oa.d dVar = oa.d.HLS;
            s sVarA = aVar.d(str5 + "-" + dVar).b(strI0, true).e(false).c(dVar).i(str).h(mVarB).g(str4).a();
            if (!g.a(sVarA, this.videoStreams)) {
                this.videoStreams.add(sVarA);
            }
        }
        String strH = qa.e.h(jsonObject, "torrentUrl");
        if (y.m(strH)) {
            return;
        }
        List<s> list = this.videoStreams;
        s.a aVar2 = new s.a();
        oa.d dVar2 = oa.d.TORRENT;
        list.add(aVar2.d(str5 + "-" + str2 + "-" + dVar2).b(strH, true).e(false).c(dVar2).i(str).h(mVarB).a());
    }

    private void f0(oa.m mVar, JsonObject jsonObject) throws aa.h {
        try {
            for (Object obj : (JsonArray) qa.e.j(jsonObject, "data")) {
                if (obj instanceof JsonObject) {
                    f fVar = new f((JsonObject) obj, this.baseUrl);
                    if (!fVar.getUrl().equals(n())) {
                        mVar.d(fVar);
                    }
                }
            }
        } catch (Exception e) {
            throw new aa.h("Could not extract related videos", e);
        }
    }

    private void g0() throws aa.h {
        try {
            Stream map = this.json.getArray(STREAMING_PLAYLISTS).stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).map(new Function() { // from class: org.schabi.newpipe.extractor.services.peertube.extractors.c
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return e.p0((JsonObject) obj);
                }
            });
            final List<s> list = this.videoStreams;
            Objects.requireNonNull(list);
            map.forEachOrdered(new Consumer() { // from class: org.schabi.newpipe.extractor.services.peertube.extractors.d
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    list.add((s) obj);
                }
            });
        } catch (Exception e) {
            throw new aa.h("Could not get video streams", e);
        }
    }

    private JsonObject h0(String str) throws j, aa.h, IOException {
        z9.d dVar = d().get(this.baseUrl + ia.c.VIDEO_API_ENDPOINT + g() + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str);
        if (dVar == null) {
            throw new aa.h("Could not get segments from API.");
        }
        if (dVar.d() == 400) {
            return null;
        }
        if (dVar.d() == 200) {
            try {
                return (JsonObject) JsonParser.object().from(dVar.c());
            } catch (JsonParserException e) {
                throw new aa.h("Could not parse json data for segments", e);
            }
        }
        throw new aa.h("Could not get segments from API. Response code: " + dVar.d());
    }

    private String i0(JsonObject jsonObject, String str, String str2, String str3) throws aa.h {
        if (FILE_DOWNLOAD_URL.equals(str)) {
            str3 = qa.e.h(jsonObject, FILE_URL);
        }
        return str3.replace("-fragmented." + str2, ".m3u8");
    }

    private String j0(JsonObject jsonObject, String str) throws aa.h {
        return str.replace("master", qa.e.e(jsonObject, RESOLUTION_ID).toString());
    }

    private String l0(List<String> list) {
        String str = this.baseUrl + "/api/v1/search/videos";
        StringBuilder sb = new StringBuilder();
        sb.append("start=0&count=8&sort=-createdAt");
        for (String str2 : list) {
            sb.append("&tagsOneOf=");
            sb.append(y.e(str2));
        }
        return str + "?" + ((Object) sb);
    }

    private void m0() throws aa.h {
        o0(this.json.getArray(FILES), "");
        try {
            for (JsonObject jsonObject : (List) this.json.getArray(STREAMING_PLAYLISTS).stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).collect(Collectors.toList())) {
                o0(jsonObject.getArray(FILES), jsonObject.getString(PLAYLIST_URL));
            }
        } catch (Exception e) {
            throw new aa.h("Could not get streams", e);
        }
    }

    private void o0(JsonArray jsonArray, String str) throws aa.h {
        try {
            boolean z6 = !y.m(str) && str.endsWith("-master.m3u8");
            for (JsonObject jsonObject : (List) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).collect(Collectors.toList())) {
                String strH = qa.e.h(jsonObject, jsonObject.has(FILE_URL) ? FILE_URL : FILE_DOWNLOAD_URL);
                if (y.m(strH)) {
                    return;
                }
                String strH2 = qa.e.h(jsonObject, "resolution.label");
                String str2 = jsonObject.has(FILE_URL) ? FILE_URL : FILE_DOWNLOAD_URL;
                if (strH2.toLowerCase().contains("audio")) {
                    d0(jsonObject, z6, strH2, str2, strH, str);
                } else {
                    e0(jsonObject, z6, strH2, str2, strH, str);
                }
            }
        } catch (Exception e) {
            throw new aa.h("Could not get streams from array", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s p0(JsonObject jsonObject) {
        return new s.a().d(String.valueOf(jsonObject.getInt("id", -1))).b(jsonObject.getString(PLAYLIST_URL, ""), true).e(false).i("").h(m.MPEG_4).c(oa.d.HLS).a();
    }

    private void q0() {
        if (this.subtitles.isEmpty()) {
            try {
                for (Object obj : qa.e.a((JsonObject) JsonParser.object().from(d().get(this.baseUrl + ia.c.VIDEO_API_ENDPOINT + g() + "/captions").c()), "data")) {
                    if (obj instanceof JsonObject) {
                        JsonObject jsonObject = (JsonObject) obj;
                        String str = this.baseUrl + qa.e.h(jsonObject, "captionPath");
                        String strH = qa.e.h(jsonObject, "language.id");
                        m mVarB = m.b(str.substring(str.lastIndexOf(".") + 1));
                        if (mVarB != null && !y.m(strH)) {
                            this.subtitles.add(new q.a().c(str, true).e(mVarB).d(strH).b(false).a());
                        }
                    }
                }
            } catch (Exception e) {
                this.subtitlesException = new aa.h("Could not get subtitles", e);
            }
        }
    }

    private void r0(String str) throws aa.d {
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from(str);
            this.json = jsonObject;
            if (jsonObject == null) {
                throw new aa.d("Could not extract PeerTube stream data");
            }
            ha.f.j(jsonObject);
        } catch (JsonParserException e) {
            throw new aa.d("Could not extract PeerTube stream data", e);
        }
    }

    @Override // oa.h
    public long A() {
        return this.json.getLong(TypedValues.TransitionType.S_DURATION);
    }

    @Override // oa.h
    public String B() throws aa.h {
        return qa.e.h(this.json, "licence.label");
    }

    @Override // oa.h
    public long C() {
        return this.json.getLong("likes");
    }

    @Override // oa.h
    public h.a E() {
        int i10 = this.json.getObject("privacy").getInt("id");
        if (i10 == 1) {
            return h.a.PUBLIC;
        }
        if (i10 == 2) {
            return h.a.UNLISTED;
        }
        if (i10 != 3) {
            return i10 != 4 ? h.a.OTHER : h.a.INTERNAL;
        }
        return h.a.PRIVATE;
    }

    @Override // oa.h
    public List<n> G() throws aa.h {
        ArrayList arrayList = new ArrayList();
        try {
            JsonObject jsonObjectH0 = h0("chapters");
            if (jsonObjectH0 != null && jsonObjectH0.has("chapters")) {
                JsonArray array = jsonObjectH0.getArray("chapters");
                for (int i10 = 0; i10 < array.size(); i10++) {
                    JsonObject object = array.getObject(i10);
                    arrayList.add(new n(object.getString("title"), object.getInt("timecode")));
                }
            }
            return arrayList;
        } catch (j | IOException e) {
            throw new aa.h("Could not get stream segments", e);
        }
    }

    @Override // oa.h
    public o H() {
        return this.json.getBoolean("isLive") ? o.LIVE_STREAM : o.VIDEO_STREAM;
    }

    @Override // oa.h
    public List<x9.c> I() {
        return ha.f.c(this.baseUrl, this.json.getObject("channel"));
    }

    @Override // oa.h
    public String J() throws aa.h {
        return qa.e.h(this.json, "channel.displayName");
    }

    @Override // oa.h
    public String K() throws aa.h {
        return qa.e.h(this.json, "channel.url");
    }

    @Override // oa.h
    public List<q> L() throws aa.h {
        aa.h hVar = this.subtitlesException;
        if (hVar == null) {
            return this.subtitles;
        }
        throw hVar;
    }

    @Override // oa.h
    public String M() {
        try {
            return qa.e.h(this.json, "support");
        } catch (aa.h unused) {
            return "";
        }
    }

    @Override // oa.h
    public List<String> N() {
        return qa.e.i(this.json.getArray("tags"));
    }

    @Override // oa.h
    public String O() throws aa.h {
        return qa.e.h(this.json, "publishedAt");
    }

    @Override // oa.h
    public List<x9.c> P() throws aa.h {
        return ha.f.f(this.baseUrl, this.json);
    }

    @Override // oa.h
    public long Q() throws aa.h {
        long jR = R("((#|&|\\?)start=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)");
        if (jR == -2) {
            return 0L;
        }
        return jR;
    }

    @Override // oa.h
    public List<x9.c> T() {
        return ha.f.c(this.baseUrl, this.json.getObject("account"));
    }

    @Override // oa.h
    public String U() throws aa.h {
        return qa.e.h(this.json, "account.displayName");
    }

    @Override // oa.h
    public String W() throws aa.h {
        String strH = qa.e.h(this.json, ACCOUNT_NAME);
        String strH2 = qa.e.h(this.json, ACCOUNT_HOST);
        return k().a().b("accounts/" + strH + MentionedEditText.DEFAULT_METION_TAG + strH2, this.baseUrl).d();
    }

    @Override // oa.h
    public long Z() {
        return this.json.getLong("views");
    }

    @Override // x9.b
    public String i() throws aa.h {
        return qa.e.h(this.json, "name");
    }

    @Override // x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        z9.d dVar = aVar.get(this.baseUrl + ia.c.VIDEO_API_ENDPOINT + g());
        if (dVar == null) {
            throw new aa.d("Could not extract PeerTube channel data");
        }
        r0(dVar.c());
        q0();
    }

    @Override // oa.h
    public int p() throws aa.h {
        return qa.e.b(this.json, "nsfw").booleanValue() ? 18 : 0;
    }

    @Override // oa.h
    public String r() throws aa.h {
        return qa.e.h(this.json, "category.label");
    }

    @Override // oa.h
    public oa.e t() throws aa.h {
        try {
            String strH = qa.e.h(this.json, "description");
            if (strH.length() == 250 && strH.substring(247).equals("...")) {
                z9.a aVarA = p.a();
                try {
                    strH = qa.e.h((JsonObject) JsonParser.object().from(aVarA.get(this.baseUrl + ia.c.VIDEO_API_ENDPOINT + g() + "/description").c()), "description");
                } catch (j | IOException | JsonParserException unused) {
                }
            }
            return new oa.e(strH, 2);
        } catch (aa.h unused2) {
            return oa.e.EMPTY_DESCRIPTION;
        }
    }

    @Override // oa.h
    public long u() {
        return this.json.getLong("dislikes");
    }

    @Override // oa.h
    public List<oa.f> w() throws aa.d {
        ArrayList arrayList = new ArrayList();
        try {
            JsonObject jsonObjectH0 = h0("storyboards");
            if (jsonObjectH0 != null && jsonObjectH0.has("storyboards")) {
                for (Object obj : jsonObjectH0.getArray("storyboards")) {
                    if (obj instanceof JsonObject) {
                        JsonObject jsonObject = (JsonObject) obj;
                        String string = jsonObject.getString("storyboardPath");
                        int i10 = jsonObject.getInt("spriteWidth");
                        int i11 = jsonObject.getInt("spriteHeight");
                        int i12 = jsonObject.getInt("totalWidth") / i10;
                        int i13 = jsonObject.getInt("totalHeight") / i11;
                        arrayList.add(new oa.f(net.pubnative.lite.sdk.vpaid.h.a(new Object[]{this.baseUrl + string}), i10, i11, i12 * i13, jsonObject.getInt("spriteDuration") * 1000, i12, i13));
                    }
                }
            }
            return arrayList;
        } catch (j | IOException e) {
            throw new aa.d("Could not get frames", e);
        }
    }

    @Override // oa.h
    public String y() throws aa.h {
        return qa.e.h(this.json, ACCOUNT_HOST);
    }

    @Override // oa.h
    public Locale z() {
        try {
            return new Locale(qa.e.h(this.json, "language.id"));
        } catch (aa.h unused) {
            return null;
        }
    }

    public e(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) throws aa.h {
        super(sVar, aVar);
        this.subtitles = new ArrayList();
        this.audioStreams = new ArrayList();
        this.videoStreams = new ArrayList();
        this.subtitlesException = null;
        this.baseUrl = c();
    }

    private void n0(oa.m mVar, String str) throws j, aa.h, IOException {
        JsonObject jsonObject;
        z9.d dVar = d().get(str);
        if (dVar != null && !y.k(dVar.c())) {
            try {
                jsonObject = (JsonObject) JsonParser.object().from(dVar.c());
            } catch (JsonParserException e) {
                throw new aa.h("Could not parse json data for related videos", e);
            }
        } else {
            jsonObject = null;
        }
        if (jsonObject != null) {
            f0(mVar, jsonObject);
        }
    }

    @Override // oa.h
    public org.schabi.newpipe.extractor.localization.e S() throws aa.h {
        String strO = O();
        if (strO == null) {
            return null;
        }
        return new org.schabi.newpipe.extractor.localization.e(ha.f.i(strO));
    }

    @Override // oa.h
    public List<s> X() {
        return Collections.emptyList();
    }

    @Override // oa.h
    public List<s> Y() throws aa.d {
        a();
        if (this.videoStreams.isEmpty()) {
            if (H() == o.VIDEO_STREAM) {
                m0();
            } else {
                g0();
            }
        }
        return this.videoStreams;
    }

    @Override // oa.h
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public oa.m F() throws IOException, aa.d {
        String strL0;
        List<String> listN = N();
        if (listN.isEmpty()) {
            strL0 = this.baseUrl + "/api/v1/accounts/" + qa.e.h(this.json, ACCOUNT_NAME) + MentionedEditText.DEFAULT_METION_TAG + qa.e.h(this.json, ACCOUNT_HOST) + "/videos?start=0&count=8";
        } else {
            strL0 = l0(listN);
        }
        if (y.k(strL0)) {
            return null;
        }
        oa.m mVar = new oa.m(l());
        n0(mVar, strL0);
        return mVar;
    }

    @Override // oa.h
    public List<oa.a> q() throws aa.h {
        a();
        if (this.audioStreams.isEmpty() && this.videoStreams.isEmpty() && H() == o.VIDEO_STREAM) {
            m0();
        }
        return this.audioStreams;
    }

    @Override // oa.h
    public String x() {
        a();
        if (H() == o.VIDEO_STREAM && !y.o(this.json.getObject(FILES))) {
            return this.json.getObject(FILES).getString(PLAYLIST_URL, "");
        }
        return this.json.getArray(STREAMING_PLAYLISTS).getObject(0).getString(PLAYLIST_URL, "");
    }
}
