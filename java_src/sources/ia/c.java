package ia;

import aa.e;
import aa.h;
import java.net.MalformedURLException;
import java.net.URL;
import qa.n;
import x9.r;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends org.schabi.newpipe.extractor.linkhandler.b {
    private static final String ID_PATTERN = "(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)";
    private static final c INSTANCE = new c();
    public static final String VIDEO_API_ENDPOINT = "/api/v1/videos/";
    private static final String VIDEO_PATH = "/videos/watch/";

    public static c i() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        return n.m(ID_PATTERN, str, 4);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String f(String str) throws UnsupportedOperationException, h {
        return g(str, r.PeerTube.m());
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String g(String str, String str2) {
        return str2 + VIDEO_PATH + str;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws e {
        if (str.contains("/playlist/")) {
            return false;
        }
        try {
            new URL(str);
            e(str);
            return true;
        } catch (h | MalformedURLException unused) {
            return false;
        }
    }

    private c() {
    }
}
