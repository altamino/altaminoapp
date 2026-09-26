package ia;

import aa.h;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.d;
import qa.n;
import x9.r;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends d {
    private static final String API_ID_PATTERN = "/video-playlists/([^/?&#]*)";
    private static final String ID_PATTERN = "(/videos/watch/playlist/|/w/p/)([^/?&#]*)";
    private static final b INSTANCE = new b();

    public static b n() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        try {
            return n.m(ID_PATTERN, str, 2);
        } catch (h unused) {
            return n.o(API_ID_PATTERN, str);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) {
        try {
            new URL(str);
            e(str);
            return true;
        } catch (h | MalformedURLException unused) {
            return false;
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        return m(str, list, str2, r.PeerTube.m());
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String m(String str, List<String> list, String str2, String str3) throws UnsupportedOperationException, h {
        return str3 + "/api/v1/video-playlists/" + str;
    }

    private b() {
    }
}
