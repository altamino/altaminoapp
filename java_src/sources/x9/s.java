package x9;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.localization.f0;
import org.schabi.newpipe.extractor.localization.g0;
import qa.y;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s {
    private final int serviceId;
    private final b serviceInfo;

    public enum a {
        NONE,
        STREAM,
        CHANNEL,
        PLAYLIST
    }

    public abstract org.schabi.newpipe.extractor.linkhandler.d a();

    public abstract org.schabi.newpipe.extractor.linkhandler.d e();

    public final int f() {
        return this.serviceId;
    }

    public abstract oa.h h(org.schabi.newpipe.extractor.linkhandler.a aVar) throws aa.d;

    public abstract org.schabi.newpipe.extractor.linkhandler.b i();

    public static class b {
        private final List<a> mediaCapabilities;
        private final String name;

        public enum a {
            AUDIO,
            VIDEO,
            LIVE,
            COMMENTS
        }

        public String a() {
            return this.name;
        }

        public b(String str, List<a> list) {
            this.name = str;
            this.mediaCapabilities = Collections.unmodifiableList(list);
        }
    }

    public List<org.schabi.newpipe.extractor.localization.a> j() {
        return Collections.singletonList(org.schabi.newpipe.extractor.localization.a.DEFAULT);
    }

    public List<org.schabi.newpipe.extractor.localization.i> k() {
        return Collections.singletonList(org.schabi.newpipe.extractor.localization.i.DEFAULT);
    }

    public String toString() {
        return this.serviceId + ":" + this.serviceInfo.a();
    }

    public s(int i10, String str, List<b.a> list) {
        this.serviceId = i10;
        this.serviceInfo = new b(str, list);
    }

    public org.schabi.newpipe.extractor.localization.a b() {
        org.schabi.newpipe.extractor.localization.a aVarB = p.b();
        if (j().contains(aVarB)) {
            return aVarB;
        }
        return org.schabi.newpipe.extractor.localization.a.DEFAULT;
    }

    public final a c(String str) throws aa.h {
        String strF = y.f(str);
        org.schabi.newpipe.extractor.linkhandler.b bVarI = i();
        org.schabi.newpipe.extractor.linkhandler.d dVarA = a();
        org.schabi.newpipe.extractor.linkhandler.d dVarE = e();
        if (bVarI != null && bVarI.a(strF)) {
            return a.STREAM;
        }
        if (dVarA != null && dVarA.a(strF)) {
            return a.CHANNEL;
        }
        if (dVarE != null && dVarE.a(strF)) {
            return a.PLAYLIST;
        }
        return a.NONE;
    }

    public org.schabi.newpipe.extractor.localization.i d() {
        org.schabi.newpipe.extractor.localization.i iVarC = p.c();
        if (k().contains(iVarC)) {
            return iVarC;
        }
        for (org.schabi.newpipe.extractor.localization.i iVar : k()) {
            if (iVar.e().equals(iVarC.e())) {
                return iVar;
            }
        }
        return org.schabi.newpipe.extractor.localization.i.DEFAULT;
    }

    public oa.h g(String str) throws aa.d {
        return h(i().c(str));
    }

    public f0 l(org.schabi.newpipe.extractor.localization.i iVar) {
        f0 f0VarB;
        f0 f0VarB2 = g0.b(iVar);
        if (f0VarB2 != null) {
            return f0VarB2;
        }
        if (!iVar.d().isEmpty() && (f0VarB = g0.b(new org.schabi.newpipe.extractor.localization.i(iVar.e()))) != null) {
            return f0VarB;
        }
        throw new IllegalArgumentException("Localization is not supported (\"" + iVar + "\")");
    }
}
