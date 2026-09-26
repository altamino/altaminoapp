package ca;

import da.g;
import da.j;
import ea.b;
import ea.c;
import java.util.Arrays;
import oa.h;
import org.schabi.newpipe.extractor.linkhandler.d;
import x9.s;

/* JADX INFO: loaded from: classes7.dex */
public class a extends s {
    public a(int i10) {
        super(i10, "Bandcamp", Arrays.asList(s.b.a.AUDIO, s.b.a.COMMENTS));
    }

    @Override // x9.s
    public d a() {
        return ea.a.n();
    }

    @Override // x9.s
    public d e() {
        return b.n();
    }

    @Override // x9.s
    public h h(org.schabi.newpipe.extractor.linkhandler.a aVar) {
        if (g.h(aVar.d())) {
            return new j(this, aVar);
        }
        return new da.s(this, aVar);
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.b i() {
        return c.i();
    }
}
