package na;

import aa.h;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import org.schabi.newpipe.extractor.services.youtube.r0;
import qa.y;

/* JADX INFO: loaded from: classes11.dex */
public final class b extends org.schabi.newpipe.extractor.linkhandler.d {
    private static final b INSTANCE = new b();

    public static b n() {
        return INSTANCE;
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        return "https://www.youtube.com/playlist?list=" + str;
    }

    private b() {
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        try {
            URL urlW = y.w(str);
            if (!y.l(urlW) || (!r0.e0(urlW) && !r0.V(urlW))) {
                throw new h("the url given is not a YouTube-URL");
            }
            String path = urlW.getPath();
            if (!path.equals("/watch") && !path.equals("/playlist")) {
                throw new h("the url given is neither a video nor a playlist URL");
            }
            String strH = y.h(urlW, "list");
            if (strH != null) {
                if (strH.matches("[a-zA-Z0-9_-]{10,}")) {
                    if (r0.Y(strH) && y.h(urlW, "v") == null) {
                        throw new aa.c("Channel Mix without a video id are not supported");
                    }
                    return strH;
                }
                throw new h("the list-ID given in the URL does not match the list pattern");
            }
            throw new h("the URL given does not include a playlist");
        } catch (Exception e) {
            throw new h("Error could not parse URL: " + e.getMessage(), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) {
        try {
            e(str);
            return true;
        } catch (h unused) {
            return false;
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d, org.schabi.newpipe.extractor.linkhandler.b
    /* JADX INFO: renamed from: j */
    public org.schabi.newpipe.extractor.linkhandler.c c(String str) throws h {
        try {
            URL urlW = y.w(str);
            String strH = y.h(urlW, "list");
            if (strH != null && r0.a0(strH)) {
                String strH2 = y.h(urlW, "v");
                if (strH2 == null) {
                    strH2 = r0.q(strH);
                }
                return new org.schabi.newpipe.extractor.linkhandler.c(new org.schabi.newpipe.extractor.linkhandler.a(str, "https://www.youtube.com/watch?v=" + strH2 + "&list=" + strH, strH));
            }
            return super.c(str);
        } catch (MalformedURLException e) {
            throw new h("Error could not parse URL: " + e.getMessage(), e);
        }
    }
}
