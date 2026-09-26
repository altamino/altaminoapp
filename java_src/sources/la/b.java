package la;

import aa.h;
import ja.i;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.d;
import qa.n;
import qa.y;

/* JADX INFO: loaded from: classes10.dex */
public final class b extends d {
    private static final b INSTANCE = new b();
    private static final String URL_PATTERN = "^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/sets/[0-9a-z_-]+/?([#?].*)?$";

    public static b n() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        y.c(URL_PATTERN, str);
        try {
            return i.o(str);
        } catch (Exception e) {
            throw new h("Could not get id of url: " + str + " " + e.getMessage(), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws h {
        return n.g(URL_PATTERN, str.toLowerCase());
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        try {
            return i.p("https://api.soundcloud.com/playlists/" + str);
        } catch (Exception e) {
            throw new h(e.getMessage(), e);
        }
    }

    private b() {
    }
}
