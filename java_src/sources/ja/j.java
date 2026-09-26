package ja;

import java.util.Arrays;
import java.util.List;
import x9.s;

/* JADX INFO: loaded from: classes6.dex */
public class j extends s {
    public j(int i10) {
        super(i10, "SoundCloud", Arrays.asList(s.b.a.AUDIO, s.b.a.COMMENTS));
    }

    @Override // x9.s
    public oa.h h(org.schabi.newpipe.extractor.linkhandler.a aVar) {
        return new ka.c(this, aVar);
    }

    @Override // x9.s
    public List<org.schabi.newpipe.extractor.localization.a> j() {
        return org.schabi.newpipe.extractor.localization.a.b("AU", "CA", "DE", "FR", "GB", "IE", "NL", "NZ", "US");
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.d a() {
        return la.a.n();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.d e() {
        return la.b.n();
    }

    @Override // x9.s
    public org.schabi.newpipe.extractor.linkhandler.b i() {
        return la.c.i();
    }
}
