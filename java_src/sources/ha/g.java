package ha;

import java.util.Arrays;
import oa.h;
import x9.s;

/* JADX INFO: loaded from: classes4.dex */
public class g extends s {
    private a instance;

    public g(int i10) {
        this(i10, a.DEFAULT_INSTANCE);
    }

    public g(int i10, a aVar) {
        super(i10, "PeerTube", Arrays.asList(s.b.a.VIDEO, s.b.a.COMMENTS));
        this.instance = aVar;
    }

    @Override // x9.s
    public h h(org.schabi.newpipe.extractor.linkhandler.a aVar) throws aa.d {
        return new org.schabi.newpipe.extractor.services.peertube.extractors.e(this, aVar);
    }

    public String m() {
        return this.instance.a();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.d a() {
        return ia.a.o();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.d e() {
        return ia.b.n();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.b i() {
        return ia.c.i();
    }
}
