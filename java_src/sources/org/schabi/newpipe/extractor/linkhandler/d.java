package org.schabi.newpipe.extractor.linkhandler;

import aa.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import qa.y;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d extends b {
    public abstract String l(String str, List<String> list, String str2) throws UnsupportedOperationException, h;

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String f(String str) throws UnsupportedOperationException, h {
        return l(str, new ArrayList(0), "");
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    public String g(String str, String str2) throws h {
        return m(str, new ArrayList(0), "", str2);
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public c b(String str, String str2) throws h {
        return new c(super.b(str, str2));
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public c d(String str, String str2) throws h {
        Objects.requireNonNull(str, "URL may not be null");
        return new c(super.d(str, str2));
    }

    @Override // org.schabi.newpipe.extractor.linkhandler.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public c c(String str) throws h {
        String strF = y.f(str);
        return d(strF, y.g(strF));
    }

    public String m(String str, List<String> list, String str2, String str3) throws UnsupportedOperationException, h {
        return l(str, list, str2);
    }
}
