package ea;

import aa.h;
import aa.j;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import da.g;
import java.io.IOException;
import java.util.List;
import org.schabi.newpipe.extractor.linkhandler.d;
import qa.e;
import qa.y;
import x9.p;

/* JADX INFO: loaded from: classes8.dex */
public final class a extends d {
    private static final a INSTANCE = new a();

    public static a n() {
        return INSTANCE;
    }

    private a() {
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String e(String str) throws UnsupportedOperationException, h {
        try {
            return String.valueOf(e.d(p.a().get(y.v(str)).c(), "data-band").getLong("id"));
        } catch (j | IOException | ArrayIndexOutOfBoundsException | JsonParserException e) {
            throw new h("Download failed", e);
        }
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public boolean h(String str) throws h {
        String lowerCase = str.toLowerCase();
        String[] strArrSplit = lowerCase.split(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
        if (strArrSplit.length != 3 && strArrSplit.length != 4) {
            return false;
        }
        if ((strArrSplit.length == 4 && !strArrSplit[3].equals("releases") && !strArrSplit[3].equals("music") && !strArrSplit[3].equals("album") && !strArrSplit[3].equals("track")) || strArrSplit[2].equals("daily.bandcamp.com")) {
            return false;
        }
        return g.g(lowerCase);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.d
    public String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h {
        JsonObject jsonObjectB = g.b(str);
        if (!jsonObjectB.getBoolean(com.google.firebase.messaging.e.IPC_BUNDLE_KEY_SEND_ERROR)) {
            return y.v(jsonObjectB.getString("bandcamp_url"));
        }
        throw new h("JSON does not contain a channel URL (invalid id?) or is otherwise invalid");
    }
}
