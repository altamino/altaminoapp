package ga;

import aa.h;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.p;
import qa.n;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends org.schabi.newpipe.extractor.linkhandler.b {
    private static final b INSTANCE = new b();
    private static final String LIVE_STREAM_ID_PATTERN = "streaming\\.media\\.ccc\\.de\\/(\\w+\\/\\w+)";
    private static final String LIVE_STREAM_PATH = "https://streaming.media.ccc.de/";
    private static final String RECORDING_ID_PATTERN = "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/events/)|(?:media\\.ccc\\.de/v/))([^/?&#]*)";
    public static final String VIDEO_API_ENDPOINT = "https://api.media.ccc.de/public/events/";
    private static final String VIDEO_PATH = "https://media.ccc.de/v/";

    public static b i() {
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
        String strO;
        try {
            strO = n.o(LIVE_STREAM_ID_PATTERN, str);
        } catch (n.a unused) {
            strO = null;
        }
        return strO == null ? n.o(RECORDING_ID_PATTERN, str) : strO;
    }

    private b() {
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String f(String str) throws UnsupportedOperationException, h {
        if (p.f(str)) {
            return LIVE_STREAM_PATH + str;
        }
        return VIDEO_PATH + str;
    }
}
