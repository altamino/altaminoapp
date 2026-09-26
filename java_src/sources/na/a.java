package na;

import aa.h;
import com.narvii.chat.input.MentionedEditText;
import java.net.URL;
import java.util.List;
import java.util.regex.Pattern;
import org.schabi.newpipe.extractor.services.youtube.r0;
import qa.y;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends org.schabi.newpipe.extractor.linkhandler.d {
    private static final a INSTANCE = new a();
    private static final Pattern EXCLUDED_SEGMENTS = Pattern.compile("playlist|watch|attribution_link|watch_popup|embed|feed|select_site|account|reporthistory|redirect");

    public static a n() {
        return INSTANCE;
    }

    private boolean o(String[] strArr) {
        return strArr.length == 1 && !EXCLUDED_SEGMENTS.matcher(strArr[0]).matches();
    }

    private boolean p(String[] strArr) {
        return strArr.length > 0 && strArr[0].startsWith(MentionedEditText.DEFAULT_METION_TAG);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        try {
            URL urlW = y.w(str);
            String path = urlW.getPath();
            if (!y.l(urlW) || (!r0.e0(urlW) && !r0.V(urlW) && !r0.U(urlW))) {
                throw new h("The URL given is not a YouTube URL");
            }
            String strSubstring = path.substring(1);
            String[] strArrSplit = strSubstring.split(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
            if (p(strArrSplit)) {
                return strArrSplit[0];
            }
            if (o(strArrSplit)) {
                strSubstring = "c/" + strSubstring;
                strArrSplit = strSubstring.split(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
            }
            if (!strSubstring.startsWith("user/") && !strSubstring.startsWith("channel/") && !strSubstring.startsWith("c/")) {
                throw new h("The given URL is not a channel, a user or a handle URL");
            }
            String str2 = strArrSplit[1];
            if (y.k(str2)) {
                throw new h("The given ID is not a YouTube channel or user ID");
            }
            return strArrSplit[0] + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str2;
        } catch (Exception e) {
            throw new h("Could not parse URL :" + e.getMessage(), e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        return "https://www.youtube.com/" + str;
    }

    private a() {
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
}
