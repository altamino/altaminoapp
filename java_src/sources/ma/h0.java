package ma;

import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.google.android.gms.common.internal.ImagesContract;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonWriter;
import com.narvii.account.AccountService;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes11.dex */
public class h0 extends oa.h {
    private static final String ADAPTIVE_FORMATS = "adaptiveFormats";
    private static final String CIPHER = "cipher";
    private static final String FORMATS = "formats";
    private static final String NEXT = "next";
    private static final String PLAYER = "player";
    private static final String SIGNATURE_CIPHER = "signatureCipher";
    private static final String STREAMING_DATA = "streamingData";
    private int ageLimit;
    private String androidCpn;
    private JsonObject androidStreamingData;
    private String iosCpn;
    private JsonObject iosStreamingData;
    private JsonObject nextResponse;
    private JsonObject playerCaptionsTracklistRenderer;
    private JsonObject playerMicroFormatRenderer;
    private JsonObject playerResponse;
    private oa.o streamType;
    private String tvHtml5SimplyEmbedCpn;
    private JsonObject tvHtml5SimplyEmbedStreamingData;
    private JsonObject videoPrimaryInfoRenderer;
    private JsonObject videoSecondaryInfoRenderer;

    @Override // oa.h
    public Locale z() {
        return null;
    }

    private Function<a, oa.a> B0() {
        return new Function() { // from class: ma.c0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f3269a.R0((a) obj);
            }
        };
    }

    private static String E0(String str, List<JsonObject> list) {
        final String str2 = str + "ManifestUrl";
        return (String) list.stream().filter(new Predicate() { // from class: ma.d0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return g.a((JsonObject) obj);
            }
        }).map(new Function() { // from class: ma.e0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.U0(str2, (JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: ma.f0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return g.a((String) obj);
            }
        }).findFirst().orElse("");
    }

    private Stream<a> G0(final String str, JsonObject jsonObject, String str2, final org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a enumC0481a, final String str3) {
        return (jsonObject == null || !jsonObject.has(str2)) ? Stream.empty() : jsonObject.getArray(str2).stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).map(new Function() { // from class: ma.z
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f3281a.Z0(enumC0481a, str, str3, (JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: ma.a0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return g.a((a) obj);
            }
        });
    }

    private JsonObject I0(final String str) {
        return (JsonObject) this.nextResponse.getObject("contents").getObject("twoColumnWatchNextResults").getObject("results").getObject("results").getArray("contents").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: ma.p
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return h0.a1(str, (JsonObject) obj);
            }
        }).map(new Function() { // from class: ma.q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.b1(str, (JsonObject) obj);
            }
        }).findFirst().orElse(new JsonObject());
    }

    private JsonObject J0() {
        JsonObject jsonObject = this.videoPrimaryInfoRenderer;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonObject jsonObjectI0 = I0("videoPrimaryInfoRenderer");
        this.videoPrimaryInfoRenderer = jsonObjectI0;
        return jsonObjectI0;
    }

    private JsonObject K0() {
        JsonObject jsonObject = this.videoSecondaryInfoRenderer;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonObject jsonObjectI0 = I0("videoSecondaryInfoRenderer");
        this.videoSecondaryInfoRenderer = jsonObjectI0;
        return jsonObjectI0;
    }

    private Function<a, oa.s> L0(final boolean z6) {
        return new Function() { // from class: ma.k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f3271a.c1(z6, (a) obj);
            }
        };
    }

    private static boolean M0(JsonObject jsonObject, String str) {
        return !str.equals(jsonObject.getObject("videoDetails").getString(r0.VIDEO_ID));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream N0(JsonObject jsonObject) {
        return jsonObject.getObject("metadataRowRenderer").getArray("contents").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream O0(JsonObject jsonObject) {
        return jsonObject.getArray("runs").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String P0(JsonObject jsonObject) {
        return jsonObject.getString("text", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean Q0(String str) {
        return str.contains("Age-restricted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x9.f V0(org.schabi.newpipe.extractor.localization.f0 f0Var, JsonObject jsonObject) {
        if (jsonObject.has("compactVideoRenderer")) {
            return new m0(jsonObject.getObject("compactVideoRenderer"), f0Var);
        }
        if (jsonObject.has("compactRadioRenderer")) {
            return new b(jsonObject.getObject("compactRadioRenderer"));
        }
        if (jsonObject.has("compactPlaylistRenderer")) {
            return new b(jsonObject.getObject("compactPlaylistRenderer"));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean W0(JsonObject jsonObject) {
        return "engagement-panel-macro-markers-description-chapters".equals(jsonObject.getObject("engagementPanelSectionListRenderer").getString("panelIdentifier"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonArray X0(JsonObject jsonObject) {
        return jsonObject.getObject("engagementPanelSectionListRenderer").getObject("content").getObject("macroMarkersListRenderer").getArray("contents");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject Y0(JsonObject jsonObject) {
        return jsonObject.getObject("macroMarkersListItemRenderer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ a Z0(org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a enumC0481a, String str, String str2, JsonObject jsonObject) {
        try {
            org.schabi.newpipe.extractor.services.youtube.a aVarN = org.schabi.newpipe.extractor.services.youtube.a.n(jsonObject.getInt("itag"));
            org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a enumC0481a2 = aVarN.itagType;
            if (enumC0481a2 == enumC0481a) {
                return w0(str, jsonObject, aVarN, enumC0481a2, str2);
            }
            return null;
        } catch (aa.d unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject d1(JsonObject jsonObject) {
        return jsonObject.getObject("segmentedLikeDislikeButtonRenderer").getObject("likeButton").getObject("toggleButtonRenderer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject f1(JsonObject jsonObject) {
        return jsonObject.getObject("segmentedLikeDislikeButtonViewModel").getObject("likeButtonViewModel").getObject("likeButtonViewModel").getObject("toggleButtonViewModel").getObject("toggleButtonViewModel").getObject("defaultButtonViewModel").getObject("buttonViewModel");
    }

    private void j1() {
        if (this.playerResponse.getObject("playabilityStatus").has("liveStreamability")) {
            this.streamType = oa.o.LIVE_STREAM;
        } else if (this.playerResponse.getObject("videoDetails").getBoolean("isPostLiveDvr", Boolean.FALSE)) {
            this.streamType = oa.o.POST_LIVE_STREAM;
        } else {
            this.streamType = oa.o.VIDEO_STREAM;
        }
    }

    private a w0(String str, JsonObject jsonObject, final org.schabi.newpipe.extractor.services.youtube.a aVar, org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a enumC0481a, String str2) throws Exception {
        String string;
        if (jsonObject.has(ImagesContract.URL)) {
            string = jsonObject.getString(ImagesContract.URL);
        } else {
            Map<String, String> mapF = qa.n.f(jsonObject.getString(CIPHER, jsonObject.getString(SIGNATURE_CIPHER)));
            String strA = org.schabi.newpipe.extractor.services.youtube.l.a(str, (String) mapF.getOrDefault(CmcdHeadersFactory.STREAMING_FORMAT_SS, ""));
            string = mapF.get(ImagesContract.URL) + "&" + mapF.get("sp") + "=" + strA;
        }
        String strD = org.schabi.newpipe.extractor.services.youtube.l.d(str, string + "&cpn=" + str2);
        JsonObject object = jsonObject.getObject("initRange");
        JsonObject object2 = jsonObject.getObject("indexRange");
        String string2 = jsonObject.getString("mimeType", "");
        String str3 = string2.contains("codecs") ? string2.split("\"")[1] : "";
        aVar.y(jsonObject.getInt("bitrate"));
        aVar.K(jsonObject.getInt("width"));
        aVar.C(jsonObject.getInt("height"));
        aVar.G(Integer.parseInt(object.getString("start", "-1")));
        aVar.F(Integer.parseInt(object.getString("end", "-1")));
        aVar.E(Integer.parseInt(object2.getString("start", "-1")));
        aVar.D(Integer.parseInt(object2.getString("end", "-1")));
        aVar.H(jsonObject.getString("quality"));
        aVar.z(str3);
        oa.o oVar = this.streamType;
        if (oVar == oa.o.LIVE_STREAM || oVar == oa.o.POST_LIVE_STREAM) {
            aVar.J(jsonObject.getInt("targetDurationSec"));
        }
        if (enumC0481a == org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a.VIDEO || enumC0481a == org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a.VIDEO_ONLY) {
            aVar.B(jsonObject.getInt("fps"));
        } else if (enumC0481a == org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a.AUDIO) {
            aVar.I(Integer.parseInt(jsonObject.getString("audioSampleRate")));
            aVar.t(jsonObject.getInt("audioChannels", 2));
            String string3 = jsonObject.getObject("audioTrack").getString("id");
            if (!qa.y.m(string3)) {
                aVar.v(string3);
                int iIndexOf = string3.indexOf(".");
                if (iIndexOf != -1) {
                    qa.f.a(string3.substring(0, iIndexOf)).ifPresent(new Consumer() { // from class: ma.b0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            aVar.u((Locale) obj);
                        }
                    });
                }
                aVar.x(r0.k(strD));
            }
            aVar.w(jsonObject.getObject("audioTrack").getString("displayName"));
        }
        aVar.A(Long.parseLong(jsonObject.getString("contentLength", String.valueOf(-1L))));
        aVar.s(Long.parseLong(jsonObject.getString("approxDurationMs", String.valueOf(-1L))));
        a aVar2 = new a(strD, aVar);
        oa.o oVar2 = this.streamType;
        if (oVar2 == oa.o.VIDEO_STREAM) {
            aVar2.d(!jsonObject.getString("type", "").equalsIgnoreCase("FORMAT_STREAM_TYPE_OTF"));
        } else {
            aVar2.d(oVar2 != oa.o.POST_LIVE_STREAM);
        }
        return aVar2;
    }

    private void x0(JsonObject jsonObject, JsonObject jsonObject2) throws aa.h {
        String string;
        String string2 = jsonObject2.getString(NotificationCompat.CATEGORY_STATUS);
        if (string2 == null || string2.equalsIgnoreCase("ok")) {
            return;
        }
        JsonObject object = jsonObject.getObject("playabilityStatus");
        String string3 = object.getString(NotificationCompat.CATEGORY_STATUS);
        String string4 = object.getString("reason");
        if (string3.equalsIgnoreCase("login_required") && string4 == null && (string = object.getArray("messages").getString(0)) != null && string.contains("private")) {
            throw new aa.i("This video is private.");
        }
        if ((string3.equalsIgnoreCase("unplayable") || string3.equalsIgnoreCase(com.google.firebase.messaging.e.IPC_BUNDLE_KEY_SEND_ERROR)) && string4 != null) {
            if (string4.contains("Music Premium")) {
                throw new aa.l();
            }
            if (string4.contains("payment")) {
                throw new aa.g("This video is a paid video");
            }
            if (string4.contains("members-only")) {
                throw new aa.g("This video is only available for members of the channel of this video");
            }
            if (string4.contains("unavailable")) {
                String strJ = r0.J(object.getObject("errorScreen").getObject("playerErrorMessageRenderer").getObject("subreason"));
                if (strJ != null && strJ.contains("country")) {
                    throw new aa.f("This video is not available in client's country.");
                }
                throw new aa.b((String) org.schabi.newpipe.extractor.services.youtube.k.a(strJ, string4));
            }
        }
        throw new aa.b("Got error: \"" + string4 + "\"");
    }

    @Override // oa.h
    public List<x9.n> D() throws aa.h {
        return org.schabi.newpipe.extractor.services.youtube.p.f(this.nextResponse.getObject("contents").getObject("twoColumnWatchNextResults").getObject("results").getObject("results").getArray("contents"));
    }

    @Override // oa.h
    public oa.h.a E() {
        return this.playerMicroFormatRenderer.getBoolean("isUnlisted") ? oa.h.a.UNLISTED : oa.h.a.PUBLIC;
    }

    @Override // oa.h
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public x9.o F() throws aa.d {
        a();
        if (p() != 0) {
            return null;
        }
        try {
            final x9.o oVar = new x9.o(l());
            JsonArray array = this.nextResponse.getObject("contents").getObject("twoColumnWatchNextResults").getObject("secondaryResults").getObject("secondaryResults").getArray("results");
            final org.schabi.newpipe.extractor.localization.f0 f0VarM = m();
            array.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).map(new Function() { // from class: ma.t
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return h0.V0(f0VarM, (JsonObject) obj);
                }
            }).filter(new Predicate() { // from class: ma.u
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return g.a((x9.f) obj);
                }
            }).forEach(new Consumer() { // from class: ma.v
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    oVar.d((x9.f) obj);
                }
            });
            return oVar;
        } catch (Exception e) {
            throw new aa.h("Could not get related videos", e);
        }
    }

    @Override // oa.h
    public List<oa.n> G() throws aa.h {
        if (!this.nextResponse.has("engagementPanels")) {
            return Collections.emptyList();
        }
        JsonArray jsonArray = (JsonArray) this.nextResponse.getArray("engagementPanels").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: ma.x
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return h0.W0((JsonObject) obj);
            }
        }).map(new Function() { // from class: ma.y
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.X0((JsonObject) obj);
            }
        }).findFirst().orElse(null);
        if (jsonArray == null) {
            return Collections.emptyList();
        }
        long jA = A();
        ArrayList arrayList = new ArrayList();
        for (JsonObject jsonObject : (List) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).map(new Function() { // from class: ma.w
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.Y0((JsonObject) obj);
            }
        }).collect(Collectors.toList())) {
            int i10 = jsonObject.getObject("onTap").getObject("watchEndpoint").getInt("startTimeSeconds", -1);
            if (i10 == -1) {
                throw new aa.h("Could not get stream segment start time.");
            }
            if (i10 > jA) {
                break;
            }
            String strJ = r0.J(jsonObject.getObject("title"));
            if (qa.y.m(strJ)) {
                throw new aa.h("Could not get stream segment title.");
            }
            oa.n nVar = new oa.n(strJ, i10);
            nVar.c(n() + "?t=" + i10);
            if (jsonObject.has("thumbnail")) {
                JsonArray array = jsonObject.getObject("thumbnail").getArray("thumbnails");
                if (!array.isEmpty()) {
                    nVar.b(r0.r(array.getObject(array.size() - 1).getString(ImagesContract.URL)));
                }
            }
            arrayList.add(nVar);
        }
        return arrayList;
    }

    @Override // oa.h
    public List<oa.q> L() throws aa.h {
        return H0(x9.m.TTML);
    }

    @Override // oa.h
    public List<String> N() {
        return qa.e.i(this.playerResponse.getObject("videoDetails").getArray("keywords"));
    }

    @Override // oa.h
    public String O() throws aa.h {
        if (!this.playerMicroFormatRenderer.getString("uploadDate", "").isEmpty()) {
            return this.playerMicroFormatRenderer.getString("uploadDate");
        }
        if (!this.playerMicroFormatRenderer.getString("publishDate", "").isEmpty()) {
            return this.playerMicroFormatRenderer.getString("publishDate");
        }
        JsonObject object = this.playerMicroFormatRenderer.getObject("liveBroadcastDetails");
        if (!object.getString("endTimestamp", "").isEmpty()) {
            return object.getString("endTimestamp");
        }
        if (!object.getString("startTimestamp", "").isEmpty()) {
            return object.getString("startTimestamp");
        }
        if (H() == oa.o.LIVE_STREAM) {
            return null;
        }
        String strJ = r0.J(J0().getObject("dateText"));
        if (strJ == null) {
            throw new aa.h("Could not get upload date");
        }
        if (strJ.startsWith("Premiered")) {
            String strSubstring = strJ.substring(13);
            try {
                try {
                    try {
                        return DateTimeFormatter.ISO_LOCAL_DATE.format(org.schabi.newpipe.extractor.localization.g0.b(new org.schabi.newpipe.extractor.localization.i("en")).h(strSubstring).a());
                    } catch (Exception unused) {
                        return DateTimeFormatter.ISO_LOCAL_DATE.format(LocalDate.parse(strSubstring, DateTimeFormatter.ofPattern("MMM dd, yyyy", Locale.ENGLISH)));
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                return DateTimeFormatter.ISO_LOCAL_DATE.format(LocalDate.parse(strSubstring, DateTimeFormatter.ofPattern("dd MMM yyyy", Locale.ENGLISH)));
            }
        }
        try {
            return DateTimeFormatter.ISO_LOCAL_DATE.format(LocalDate.parse(strJ, DateTimeFormatter.ofPattern("dd MMM yyyy", Locale.ENGLISH)));
        } catch (Exception e) {
            throw new aa.h("Could not get upload date", e);
        }
    }

    @Override // oa.h
    public long Q() throws aa.h {
        long jR = R("((#|&|\\?)t=\\d*h?\\d*m?\\d+s?)");
        if (jR == -2) {
            return 0L;
        }
        return jR;
    }

    @Override // oa.h
    public long V() throws aa.h {
        JsonObject jsonObjectF = qa.e.f(this.videoSecondaryInfoRenderer, "owner.videoOwnerRenderer");
        if (!jsonObjectF.has("subscriberCountText")) {
            return -1L;
        }
        try {
            return qa.y.r(r0.J(jsonObjectF.getObject("subscriberCountText")));
        } catch (NumberFormatException e) {
            throw new aa.h("Could not get uploader subscriber count", e);
        }
    }

    @Override // oa.h
    public int p() throws aa.h {
        int i10 = this.ageLimit;
        if (i10 != -1) {
            return i10;
        }
        int i11 = K0().getObject("metadataRowContainer").getObject("metadataRowContainerRenderer").getArray("rows").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).flatMap(new Function() { // from class: ma.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.N0((JsonObject) obj);
            }
        }).flatMap(new Function() { // from class: ma.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.O0((JsonObject) obj);
            }
        }).map(new Function() { // from class: ma.j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.P0((JsonObject) obj);
            }
        }).anyMatch(new Predicate() { // from class: ma.g0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return h0.Q0((String) obj);
            }
        }) ? 18 : 0;
        this.ageLimit = i11;
        return i11;
    }

    @Override // oa.h
    public String r() {
        return this.playerMicroFormatRenderer.getString("category", "");
    }

    @Override // oa.h
    public String v() {
        try {
            return r0.J(this.playerResponse.getObject("playabilityStatus").getObject("errorScreen").getObject("playerErrorMessageRenderer").getObject("reason"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // oa.h
    public List<oa.f> w() throws aa.d {
        List listSingletonList;
        String str = "playerLiveStoryboardSpecRenderer";
        try {
            JsonObject object = this.playerResponse.getObject("storyboards");
            if (!object.has("playerLiveStoryboardSpecRenderer")) {
                str = "playerStoryboardSpecRenderer";
            }
            JsonObject object2 = object.getObject(str);
            if (object2 == null) {
                return Collections.emptyList();
            }
            String string = object2.getString("spec");
            if (string == null) {
                return Collections.emptyList();
            }
            String[] strArrSplit = string.split("\\|");
            String str2 = strArrSplit[0];
            ArrayList arrayList = new ArrayList(strArrSplit.length - 1);
            for (int i10 = 1; i10 < strArrSplit.length; i10++) {
                String[] strArrSplit2 = strArrSplit[i10].split("#");
                if (strArrSplit2.length == 8 && Integer.parseInt(strArrSplit2[5]) != 0) {
                    int i11 = Integer.parseInt(strArrSplit2[2]);
                    int i12 = Integer.parseInt(strArrSplit2[3]);
                    int i13 = Integer.parseInt(strArrSplit2[4]);
                    String str3 = str2.replace("$L", String.valueOf(i10 - 1)).replace("$N", strArrSplit2[6]) + "&sigh=" + strArrSplit2[7];
                    if (str3.contains("$M")) {
                        int iCeil = (int) Math.ceil(((double) i11) / ((double) (i12 * i13)));
                        listSingletonList = new ArrayList(iCeil);
                        for (int i14 = 0; i14 < iCeil; i14++) {
                            listSingletonList.add(str3.replace("$M", String.valueOf(i14)));
                        }
                    } else {
                        listSingletonList = Collections.singletonList(str3);
                    }
                    arrayList.add(new oa.f(listSingletonList, Integer.parseInt(strArrSplit2[0]), Integer.parseInt(strArrSplit2[1]), i11, Integer.parseInt(strArrSplit2[5]), i12, i13));
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new aa.d("Could not get frames", e);
        }
    }

    public h0(x9.s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        super(sVar, aVar);
        this.ageLimit = -1;
    }

    private void A0(org.schabi.newpipe.extractor.localization.a aVar, org.schabi.newpipe.extractor.localization.i iVar, String str) throws IOException, aa.d {
        this.tvHtml5SimplyEmbedCpn = r0.t();
        JsonObject jsonObjectG = r0.G(PLAYER, r0.j(iVar, aVar, str, org.schabi.newpipe.extractor.services.youtube.l.c(str), this.tvHtml5SimplyEmbedCpn), iVar);
        if (!M0(jsonObjectG, str)) {
            JsonObject object = jsonObjectG.getObject(STREAMING_DATA);
            if (!qa.y.o(object)) {
                this.playerResponse = jsonObjectG;
                this.tvHtml5SimplyEmbedStreamingData = object;
                this.playerCaptionsTracklistRenderer = jsonObjectG.getObject("captions").getObject("playerCaptionsTracklistRenderer");
                return;
            }
            return;
        }
        throw new aa.d("TVHTML5 embed player response is not valid");
    }

    private int C0(List<JsonObject> list) throws aa.h {
        Iterator<JsonObject> it = list.iterator();
        while (it.hasNext()) {
            JsonArray array = it.next().getArray(ADAPTIVE_FORMATS);
            if (!array.isEmpty()) {
                try {
                    return Math.round(Long.parseLong(array.getObject(0).getString("approxDurationMs")) / 1000.0f);
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
        }
        throw new aa.h("Could not get duration");
    }

    private <T extends oa.g> List<T> D0(final String str, final org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a enumC0481a, Function<a, T> function, String str2) throws aa.h {
        try {
            final String strG = g();
            final ArrayList arrayList = new ArrayList();
            Stream.of((Object[]) new qa.g[]{new qa.g(this.iosStreamingData, this.iosCpn), new qa.g(this.androidStreamingData, this.androidCpn), new qa.g(this.tvHtml5SimplyEmbedStreamingData, this.tvHtml5SimplyEmbedCpn)}).flatMap(new Function() { // from class: ma.l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return this.f3273a.S0(strG, str, enumC0481a, (qa.g) obj);
                }
            }).map(function).forEachOrdered(new Consumer() { // from class: ma.m
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    h0.T0(arrayList, (oa.g) obj);
                }
            });
            return arrayList;
        } catch (Exception e) {
            throw new aa.h("Could not get " + str2 + " streams", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ oa.a R0(a aVar) {
        org.schabi.newpipe.extractor.services.youtube.a aVarC = aVar.c();
        oa.a.C0472a c0472aJ = new oa.a.C0472a().i(String.valueOf(aVarC.id)).g(aVar.a(), aVar.b()).l(aVarC.o()).f(aVarC.e()).c(aVarC.b()).d(aVarC.c()).b(aVarC.a()).e(aVarC.d()).j(aVarC);
        oa.o oVar = this.streamType;
        if (oVar == oa.o.LIVE_STREAM || oVar == oa.o.POST_LIVE_STREAM || !aVar.b()) {
            c0472aJ.h(oa.d.DASH);
        }
        return c0472aJ.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Stream S0(String str, String str2, org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a enumC0481a, qa.g gVar) {
        return G0(str, (JsonObject) gVar.a(), str2, enumC0481a, (String) gVar.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T0(List list, oa.g gVar) {
        if (!oa.g.a(gVar, list)) {
            list.add(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String U0(String str, JsonObject jsonObject) {
        return jsonObject.getString(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a1(String str, JsonObject jsonObject) {
        return jsonObject.has(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JsonObject b1(String str, JsonObject jsonObject) {
        return jsonObject.getObject(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ oa.s c1(boolean z6, a aVar) {
        org.schabi.newpipe.extractor.services.youtube.a aVarC = aVar.c();
        oa.s.a aVarF = new oa.s.a().d(String.valueOf(aVarC.id)).b(aVar.a(), aVar.b()).h(aVarC.o()).e(z6).f(aVarC);
        String strQ = aVarC.q();
        if (strQ == null) {
            strQ = "";
        }
        aVarF.i(strQ);
        if (this.streamType != oa.o.VIDEO_STREAM || !aVar.b()) {
            aVarF.c(oa.d.DASH);
        }
        return aVarF.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean e1(JsonObject jsonObject) {
        return !qa.y.o(jsonObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g1(JsonObject jsonObject) {
        return !qa.y.o(jsonObject);
    }

    private static long h1(JsonArray jsonArray) throws aa.h {
        String string = null;
        JsonObject jsonObject = (JsonObject) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).map(new Function() { // from class: ma.n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.d1((JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: ma.o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return h0.e1((JsonObject) obj);
            }
        }).findFirst().orElse(null);
        if (jsonObject != null) {
            String string2 = jsonObject.getObject("accessibilityData").getObject("accessibilityData").getString("label");
            if (string2 == null) {
                string2 = jsonObject.getObject("accessibility").getString("label");
            }
            if (string2 == null) {
                string = jsonObject.getObject("defaultText").getObject("accessibility").getObject("accessibilityData").getString("label");
            } else {
                string = string2;
            }
            if (string != null && string.toLowerCase().contains("no likes")) {
                return 0L;
            }
        }
        if (string != null) {
            try {
                return Long.parseLong(qa.y.u(string));
            } catch (NumberFormatException e) {
                throw new aa.h("Could not parse \"" + string + "\" as a long", e);
            }
        }
        throw new aa.h("Could not get like count from accessibility data");
    }

    private static long i1(JsonArray jsonArray) throws aa.h {
        JsonObject jsonObject = (JsonObject) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).map(new Function() { // from class: ma.r
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return h0.f1((JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: ma.s
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return h0.g1((JsonObject) obj);
            }
        }).findFirst().orElse(null);
        if (jsonObject != null) {
            String string = jsonObject.getString("accessibilityText");
            if (string != null) {
                try {
                    return Long.parseLong(qa.y.u(string));
                } catch (NumberFormatException e) {
                    throw new aa.h("Could not parse \"" + string + "\" as a long", e);
                }
            }
            throw new aa.h("Could not find buttonViewModel's accessibilityText string");
        }
        throw new aa.h("Could not find buttonViewModel object");
    }

    private void y0(org.schabi.newpipe.extractor.localization.a aVar, org.schabi.newpipe.extractor.localization.i iVar, String str) throws IOException, aa.d {
        this.androidCpn = r0.t();
        JsonObject object = r0.E("reel/reel_item_watch", JsonWriter.string(r0.p0(iVar, aVar).object("playerRequest").value(r0.VIDEO_ID, str).end().value("disablePlayerResponse", false).value(r0.VIDEO_ID, str).value(r0.CPN, this.androidCpn).value(r0.CONTENT_CHECK_OK, true).value(r0.RACY_CHECK_OK, true).done()).getBytes(StandardCharsets.UTF_8), iVar, "&t=" + r0.u() + "&id=" + str + "&$fields=playerResponse").getObject("playerResponse");
        if (M0(object, str)) {
            return;
        }
        JsonObject object2 = object.getObject(STREAMING_DATA);
        if (!qa.y.o(object2)) {
            this.androidStreamingData = object2;
            if (qa.y.o(this.playerCaptionsTracklistRenderer)) {
                this.playerCaptionsTracklistRenderer = object.getObject("captions").getObject("playerCaptionsTracklistRenderer");
            }
        }
    }

    private void z0(org.schabi.newpipe.extractor.localization.a aVar, org.schabi.newpipe.extractor.localization.i iVar, String str) throws IOException, aa.d {
        this.iosCpn = r0.t();
        JsonObject jsonObjectF = r0.F(PLAYER, JsonWriter.string(r0.s0(iVar, aVar).value(r0.VIDEO_ID, str).value(r0.CPN, this.iosCpn).value(r0.CONTENT_CHECK_OK, true).value(r0.RACY_CHECK_OK, true).done()).getBytes(StandardCharsets.UTF_8), iVar, "&t=" + r0.u() + "&id=" + str);
        if (!M0(jsonObjectF, str)) {
            JsonObject object = jsonObjectF.getObject(STREAMING_DATA);
            if (!qa.y.o(object)) {
                this.iosStreamingData = object;
                this.playerCaptionsTracklistRenderer = jsonObjectF.getObject("captions").getObject("playerCaptionsTracklistRenderer");
                return;
            }
            return;
        }
        throw new aa.d("IOS player response is not valid");
    }

    @Override // oa.h
    public long A() throws aa.h {
        a();
        try {
            return Long.parseLong(this.playerResponse.getObject("videoDetails").getString("lengthSeconds"));
        } catch (Exception unused) {
            return C0(Arrays.asList(this.iosStreamingData, this.androidStreamingData, this.tvHtml5SimplyEmbedStreamingData));
        }
    }

    @Override // oa.h
    public String B() throws aa.h {
        JsonObject object = K0().getObject("metadataRowContainer").getObject("metadataRowContainerRenderer").getArray("rows").getObject(0).getObject("metadataRowRenderer");
        String strJ = r0.J(object.getArray("contents").getObject(0));
        if (strJ == null || !"Licence".equals(r0.J(object.getObject("title")))) {
            return "YouTube licence";
        }
        return strJ;
    }

    @Override // oa.h
    public long C() throws aa.h {
        a();
        if (!this.playerResponse.getObject("videoDetails").getBoolean("allowRatings")) {
            return -1L;
        }
        JsonArray array = J0().getObject("videoActions").getObject("menuRenderer").getArray("topLevelButtons");
        try {
            try {
                return i1(array);
            } catch (aa.h unused) {
                return h1(array);
            }
        } catch (aa.h e) {
            throw new aa.h("Could not get like count", e);
        }
    }

    @Override // oa.h
    public oa.o H() {
        a();
        return this.streamType;
    }

    public List<oa.q> H0(x9.m mVar) throws aa.h {
        a();
        ArrayList arrayList = new ArrayList();
        JsonArray array = this.playerCaptionsTracklistRenderer.getArray("captionTracks");
        for (int i10 = 0; i10 < array.size(); i10++) {
            String string = array.getObject(i10).getString("languageCode");
            String string2 = array.getObject(i10).getString("baseUrl");
            String string3 = array.getObject(i10).getString("vssId");
            if (string != null && string2 != null && string3 != null) {
                boolean zStartsWith = string3.startsWith("a.");
                String strReplaceAll = string2.replaceAll("&fmt=[^&]*", "").replaceAll("&tlang=[^&]*", "");
                arrayList.add(new oa.q.a().c(strReplaceAll + "&fmt=" + mVar.c(), true).e(mVar).d(string).b(zStartsWith).a());
            }
        }
        return arrayList;
    }

    @Override // oa.h
    public List<x9.c> P() throws aa.h {
        a();
        try {
            return r0.B(this.playerResponse.getObject("videoDetails").getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception unused) {
            throw new aa.h("Could not get thumbnails");
        }
    }

    @Override // oa.h
    public org.schabi.newpipe.extractor.localization.e S() throws aa.h {
        String strO = O();
        if (qa.y.m(strO)) {
            return null;
        }
        return new org.schabi.newpipe.extractor.localization.e(r0.n0(strO), true);
    }

    @Override // oa.h
    public List<x9.c> T() throws aa.h {
        a();
        List<x9.c> listB = r0.B(K0().getObject("owner").getObject("videoOwnerRenderer").getObject("thumbnail").getArray("thumbnails"));
        if (listB.isEmpty() && this.ageLimit == 0) {
            throw new aa.h("Could not get uploader avatars");
        }
        return listB;
    }

    @Override // oa.h
    public String U() throws aa.h {
        a();
        String string = this.playerResponse.getObject("videoDetails").getString("author");
        if (!qa.y.m(string)) {
            return string;
        }
        throw new aa.h("Could not get uploader name");
    }

    @Override // oa.h
    public String W() throws aa.h {
        a();
        String string = this.playerResponse.getObject("videoDetails").getString("channelId");
        if (!qa.y.m(string)) {
            return na.a.n().f("channel/" + string);
        }
        throw new aa.h("Could not get uploader url");
    }

    @Override // oa.h
    public List<oa.s> X() throws aa.d {
        a();
        return D0(ADAPTIVE_FORMATS, org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a.VIDEO_ONLY, L0(true), "video-only");
    }

    @Override // oa.h
    public List<oa.s> Y() throws aa.d {
        a();
        return D0(FORMATS, org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a.VIDEO, L0(false), "video");
    }

    @Override // oa.h
    public long Z() throws aa.h {
        String strJ = r0.J(J0().getObject("viewCount").getObject("videoViewCountRenderer").getObject("viewCount"));
        if (qa.y.m(strJ)) {
            strJ = this.playerResponse.getObject("videoDetails").getString("viewCount");
            if (qa.y.m(strJ)) {
                throw new aa.h("Could not get view count");
            }
        }
        if (strJ.toLowerCase().contains("no views")) {
            return 0L;
        }
        return Long.parseLong(qa.y.u(strJ));
    }

    @Override // oa.h
    public boolean b0() throws aa.h {
        return r0.W(K0().getObject("owner").getObject("videoOwnerRenderer").getArray("badges"));
    }

    @Override // x9.b
    public String i() throws aa.h {
        a();
        String string = this.playerResponse.getObject("videoDetails").getString("title");
        if (qa.y.m(string)) {
            string = r0.J(J0().getObject("title"));
            if (qa.y.m(string)) {
                throw new aa.h("Could not get name");
            }
        }
        return string;
    }

    @Override // x9.b
    public void o(z9.a aVar) throws IOException, aa.d {
        boolean z6;
        String strG = g();
        org.schabi.newpipe.extractor.localization.i iVarF = f();
        org.schabi.newpipe.extractor.localization.a aVarE = e();
        JsonObject jsonObjectP = r0.P(iVarF, aVarE, strG);
        if (!M0(jsonObjectP, strG)) {
            this.playerResponse = jsonObjectP;
            JsonObject object = jsonObjectP.getObject("playabilityStatus");
            if ("login_required".equalsIgnoreCase(object.getString(NotificationCompat.CATEGORY_STATUS)) && object.getString("reason", "").contains(AccountService.PREFS_AGE)) {
                z6 = true;
            } else {
                z6 = false;
            }
            j1();
            if (z6) {
                A0(aVarE, iVarF, strG);
                if (this.tvHtml5SimplyEmbedStreamingData != null) {
                    j1();
                } else {
                    throw new aa.a("This age-restricted video cannot be watched.");
                }
            } else {
                x0(jsonObjectP, object);
                z0(aVarE, iVarF, strG);
                try {
                    y0(aVarE, iVarF, strG);
                } catch (Exception unused) {
                }
            }
            this.playerMicroFormatRenderer = jsonObjectP.getObject("microformat").getObject("playerMicroformatRenderer");
            this.nextResponse = r0.G(NEXT, JsonWriter.string(r0.q0(iVarF, aVarE).value(r0.VIDEO_ID, strG).value(r0.CONTENT_CHECK_OK, true).value(r0.RACY_CHECK_OK, true).done()).getBytes(StandardCharsets.UTF_8), iVarF);
            return;
        }
        x0(jsonObjectP, jsonObjectP.getObject("playabilityStatus"));
        throw new aa.d("Initial WEB player response is not valid");
    }

    @Override // oa.h
    public List<oa.a> q() throws aa.d {
        a();
        return D0(ADAPTIVE_FORMATS, org.schabi.newpipe.extractor.services.youtube.a.EnumC0481a.AUDIO, B0(), "audio");
    }

    @Override // oa.h
    public String s() throws aa.h {
        a();
        return E0("dash", Arrays.asList(this.androidStreamingData, this.tvHtml5SimplyEmbedStreamingData));
    }

    @Override // oa.h
    public oa.e t() throws aa.h {
        a();
        String strK = r0.K(K0().getObject("description"), true);
        if (!qa.y.m(strK)) {
            return new oa.e(strK, 1);
        }
        String strI = org.schabi.newpipe.extractor.services.youtube.i.i(K0().getObject("attributedDescription"));
        if (!qa.y.m(strI)) {
            return new oa.e(strI, 1);
        }
        String string = this.playerResponse.getObject("videoDetails").getString("shortDescription");
        if (string == null) {
            string = r0.J(this.playerMicroFormatRenderer.getObject("description"));
        }
        return new oa.e(string, 3);
    }

    @Override // oa.h
    public String x() throws aa.h {
        a();
        return E0("hls", Arrays.asList(this.iosStreamingData, this.androidStreamingData, this.tvHtml5SimplyEmbedStreamingData));
    }
}
