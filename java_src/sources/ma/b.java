package ma;

import com.grack.nanojson.JsonObject;
import java.util.List;
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes10.dex */
public class b implements ba.d {
    private final JsonObject mixInfoItem;

    @Override // ba.d
    public String a() throws aa.h {
        return null;
    }

    @Override // ba.d
    public boolean b() throws aa.h {
        return false;
    }

    @Override // ba.d
    public /* synthetic */ oa.e getDescription() {
        return ba.c.a(this);
    }

    @Override // ba.d
    public String c() throws aa.h {
        return r0.J(this.mixInfoItem.getObject("longBylineText"));
    }

    @Override // ba.d
    public long d() throws aa.h {
        String strJ = r0.J(this.mixInfoItem.getObject("videoCountShortText"));
        if (strJ == null) {
            throw new aa.h("Could not extract item count for playlist/mix info item");
        }
        try {
            return Integer.parseInt(strJ);
        } catch (NumberFormatException unused) {
            return -2L;
        }
    }

    @Override // x9.f
    public List<x9.c> e() throws aa.h {
        return r0.M(this.mixInfoItem);
    }

    @Override // x9.f
    public String getName() throws aa.h {
        String strJ = r0.J(this.mixInfoItem.getObject("title"));
        if (qa.y.m(strJ)) {
            throw new aa.h("Could not get name");
        }
        return strJ;
    }

    @Override // x9.f
    public String getUrl() throws aa.h {
        String string = this.mixInfoItem.getString("shareUrl");
        if (qa.y.m(string)) {
            throw new aa.h("Could not get url");
        }
        return string;
    }

    public b(JsonObject jsonObject) {
        this.mixInfoItem = jsonObject;
    }

    @Override // ba.d
    public ba.a h() throws aa.h {
        return r0.p(getUrl());
    }
}
