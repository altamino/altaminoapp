package la;

import aa.h;
import ja.i;
import qa.n;
import qa.y;

/* JADX INFO: loaded from: classes10.dex */
public final class c extends org.schabi.newpipe.extractor.linkhandler.b {
    private static final String API_URL_PATTERN = "^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/";
    private static final c INSTANCE = new c();
    private static final String URL_PATTERN = "^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$";

    public static c i() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        if (n.g(API_URL_PATTERN, str)) {
            return n.o(API_URL_PATTERN, str);
        }
        y.c(URL_PATTERN, str);
        try {
            return i.o(str);
        } catch (Exception e) {
            throw new h(e.getMessage(), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String f(String str) throws UnsupportedOperationException, h {
        try {
            return i.p("https://api.soundcloud.com/tracks/" + str);
        } catch (Exception e) {
            throw new h(e.getMessage(), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws h {
        return n.g(URL_PATTERN, str.toLowerCase());
    }

    private c() {
    }
}
