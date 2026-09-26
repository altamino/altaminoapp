package da;

import java.util.List;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes8.dex */
public class k implements ba.d {
    private final Element relatedAlbum;

    @Override // ba.d
    public String a() throws aa.h {
        return null;
    }

    @Override // ba.d
    public boolean b() throws aa.h {
        return false;
    }

    @Override // ba.d
    public long d() throws aa.h {
        return -1L;
    }

    @Override // ba.d
    public /* synthetic */ oa.e getDescription() {
        return ba.c.a(this);
    }

    @Override // ba.d
    public /* synthetic */ ba.a h() {
        return ba.c.b(this);
    }

    @Override // ba.d
    public String c() throws aa.h {
        return this.relatedAlbum.getElementsByClass("by-artist").text().replace("by ", "");
    }

    @Override // x9.f
    public List<x9.c> e() throws aa.h {
        return g.f(this.relatedAlbum.getElementsByClass("album-art").attr("src"));
    }

    @Override // x9.f
    public String getName() throws aa.h {
        return this.relatedAlbum.getElementsByClass("release-title").text();
    }

    @Override // x9.f
    public String getUrl() throws aa.h {
        return this.relatedAlbum.getElementsByClass("album-link").attr("abs:href");
    }

    public k(Element element) {
        this.relatedAlbum = element;
    }
}
