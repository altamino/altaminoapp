package ia;

import aa.h;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.d;
import qa.n;
import x9.r;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends d {
    public static final String API_ENDPOINT = "/api/v1/";
    private static final String ID_PATTERN = "((accounts|a)|(video-channels|c))/([^/?&#]*)";
    private static final a INSTANCE = new a();

    public static a o() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) {
        try {
            new URL(str);
            return str.contains("/accounts/") || str.contains("/a/") || str.contains("/video-channels/") || str.contains("/c/");
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    private String n(String str) {
        if (str.startsWith("a/")) {
            return "accounts" + str.substring(1);
        }
        if (!str.startsWith("c/")) {
            return str;
        }
        return "video-channels" + str.substring(1);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        return n(n.m(ID_PATTERN, str, 0));
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        return m(str, list, str2, r.PeerTube.m());
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String m(String str, List<String> list, String str2, String str3) throws UnsupportedOperationException, h {
        if (!str.matches(ID_PATTERN)) {
            return str3 + "/accounts/" + str;
        }
        return str3 + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + n(str);
    }

    private a() {
    }
}
