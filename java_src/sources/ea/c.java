package ea;

import aa.h;
import da.g;
import qa.y;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends org.schabi.newpipe.extractor.linkhandler.b {
    private static final c INSTANCE = new c();

    public static c i() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String f(String str) throws UnsupportedOperationException, h {
        if (!str.matches("\\d+")) {
            return y.v(str);
        }
        return "https://bandcamp.com/?show=" + str;
    }

    private c() {
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        if (g.h(str)) {
            return str.split("bandcamp.com/\\?show=")[1];
        }
        return f(str);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws h {
        if (g.h(str)) {
            return true;
        }
        if (!str.toLowerCase().matches("https?://.+\\..+/track/.+")) {
            return false;
        }
        return g.g(str);
    }
}
