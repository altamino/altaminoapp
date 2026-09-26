package org.schabi.newpipe.extractor.services.peertube.extractors;

import aa.h;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.grack.nanojson.JsonObject;
import com.narvii.chat.input.MentionedEditText;
import java.util.List;
import oa.k;
import oa.l;
import oa.o;
import x9.r;

/* JADX INFO: loaded from: classes10.dex */
public class f implements l {
    private String baseUrl;
    protected final JsonObject item;

    @Override // oa.l
    public boolean b() throws h {
        return false;
    }

    @Override // oa.l
    public boolean k() {
        return false;
    }

    @Override // oa.l
    public /* synthetic */ boolean l() {
        return k.b(this);
    }

    @Override // oa.l
    public /* synthetic */ String m() {
        return k.a(this);
    }

    @Override // oa.l
    public String a() throws h {
        String strH = qa.e.h(this.item, "account.name");
        String strH2 = qa.e.h(this.item, "account.host");
        return r.PeerTube.a().b("accounts/" + strH + MentionedEditText.DEFAULT_METION_TAG + strH2, this.baseUrl).d();
    }

    @Override // oa.l
    public String c() throws h {
        return qa.e.h(this.item, "account.displayName");
    }

    @Override // x9.f
    public List<x9.c> e() throws h {
        return ha.f.f(this.baseUrl, this.item);
    }

    @Override // oa.l
    public List<x9.c> f() {
        return ha.f.c(this.baseUrl, this.item.getObject("account"));
    }

    @Override // oa.l
    public long getDuration() {
        return this.item.getLong(TypedValues.TransitionType.S_DURATION);
    }

    @Override // x9.f
    public String getName() throws h {
        return qa.e.h(this.item, "name");
    }

    @Override // oa.l
    public o getStreamType() {
        return this.item.getBoolean("isLive") ? o.LIVE_STREAM : o.VIDEO_STREAM;
    }

    @Override // x9.f
    public String getUrl() throws h {
        return r.PeerTube.i().b(qa.e.h(this.item, "uuid"), this.baseUrl).d();
    }

    @Override // oa.l
    public String i() throws h {
        return qa.e.h(this.item, "publishedAt");
    }

    @Override // oa.l
    public long n() {
        return this.item.getLong("views");
    }

    public f(JsonObject jsonObject, String str) {
        this.item = jsonObject;
        this.baseUrl = str;
    }

    @Override // oa.l
    public org.schabi.newpipe.extractor.localization.e j() throws h {
        String strI = i();
        if (strI == null) {
            return null;
        }
        return new org.schabi.newpipe.extractor.localization.e(ha.f.i(strI));
    }
}
