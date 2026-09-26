package org.schabi.newpipe.extractor.services.youtube;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes9.dex */
final class j {
    private static final String BASE_JS_PLAYER_URL_FORMAT = "https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js";
    private static final String HTTPS = "https:";
    private static final Pattern IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN = Pattern.compile("player\\\\/([a-z0-9]{8})\\\\/");
    private static final Pattern EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN = Pattern.compile("\"jsUrl\":\"(/s/player/[A-Za-z0-9]+/player_ias\\.vflset/[A-Za-z_-]+/base\\.js)\"");

    private static String a(String str) {
        if (str.startsWith("//")) {
            return HTTPS + str;
        }
        if (!str.startsWith(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING)) {
            return str;
        }
        return "https://www.youtube.com" + str;
    }

    static String d(String str) throws aa.h {
        try {
            String strC = x9.p.a().get("https://www.youtube.com/embed/" + str, org.schabi.newpipe.extractor.localization.i.DEFAULT).c();
            Iterator<Element> it = Jsoup.parse(strC).select("script").attr("name", "player/base").iterator();
            while (it.hasNext()) {
                String strAttr = it.next().attr("src");
                if (strAttr.contains("base.js")) {
                    return strAttr;
                }
            }
            try {
                return qa.n.p(EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN, strC);
            } catch (qa.n.a e) {
                throw new aa.h("Embedded watch page didn't provide JavaScript base player's URL", e);
            }
        } catch (Exception e2) {
            throw new aa.h("Could not fetch embedded watch page", e2);
        }
    }

    static String e() throws aa.h {
        try {
            try {
                return String.format(BASE_JS_PLAYER_URL_FORMAT, qa.n.p(IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN, x9.p.a().get("https://www.youtube.com/iframe_api", org.schabi.newpipe.extractor.localization.i.DEFAULT).c()));
            } catch (qa.n.a e) {
                throw new aa.h("IFrame resource didn't provide JavaScript base player's hash", e);
            }
        } catch (Exception e2) {
            throw new aa.h("Could not fetch IFrame resource", e2);
        }
    }

    private static String b(String str) throws aa.h {
        try {
            return x9.p.a().get(str, org.schabi.newpipe.extractor.localization.i.DEFAULT).c();
        } catch (Exception e) {
            throw new aa.h("Could not get JavaScript base player's code", e);
        }
    }

    static String c(String str) throws aa.h {
        try {
            String strA = a(e());
            new URL(strA);
            return b(strA);
        } catch (Exception unused) {
            String strA2 = a(d(str));
            try {
                new URL(strA2);
                return b(strA2);
            } catch (MalformedURLException e) {
                throw new aa.h("The extracted and built JavaScript URL is invalid", e);
            }
        }
    }
}
