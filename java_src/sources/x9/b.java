package x9;

import java.io.IOException;
import java.util.Objects;
import org.schabi.newpipe.extractor.localization.f0;

/* JADX INFO: loaded from: classes10.dex */
public abstract class b {
    private final z9.a downloader;
    private final org.schabi.newpipe.extractor.linkhandler.a linkHandler;
    private final s service;
    private org.schabi.newpipe.extractor.localization.i forcedLocalization = null;
    private org.schabi.newpipe.extractor.localization.a forcedContentCountry = null;
    private boolean pageFetched = false;

    public z9.a d() {
        return this.downloader;
    }

    public org.schabi.newpipe.extractor.linkhandler.a h() {
        return this.linkHandler;
    }

    public abstract String i() throws aa.h;

    public s k() {
        return this.service;
    }

    public abstract void o(z9.a aVar) throws IOException, aa.d;

    protected void a() {
        if (!this.pageFetched) {
            throw new IllegalStateException("Page is not fetched. Make sure you call fetchPage()");
        }
    }

    public void b() throws IOException, aa.d {
        if (this.pageFetched) {
            return;
        }
        o(this.downloader);
        this.pageFetched = true;
    }

    public String c() throws aa.h {
        return this.linkHandler.a();
    }

    public org.schabi.newpipe.extractor.localization.a e() {
        org.schabi.newpipe.extractor.localization.a aVar = this.forcedContentCountry;
        return aVar == null ? k().b() : aVar;
    }

    public org.schabi.newpipe.extractor.localization.i f() {
        org.schabi.newpipe.extractor.localization.i iVar = this.forcedLocalization;
        return iVar == null ? k().d() : iVar;
    }

    public String g() throws aa.h {
        return this.linkHandler.b();
    }

    public String j() throws aa.h {
        return this.linkHandler.c();
    }

    public int l() {
        return this.service.f();
    }

    public String n() throws aa.h {
        return this.linkHandler.d();
    }

    protected b(s sVar, org.schabi.newpipe.extractor.linkhandler.a aVar) {
        Objects.requireNonNull(sVar, "service is null");
        this.service = sVar;
        Objects.requireNonNull(aVar, "LinkHandler is null");
        this.linkHandler = aVar;
        z9.a aVarA = p.a();
        Objects.requireNonNull(aVarA, "downloader is null");
        this.downloader = aVarA;
    }

    public f0 m() {
        return k().l(f());
    }
}
