package ja;

import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.narvii.master.home.profile.GlobalProfileFragment;
import java.io.IOException;
import java.net.MalformedURLException;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import oa.m;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import qa.n;
import qa.y;
import x9.p;
import x9.r;

/* JADX INFO: loaded from: classes5.dex */
public final class i {
    private static final List<qa.b> ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES;
    private static final Pattern ON_URL_PATTERN;
    public static final String SOUNDCLOUD_API_V2_URL = "https://api-v2.soundcloud.com/";
    private static final List<qa.b> VISUALS_IMAGE_SUFFIXES;
    private static String clientId;

    public static String h(m mVar, String str) throws aa.j, aa.h, IOException {
        return i(mVar, str, false);
    }

    static {
        x9.c.a aVar = x9.c.a.LOW;
        x9.c.a aVar2 = x9.c.a.MEDIUM;
        ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES = net.pubnative.lite.sdk.vpaid.h.a(new qa.b[]{new qa.b("mini", 16, 16, aVar), new qa.b("t20x20", 20, 20, aVar), new qa.b("small", 32, 32, aVar), new qa.b("badge", 47, 47, aVar), new qa.b("t50x50", 50, 50, aVar), new qa.b("t60x60", 60, 60, aVar), new qa.b("t67x67", 67, 67, aVar), new qa.b("t80x80", 80, 80, aVar), new qa.b("large", 100, 100, aVar), new qa.b("t120x120", 120, 120, aVar), new qa.b("t200x200", 200, 200, aVar2), new qa.b("t240x240", 240, 240, aVar2), new qa.b("t250x250", 250, 250, aVar2), new qa.b("t300x300", 300, 300, aVar2), new qa.b("t500x500", 500, 500, aVar2)});
        VISUALS_IMAGE_SUFFIXES = net.pubnative.lite.sdk.vpaid.h.a(new Object[]{new qa.b("t1240x260", 1240, 260, aVar2), new qa.b("t2480x520", 2480, 520, aVar2)});
        ON_URL_PATTERN = Pattern.compile("^https?://on.soundcloud.com/[0-9a-zA-Z]+$");
    }

    public static synchronized String b() throws IOException, aa.d {
        if (!y.m(clientId)) {
            return clientId;
        }
        z9.a aVarA = p.a();
        Elements elementsSelect = Jsoup.parse(aVarA.get("https://soundcloud.com").c()).select("script[src*=\"sndcdn.com/assets/\"][src$=\".js\"]");
        Collections.reverse(elementsSelect);
        Map<String, List<String>> mapA = g.a(new Map.Entry[]{new AbstractMap.SimpleEntry("Range", net.pubnative.lite.sdk.vpaid.h.a(new Object[]{"bytes=0-50000"}))});
        Iterator<Element> it = elementsSelect.iterator();
        while (it.hasNext()) {
            String strAttr = it.next().attr("src");
            if (!y.m(strAttr)) {
                try {
                    String strO = n.o(",client_id:\"(.*?)\"", aVarA.get(strAttr, mapA).c());
                    clientId = strO;
                    return strO;
                } catch (n.a unused) {
                    continue;
                }
            }
        }
        throw new aa.d("Couldn't extract client id");
    }

    public static List<x9.c> e(JsonObject jsonObject) throws aa.h {
        String string = jsonObject.getString("artwork_url");
        if (string != null) {
            return c(string);
        }
        String string2 = jsonObject.getObject(GlobalProfileFragment.KEY_USER).getString("avatar_url");
        if (string2 != null) {
            return c(string2);
        }
        throw new aa.h("Could not get track or track user's thumbnails");
    }

    public static String f(JsonObject jsonObject) {
        return y.v(jsonObject.getObject(GlobalProfileFragment.KEY_USER).getString("avatar_url", ""));
    }

    private static String g(JsonObject jsonObject) {
        try {
            String string = jsonObject.getString("next_href");
            if (string.contains("client_id=")) {
                return string;
            }
            return string + "&client_id=" + b();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String j(JsonObject jsonObject) {
        return jsonObject.getObject(GlobalProfileFragment.KEY_USER).getString("username", "");
    }

    public static String k(JsonObject jsonObject) {
        return y.v(jsonObject.getObject(GlobalProfileFragment.KEY_USER).getString("permalink_url", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x9.c l(String str, qa.b bVar) {
        return new x9.c(String.format(str, bVar.c()), bVar.a(), bVar.d(), bVar.b());
    }

    public static String o(String str) throws aa.h, IOException {
        if (ON_URL_PATTERN.matcher(str).find()) {
            try {
                str = p.a().head(str).b().split("\\?")[0];
            } catch (aa.d e) {
                throw new aa.h("Could not follow on.soundcloud.com redirect", e);
            }
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        try {
            try {
                return String.valueOf(qa.e.j((JsonObject) JsonParser.object().from(p.a().get("https://api-widget.soundcloud.com/resolve?url=" + y.e(y.w(y.t(str.toLowerCase())).toString()) + "&format=json&client_id=" + b(), r.SoundCloud.d()).c()), "id"));
            } catch (JsonParserException e2) {
                throw new aa.h("Could not parse JSON response", e2);
            } catch (aa.d e6) {
                throw new aa.h("Could not resolve id with embedded player. ClientId not extracted", e6);
            }
        } catch (MalformedURLException unused) {
            throw new IllegalArgumentException("The given URL is not valid");
        }
    }

    public static List<x9.c> c(String str) {
        if (y.m(str)) {
            return Collections.emptyList();
        }
        return d(str.replace("-large.", "-%s."), ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES);
    }

    private static List<x9.c> d(final String str, List<qa.b> list) {
        return (List) list.stream().map(new Function() { // from class: ja.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return i.l(str, (qa.b) obj);
            }
        }).collect(Collectors.toUnmodifiableList());
    }

    public static String i(m mVar, String str, boolean z6) throws aa.j, aa.h, IOException {
        z9.d dVar = p.a().get(str, r.SoundCloud.d());
        if (dVar.d() < 400) {
            try {
                JsonObject jsonObject = (JsonObject) JsonParser.object().from(dVar.c());
                for (Object obj : jsonObject.getArray("collection")) {
                    if (obj instanceof JsonObject) {
                        JsonObject object = (JsonObject) obj;
                        if (z6) {
                            object = object.getObject("track");
                        }
                        mVar.d(new ka.d(object));
                    }
                }
                return g(jsonObject);
            } catch (JsonParserException e) {
                throw new aa.h("Could not parse json response", e);
            }
        }
        throw new IOException("Could not get streams from API, HTTP " + dVar.d());
    }

    public static OffsetDateTime m(String str) throws aa.h {
        try {
            return OffsetDateTime.parse(str);
        } catch (DateTimeParseException e) {
            try {
                return OffsetDateTime.parse(str, DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss +0000"));
            } catch (DateTimeParseException e2) {
                throw new aa.h("Could not parse date: \"" + str + "\", " + e.getMessage(), e2);
            }
        }
    }

    public static JsonObject n(z9.a aVar, String str) throws IOException, aa.d {
        try {
            return (JsonObject) JsonParser.object().from(aVar.get("https://api-v2.soundcloud.com/resolve?url=" + y.e(str) + "&client_id=" + b(), r.SoundCloud.d()).c());
        } catch (JsonParserException e) {
            throw new aa.h("Could not parse json response", e);
        }
    }

    public static String p(String str) throws aa.j, IOException {
        return Jsoup.parse(p.a().get("https://w.soundcloud.com/player/?url=" + y.e(str), r.SoundCloud.d()).c()).select("link[rel=\"canonical\"]").first().attr("abs:href");
    }
}
