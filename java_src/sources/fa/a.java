package fa;

import java.util.Arrays;
import oa.h;
import org.schabi.newpipe.extractor.linkhandler.b;
import org.schabi.newpipe.extractor.linkhandler.d;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.m;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.p;
import org.schabi.newpipe.extractor.services.media_ccc.extractors.r;
import x9.s;

/* JADX INFO: loaded from: classes.dex */
public class a extends s {
    public a(int i10) {
        super(i10, "media.ccc.de", Arrays.asList(s.b.a.AUDIO, s.b.a.VIDEO));
    }

    @Override // x9.s
    public d e() {
        return null;
    }

    @Override // x9.s
    public d a() {
        return ga.a.n();
    }

    @Override // x9.s
    public h h(org.schabi.newpipe.extractor.linkhandler.a aVar) {
        if (p.f(aVar.b())) {
            return new m(this, aVar);
        }
        return new r(this, aVar);
    }

    @Override // x9.s
    public b i() {
        return ga.b.i();
    }
}
