package org.schabi.newpipe.extractor.services.youtube;

import androidx.exifinterface.media.ExifInterface;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ImagesContract;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonBuilder;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonWriter;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.youtube.DownloaderImpl;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeParseException;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Random;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.http.entity.mime.MIME;
import org.jsoup.nodes.Entities;

/* JADX INFO: loaded from: classes5.dex */
public final class r0 {
    private static final String ANDROID_YOUTUBE_CLIENT_VERSION = "19.28.35";
    public static final String CONTENT_CHECK_OK = "contentCheckOk";
    private static final String CONTENT_PLAYBACK_NONCE_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
    public static final String CPN = "cpn";
    public static final String DISABLE_PRETTY_PRINT_PARAMETER = "prettyPrint=false";
    private static final String FEED_BASE_CHANNEL_ID = "https://www.youtube.com/feeds/videos.xml?channel_id=";
    private static final String FEED_BASE_USER = "https://www.youtube.com/feeds/videos.xml?user=";
    private static final String HARDCODED_CLIENT_VERSION = "2.20240718.01.00";
    private static final String HARDCODED_YOUTUBE_MUSIC_CLIENT_VERSION = "1.20240715.01.00";
    private static final String IOS_DEVICE_MODEL = "iPhone16,2";
    private static final String IOS_OS_VERSION = "17.5.1.21F90";
    private static final String IOS_USER_AGENT_VERSION = "17_5_1";
    private static final String IOS_YOUTUBE_CLIENT_VERSION = "19.28.1";
    public static final String RACY_CHECK_OK = "racyCheckOk";
    private static final String TVHTML5_SIMPLY_EMBED_CLIENT_VERSION = "2.0";
    public static final String VIDEO_ID = "videoId";
    private static final String WEB_CLIENT_ID = "1";
    public static final String YOUTUBEI_V1_GAPIS_URL = "https://youtubei.googleapis.com/youtubei/v1/";
    public static final String YOUTUBEI_V1_URL = "https://www.youtube.com/youtubei/v1/";
    private static final String YOUTUBE_MUSIC_CLIENT_ID = "67";
    private static final String YOUTUBE_MUSIC_URL = "https://music.youtube.com";
    private static String clientVersion;
    private static boolean clientVersionExtracted;
    private static String youtubeMusicClientVersion;
    private static Optional<Boolean> hardcodedClientVersionValid = Optional.empty();
    private static final String[] INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES = {"INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\"", "innertube_context_client_version\":\"([0-9\\.]+?)\"", "client.version=([0-9\\.]+)"};
    private static final String[] INITIAL_DATA_REGEXES = {"window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});", "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"};
    private static Random numberGenerator = new Random();
    private static final Pattern C_WEB_PATTERN = Pattern.compile("&c=WEB");
    private static final Pattern C_TVHTML5_SIMPLY_EMBEDDED_PLAYER_PATTERN = Pattern.compile("&c=TVHTML5_SIMPLY_EMBEDDED_PLAYER");
    private static final Pattern C_ANDROID_PATTERN = Pattern.compile("&c=ANDROID");
    private static final Pattern C_IOS_PATTERN = Pattern.compile("&c=IOS");
    private static final Set<String> GOOGLE_URLS = f0.a(new Object[]{com.google.firebase.messaging.e.a.RESERVED_PREFIX, "m.google.", "www.google."});
    private static final Set<String> INVIDIOUS_URLS = f0.a(new String[]{"invidio.us", "dev.invidio.us", "www.invidio.us", "redirect.invidious.io", "invidious.snopyta.org", "yewtu.be", "tube.connect.cafe", "tubus.eduvid.org", "invidious.kavin.rocks", "invidious.site", "invidious-us.kavin.rocks", "piped.kavin.rocks", "vid.mint.lgbt", "invidiou.site", "invidious.fdn.fr", "invidious.048596.xyz", "invidious.zee.li", "vid.puffyan.us", "ytprivate.com", "invidious.namazso.eu", "invidious.silkky.cloud", "ytb.trom.tf", "invidious.exonip.de", "inv.riverside.rocks", "invidious.blamefran.net", "y.com.cm", "invidious.moomoo.me", "yt.cyberhost.uk"});
    private static final Set<String> YOUTUBE_URLS = f0.a(new Object[]{DownloaderImpl.YOUTUBE_DOMAIN, "www.youtube.com", "m.youtube.com", "music.youtube.com"});
    private static boolean consentAccepted = false;

    public static String J(JsonObject jsonObject) {
        return K(jsonObject, false);
    }

    public static boolean R() {
        return consentAccepted;
    }

    private static int i(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                return Integer.parseInt(qa.y.u(str));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static oa.c k(String str) {
        String str2;
        try {
            String strH = qa.y.h(new URL(str), "xtags");
            if (strH == null) {
                return null;
            }
            String[] strArrSplit = strH.split(":");
            int length = strArrSplit.length;
            byte b7 = 0;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    str2 = null;
                    break;
                }
                String[] strArrSplit2 = strArrSplit[i10].split("=", 2);
                if (strArrSplit2.length > 1 && strArrSplit2[0].equals("acont")) {
                    str2 = strArrSplit2[1];
                    break;
                }
                i10++;
            }
            if (str2 == null) {
                return null;
            }
            switch (str2.hashCode()) {
                case -1724545844:
                    if (!str2.equals("descriptive")) {
                        b7 = -1;
                    }
                    break;
                case -1320983312:
                    b7 = !str2.equals("dubbed") ? (byte) -1 : (byte) 1;
                    break;
                case 1379043793:
                    b7 = !str2.equals("original") ? (byte) -1 : (byte) 2;
                    break;
                default:
                    b7 = -1;
                    break;
            }
            switch (b7) {
                case 0:
                    return oa.c.DESCRIPTIVE;
                case 1:
                    return oa.c.DUBBED;
                case 2:
                    return oa.c.ORIGINAL;
                default:
                    return null;
            }
        } catch (MalformedURLException unused) {
            return null;
        }
    }

    public static JsonBuilder<JsonObject> q0(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar) throws IOException, aa.d {
        return r0(iVar, aVar, null);
    }

    public static String D(org.schabi.newpipe.extractor.localization.i iVar) {
        if (iVar == null) {
            iVar = org.schabi.newpipe.extractor.localization.i.DEFAULT;
        }
        return "com.google.ios.youtube/19.28.1(iPhone16,2; U; CPU iOS 17_5_1 like Mac OS X; " + iVar.d() + ")";
    }

    public static List<x9.c> M(JsonObject jsonObject) throws aa.h {
        try {
            return B(jsonObject.getObject("thumbnail").getArray("thumbnails"));
        } catch (Exception e) {
            throw new aa.h("Could not get thumbnails from InfoItem", e);
        }
    }

    public static String N(JsonObject jsonObject) {
        if (jsonObject.has("urlEndpoint")) {
            String string = jsonObject.getObject("urlEndpoint").getString(ImagesContract.URL);
            if (string.startsWith("https://www.youtube.com/redirect?")) {
                string = string.substring(23);
            }
            if (string.startsWith("/redirect?")) {
                for (String str : string.substring(10).split("&")) {
                    if (str.split("=")[0].equals("q")) {
                        return qa.y.d(str.split("=")[1]);
                    }
                }
            } else {
                if (string.startsWith(ProxyConfig.MATCH_HTTP)) {
                    return string;
                }
                if (string.startsWith("/channel") || string.startsWith("/user") || string.startsWith("/watch")) {
                    return "https://www.youtube.com" + string;
                }
            }
        }
        if (jsonObject.has("browseEndpoint")) {
            JsonObject object = jsonObject.getObject("browseEndpoint");
            String string2 = object.getString("canonicalBaseUrl");
            String string3 = object.getString("browseId");
            if (string3 != null) {
                if (string3.startsWith("UC")) {
                    return "https://www.youtube.com/channel/" + string3;
                }
                if (string3.startsWith("VL")) {
                    return "https://www.youtube.com/playlist?list=" + string3.substring(2);
                }
            }
            if (!qa.y.m(string2)) {
                return "https://www.youtube.com" + string2;
            }
        }
        if (jsonObject.has("watchEndpoint")) {
            StringBuilder sb = new StringBuilder();
            sb.append("https://www.youtube.com/watch?v=");
            sb.append(jsonObject.getObject("watchEndpoint").getString(VIDEO_ID));
            if (jsonObject.getObject("watchEndpoint").has("playlistId")) {
                sb.append("&list=");
                sb.append(jsonObject.getObject("watchEndpoint").getString("playlistId"));
            }
            if (jsonObject.getObject("watchEndpoint").has("startTimeSeconds")) {
                sb.append("&t=");
                sb.append(jsonObject.getObject("watchEndpoint").getInt("startTimeSeconds"));
            }
            return sb.toString();
        }
        if (jsonObject.has("watchPlaylistEndpoint")) {
            return "https://www.youtube.com/playlist?list=" + jsonObject.getObject("watchPlaylistEndpoint").getString("playlistId");
        }
        if (!jsonObject.has("commandMetadata")) {
            return null;
        }
        JsonObject object2 = jsonObject.getObject("commandMetadata").getObject("webCommandMetadata");
        if (!object2.has(ImagesContract.URL)) {
            return null;
        }
        return "https://www.youtube.com" + object2.getString(ImagesContract.URL);
    }

    public static boolean T() throws IOException, aa.d {
        if (hardcodedClientVersionValid.isPresent()) {
            return ((Boolean) hardcodedClientVersionValid.get()).booleanValue();
        }
        boolean z6 = false;
        z9.d dVarPostWithContentTypeJson = x9.p.a().postWithContentTypeJson("https://www.youtube.com/youtubei/v1/guide?prettyPrint=false", w("1", HARDCODED_CLIENT_VERSION), JsonWriter.string().object().object("context").object("client").value("hl", "en-GB").value("gl", "GB").value("clientName", "WEB").value("clientVersion", HARDCODED_CLIENT_VERSION).value("platform", "DESKTOP").value("utcOffsetMinutes", 0).end().object("request").array("internalExperimentFlags").end().value("useSsl", true).end().object(GlobalProfileFragment.KEY_USER).value("lockedSafetyMode", false).end().end().value("fetchLiveState", true).end().done().getBytes(StandardCharsets.UTF_8));
        String strC = dVarPostWithContentTypeJson.c();
        int iD = dVarPostWithContentTypeJson.d();
        if (strC.length() > 5000 && iD == 200) {
            z6 = true;
        }
        Optional<Boolean> optionalOf = Optional.of(Boolean.valueOf(z6));
        hardcodedClientVersionValid = optionalOf;
        return ((Boolean) optionalOf.get()).booleanValue();
    }

    public static boolean V(URL url) {
        return INVIDIOUS_URLS.contains(url.getHost().toLowerCase(Locale.ROOT));
    }

    public static boolean Y(String str) {
        return str.startsWith("RDCM");
    }

    public static boolean Z(String str) {
        return str.startsWith("RDGMEM");
    }

    public static boolean a0(String str) {
        return str.startsWith("RD");
    }

    public static boolean b0(String str) {
        return str.startsWith("RDAMVM") || str.startsWith("RDCLAK");
    }

    public static boolean c0(String str) {
        return str.startsWith("RDMM");
    }

    public static boolean e0(URL url) {
        return YOUTUBE_URLS.contains(url.getHost().toLowerCase(Locale.ROOT));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean f0(String str, JsonObject jsonObject) {
        return jsonObject.getString("service", "").equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream g0(JsonObject jsonObject) {
        return jsonObject.getArray("params").stream();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean h0(String str, JsonObject jsonObject) {
        return jsonObject.getString("key", "").equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String i0(JsonObject jsonObject) {
        return jsonObject.getString("value");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean k0(JsonObject jsonObject) {
        return !qa.y.m(jsonObject.getString(ImagesContract.URL));
    }

    public static String l(String str) {
        if (str == null) {
            return null;
        }
        return str.contains("webcache.googleusercontent.com") ? str.split("cache:")[1] : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x9.c l0(JsonObject jsonObject) {
        int i10 = jsonObject.getInt("height", -1);
        return new x9.c(r(jsonObject.getString(ImagesContract.URL)), i10, jsonObject.getInt("width", -1), x9.c.a.a(i10));
    }

    private static void m() throws IOException, aa.d {
        if (clientVersionExtracted) {
            return;
        }
        String strC = x9.p.a().get("https://www.youtube.com/results?search_query=&ucbcb=1", A()).c();
        Stream map = C(strC).getObject("responseContext").getArray("serviceTrackingParams").stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class));
        String strZ = z(map, "CSI", "cver");
        clientVersion = strZ;
        if (strZ == null) {
            try {
                clientVersion = qa.y.i(strC, INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES, 1);
            } catch (qa.n.a unused) {
            }
        }
        if (qa.y.m(clientVersion)) {
            clientVersion = z(map, "ECATCHER", "client.version");
        }
        if (clientVersion == null) {
            throw new aa.h("Could not extract YouTube WEB InnerTube client version from HTML search results page");
        }
        clientVersionExtracted = true;
    }

    private static void n() throws IOException, aa.d {
        if (clientVersionExtracted) {
            return;
        }
        try {
            clientVersion = qa.y.i(x9.p.a().get("https://www.youtube.com/sw.js", I("https://www.youtube.com")).c(), INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES, 1);
            clientVersionExtracted = true;
        } catch (qa.n.a e) {
            throw new aa.h("Could not extract YouTube WEB InnerTube client version from sw.js", e);
        }
    }

    public static int o0(String str) throws aa.h, NumberFormatException {
        String[] strArrSplit = str.contains(":") ? str.split(":") : str.split("\\.");
        int[] iArr = {24, 60, 60, 1};
        int length = 4 - strArrSplit.length;
        if (length < 0) {
            throw new aa.h("Error duration string with unknown format: " + str);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < strArrSplit.length; i11++) {
            i10 = (i10 + i(strArrSplit[i11])) * iArr[i11 + length];
        }
        return i10;
    }

    public static String r(String str) {
        if (str.startsWith("//")) {
            str = str.substring(2);
        }
        if (str.startsWith(qa.y.HTTP)) {
            return qa.y.v(str);
        }
        if (str.startsWith(qa.y.HTTPS)) {
            return str;
        }
        return qa.y.HTTPS + str;
    }

    public static String t() {
        return qa.o.a(CONTENT_PLAYBACK_NONCE_ALPHABET, 16, numberGenerator);
    }

    public static String u() {
        return qa.o.a(CONTENT_PLAYBACK_NONCE_ALPHABET, 12, numberGenerator);
    }

    public static String v(org.schabi.newpipe.extractor.localization.i iVar) {
        if (iVar == null) {
            iVar = org.schabi.newpipe.extractor.localization.i.DEFAULT;
        }
        return "com.google.android.youtube/19.28.35 (Linux; U; Android 14; " + iVar.d() + ") gzip";
    }

    public static Map<String, List<String>> x() throws IOException, aa.d {
        HashMap map = new HashMap(I("https://www.youtube.com"));
        map.putAll(w("1", y()));
        return map;
    }

    public static String y() throws IOException, aa.d {
        if (!qa.y.m(clientVersion)) {
            return clientVersion;
        }
        try {
            n();
        } catch (Exception unused) {
            m();
        }
        if (clientVersionExtracted) {
            return clientVersion;
        }
        if (!T()) {
            throw new aa.d("Could not get YouTube WEB client version");
        }
        clientVersion = HARDCODED_CLIENT_VERSION;
        return HARDCODED_CLIENT_VERSION;
    }

    private static String z(Stream<JsonObject> stream, final String str, final String str2) {
        return (String) stream.filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.youtube.m0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return r0.f0(str, (JsonObject) obj);
            }
        }).flatMap(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.p0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return r0.g0((JsonObject) obj);
            }
        }).filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.youtube.q0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return r0.h0(str2, (JsonObject) obj);
            }
        }).map(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.n0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return r0.i0((JsonObject) obj);
            }
        }).filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.youtube.o0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return r0.j0((String) obj);
            }
        }).findFirst().orElse(null);
    }

    public static Map<String, List<String>> A() {
        return ja.g.a(new Map.Entry[]{new AbstractMap.SimpleEntry("Cookie", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{s()}))});
    }

    public static List<x9.c> B(JsonArray jsonArray) {
        return (List) jsonArray.stream().filter(new org.schabi.newpipe.extractor.services.media_ccc.extractors.a(JsonObject.class)).map(new org.schabi.newpipe.extractor.services.media_ccc.extractors.d(JsonObject.class)).filter(new Predicate() { // from class: org.schabi.newpipe.extractor.services.youtube.j0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return r0.k0((JsonObject) obj);
            }
        }).map(new Function() { // from class: org.schabi.newpipe.extractor.services.youtube.k0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return r0.l0((JsonObject) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    private static JsonObject C(String str) throws aa.h {
        try {
            return (JsonObject) JsonParser.object().from(qa.y.i(str, INITIAL_DATA_REGEXES, 1));
        } catch (qa.n.a | JsonParserException e) {
            throw new aa.h("Could not get ytInitialData", e);
        }
    }

    public static JsonObject E(String str, byte[] bArr, org.schabi.newpipe.extractor.localization.i iVar, String str2) throws IOException, aa.d {
        return H(str, bArr, iVar, v(iVar), str2);
    }

    public static JsonObject F(String str, byte[] bArr, org.schabi.newpipe.extractor.localization.i iVar, String str2) throws IOException, aa.d {
        return H(str, bArr, iVar, D(iVar), str2);
    }

    public static JsonObject G(String str, byte[] bArr, org.schabi.newpipe.extractor.localization.i iVar) throws IOException, aa.d {
        Map<String, List<String>> mapQ = Q();
        return qa.e.k(O(x9.p.a().postWithContentTypeJson(YOUTUBEI_V1_URL + str + "?prettyPrint=false", mapQ, bArr, iVar)));
    }

    private static JsonObject H(String str, byte[] bArr, org.schabi.newpipe.extractor.localization.i iVar, String str2, String str3) throws IOException, aa.d {
        Map<String, List<String>> mapA = ja.g.a(new Map.Entry[]{new AbstractMap.SimpleEntry("User-Agent", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{str2})), new AbstractMap.SimpleEntry("X-Goog-Api-Format-Version", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{ExifInterface.GPS_MEASUREMENT_2D}))});
        String str4 = YOUTUBEI_V1_GAPIS_URL + str + "?prettyPrint=false";
        z9.a aVarA = x9.p.a();
        if (!qa.y.m(str3)) {
            str4 = str4 + str3;
        }
        return qa.e.k(O(aVarA.postWithContentTypeJson(str4, mapA, bArr, iVar)));
    }

    private static Map<String, List<String>> I(String str) {
        List listA = net.pubnative.lite.sdk.vpaid.h.a(new Object[]{str});
        return ja.g.a(new Map.Entry[]{new AbstractMap.SimpleEntry("Origin", listA), new AbstractMap.SimpleEntry("Referer", listA)});
    }

    public static String K(JsonObject jsonObject, boolean z6) {
        boolean z10;
        boolean z11;
        if (qa.y.o(jsonObject)) {
            return null;
        }
        if (jsonObject.has("simpleText")) {
            return jsonObject.getString("simpleText");
        }
        JsonArray<JsonObject> array = jsonObject.getArray("runs");
        if (array.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (JsonObject jsonObject2 : array) {
            String string = jsonObject2.getString("text");
            if (z6) {
                if (jsonObject2.has("navigationEndpoint")) {
                    String strN = N(jsonObject2.getObject("navigationEndpoint"));
                    if (!qa.y.m(strN)) {
                        string = "<a href=\"" + Entities.escape(strN) + "\">" + Entities.escape(string) + "</a>";
                    }
                }
                boolean z12 = false;
                if (jsonObject2.has("bold") && jsonObject2.getBoolean("bold")) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (jsonObject2.has("italics") && jsonObject2.getBoolean("italics")) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (jsonObject2.has("strikethrough") && jsonObject2.getBoolean("strikethrough")) {
                    z12 = true;
                }
                if (z10) {
                    sb.append("<b>");
                }
                if (z11) {
                    sb.append("<i>");
                }
                if (z12) {
                    sb.append("<s>");
                }
                sb.append(string);
                if (z12) {
                    sb.append("</s>");
                }
                if (z11) {
                    sb.append("</i>");
                }
                if (z10) {
                    sb.append("</b>");
                }
            } else {
                sb.append(string);
            }
        }
        String string2 = sb.toString();
        if (z6) {
            return string2.replaceAll("\\n", "<br>").replaceAll(" {2}", " &nbsp;");
        }
        return string2;
    }

    public static String L(JsonObject jsonObject, String str) throws aa.h {
        String strJ = J(jsonObject);
        if (strJ != null) {
            return strJ;
        }
        throw new aa.h("Could not extract text: " + str);
    }

    public static String O(z9.d dVar) throws MalformedURLException, aa.h {
        if (dVar.d() != 404) {
            String strC = dVar.c();
            if (strC.length() >= 50) {
                URL url = new URL(dVar.b());
                if (url.getHost().equalsIgnoreCase("www.youtube.com")) {
                    String path = url.getPath();
                    if (path.equalsIgnoreCase("/oops") || path.equalsIgnoreCase("/error")) {
                        throw new aa.b("Content unavailable");
                    }
                }
                String strA = dVar.a(MIME.CONTENT_TYPE);
                if (strA != null && strA.toLowerCase().contains("text/html")) {
                    throw new aa.h("Got HTML document, expected JSON response (latest url was: \"" + dVar.b() + "\")");
                }
                return strC;
            }
            throw new aa.h("JSON response is too short");
        }
        throw new aa.b("Not found (\"" + dVar.d() + " " + dVar.e() + "\")");
    }

    public static JsonObject P(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar, String str) throws IOException, aa.d {
        return qa.e.k(O(x9.p.a().postWithContentTypeJson("https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,playabilityStatus,storyboards,videoDetails", Q(), JsonWriter.string(q0(iVar, aVar).value(VIDEO_ID, str).value(CONTENT_CHECK_OK, true).value(RACY_CHECK_OK, true).done()).getBytes(StandardCharsets.UTF_8), iVar)));
    }

    public static Map<String, List<String>> Q() throws IOException, aa.d {
        Map<String, List<String>> mapX = x();
        mapX.put("Cookie", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{s()}));
        return mapX;
    }

    public static boolean S(String str) {
        try {
            final URL url = new URL(l(str));
            return GOOGLE_URLS.stream().anyMatch(new Predicate() { // from class: org.schabi.newpipe.extractor.services.youtube.l0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return r0.m0(url, (String) obj);
                }
            });
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    public static boolean U(URL url) {
        return url.getHost().equalsIgnoreCase("hooktube.com");
    }

    public static boolean W(JsonArray jsonArray) {
        if (qa.y.n(jsonArray)) {
            return false;
        }
        Iterator it = jsonArray.iterator();
        while (it.hasNext()) {
            String string = ((JsonObject) it.next()).getObject("metadataBadgeRenderer").getString("style");
            if (string != null && (string.equals("BADGE_STYLE_TYPE_VERIFIED") || string.equals("BADGE_STYLE_TYPE_VERIFIED_ARTIST"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean X(URL url) {
        return url.getHost().equalsIgnoreCase("y2u.be");
    }

    public static boolean d0(URL url) {
        String host = url.getHost();
        if (!host.equalsIgnoreCase("www.youtube-nocookie.com") && !host.equalsIgnoreCase("youtu.be")) {
            return false;
        }
        return true;
    }

    public static byte[] j(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar, String str, Integer num, String str2) {
        return JsonWriter.string(t0(iVar, aVar, str).object("playbackContext").object("contentPlaybackContext").value("signatureTimestamp", num).value("referer", "https://www.youtube.com/watch?v=" + str).end().end().value(CPN, str2).value(VIDEO_ID, str).value(CONTENT_CHECK_OK, true).value(RACY_CHECK_OK, true).done()).getBytes(StandardCharsets.UTF_8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean j0(String str) {
        return !qa.y.m(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean m0(URL url, String str) {
        return url.getHost().startsWith(str);
    }

    public static OffsetDateTime n0(String str) throws aa.h {
        try {
            try {
                return OffsetDateTime.parse(str);
            } catch (DateTimeParseException unused) {
                return LocalDate.parse(str).atStartOfDay().atOffset(ZoneOffset.UTC);
            }
        } catch (DateTimeParseException e) {
            throw new aa.h("Could not parse date: \"" + str + "\"", e);
        }
    }

    public static ba.a o(String str) throws aa.h {
        if (!qa.y.m(str)) {
            if (b0(str)) {
                return ba.a.MIX_MUSIC;
            }
            if (Y(str)) {
                return ba.a.MIX_CHANNEL;
            }
            if (Z(str)) {
                return ba.a.MIX_GENRE;
            }
            if (a0(str)) {
                return ba.a.MIX_STREAM;
            }
            return ba.a.NORMAL;
        }
        throw new aa.h("Could not extract playlist type from empty playlist id");
    }

    public static ba.a p(String str) throws aa.h {
        try {
            return o(qa.y.h(qa.y.w(str), "list"));
        } catch (MalformedURLException e) {
            throw new aa.h("Could not extract playlist type from malformed url", e);
        }
    }

    public static JsonBuilder<JsonObject> p0(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar) {
        return JsonObject.builder().object("context").object("client").value("clientName", "ANDROID").value("clientVersion", ANDROID_YOUTUBE_CLIENT_VERSION).value("platform", "MOBILE").value("osName", "Android").value("osVersion", "14").value("androidSdkVersion", 34).value("hl", iVar.g()).value("gl", aVar.a()).value("utcOffsetMinutes", 0).end().object("request").array("internalExperimentFlags").end().value("useSsl", true).end().object(GlobalProfileFragment.KEY_USER).value("lockedSafetyMode", false).end().end();
    }

    public static String q(String str) throws aa.h {
        if (!qa.y.m(str)) {
            if (c0(str)) {
                return str.substring(4);
            }
            if (b0(str)) {
                return str.substring(6);
            }
            if (!Y(str)) {
                if (!Z(str)) {
                    if (a0(str)) {
                        if (str.length() == 13) {
                            return str.substring(2);
                        }
                        throw new aa.h("Video id could not be determined from mix id: " + str);
                    }
                    throw new aa.h("Video id could not be determined from playlist id: " + str);
                }
                throw new aa.h("Video id could not be determined from genre mix id: " + str);
            }
            throw new aa.h("Video id could not be determined from channel mix id: " + str);
        }
        throw new aa.h("Video id could not be determined from empty playlist id");
    }

    public static JsonBuilder<JsonObject> r0(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar, String str) throws IOException, aa.d {
        JsonBuilder jsonBuilderValue = JsonObject.builder().object("context").object("client").value("hl", iVar.g()).value("gl", aVar.a()).value("clientName", "WEB").value("clientVersion", y()).value("originalUrl", "https://www.youtube.com").value("platform", "DESKTOP").value("utcOffsetMinutes", 0);
        if (str != null) {
            jsonBuilderValue.value("visitorData", str);
        }
        return jsonBuilderValue.end().object("request").array("internalExperimentFlags").end().value("useSsl", true).end().object(GlobalProfileFragment.KEY_USER).value("lockedSafetyMode", false).end().end();
    }

    public static String s() {
        String str;
        if (R()) {
            str = "CAISAiAD";
        } else {
            str = "CAE=";
        }
        return "SOCS=" + str;
    }

    public static JsonBuilder<JsonObject> s0(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar) {
        return JsonObject.builder().object("context").object("client").value("clientName", "IOS").value("clientVersion", IOS_YOUTUBE_CLIENT_VERSION).value("deviceMake", "Apple").value("deviceModel", IOS_DEVICE_MODEL).value("platform", "MOBILE").value("osName", "iOS").value("osVersion", IOS_OS_VERSION).value("hl", iVar.g()).value("gl", aVar.a()).value("utcOffsetMinutes", 0).end().object("request").array("internalExperimentFlags").end().value("useSsl", true).end().object(GlobalProfileFragment.KEY_USER).value("lockedSafetyMode", false).end().end();
    }

    public static JsonBuilder<JsonObject> t0(org.schabi.newpipe.extractor.localization.i iVar, org.schabi.newpipe.extractor.localization.a aVar, String str) {
        return JsonObject.builder().object("context").object("client").value("clientName", "TVHTML5_SIMPLY_EMBEDDED_PLAYER").value("clientVersion", TVHTML5_SIMPLY_EMBED_CLIENT_VERSION).value("clientScreen", "EMBED").value("platform", "TV").value("hl", iVar.g()).value("gl", aVar.a()).value("utcOffsetMinutes", 0).end().object("thirdParty").value("embedUrl", "https://www.youtube.com/watch?v=" + str).end().object("request").array("internalExperimentFlags").end().value("useSsl", true).end().object(GlobalProfileFragment.KEY_USER).value("lockedSafetyMode", false).end().end();
    }

    private static Map<String, List<String>> w(String str, String str2) {
        return ja.g.a(new Map.Entry[]{new AbstractMap.SimpleEntry("X-YouTube-Client-Name", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{str})), new AbstractMap.SimpleEntry("X-YouTube-Client-Version", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{str2}))});
    }
}
