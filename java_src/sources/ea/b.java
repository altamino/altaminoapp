package ea;

import aa.h;
import da.g;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.d;
import qa.y;

/* JADX INFO: loaded from: classes8.dex */
public final class b extends d {
    private static final b INSTANCE = new b();

    public static b n() {
        return INSTANCE;
    }

    private b() {
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        return f(str);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws h {
        if (!str.toLowerCase().matches("https?://.+\\..+/album/.+")) {
            return false;
        }
        return g.g(str);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        return y.v(str);
    }
}
