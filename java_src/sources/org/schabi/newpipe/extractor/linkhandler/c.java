package org.schabi.newpipe.extractor.linkhandler;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c extends a {
    protected final List<String> contentFilters;
    protected final String sortFilter;

    public c(String str, String str2, String str3, List<String> list, String str4) {
        super(str, str2, str3);
        this.contentFilters = Collections.unmodifiableList(list);
        this.sortFilter = str4;
    }

    public c(c cVar) {
        this(cVar.originalUrl, cVar.url, cVar.id, cVar.contentFilters, cVar.sortFilter);
    }

    public c(a aVar) {
        this(aVar.originalUrl, aVar.url, aVar.id, Collections.emptyList(), "");
    }
}
