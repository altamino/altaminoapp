package ga;

import aa.h;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.d;
import qa.n;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends d {
    public static final String CONFERENCE_API_ENDPOINT = "https://api.media.ccc.de/public/conferences/";
    public static final String CONFERENCE_PATH = "https://media.ccc.de/c/";
    private static final String ID_PATTERN = "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/conferences/)|(?:media\\.ccc\\.de/[bc]/))([^/?&#]*)";
    private static final a INSTANCE = new a();

    public static a n() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) {
        try {
            return e(str) != null;
        } catch (h unused) {
            return false;
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        return n.o(ID_PATTERN, str);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        return CONFERENCE_PATH + str;
    }

    private a() {
    }
}
