package org.schabi.newpipe.extractor.linkhandler;

import aa.h;
import java.io.Serializable;
import qa.y;

/* JADX INFO: loaded from: classes5.dex */
public class a implements Serializable {
    protected final String id;
    protected final String originalUrl;
    protected final String url;

    public a(String str, String str2, String str3) {
        this.originalUrl = str;
        this.url = str2;
        this.id = str3;
    }

    public String b() {
        return this.id;
    }

    public String c() {
        return this.originalUrl;
    }

    public String d() {
        return this.url;
    }

    public a(a aVar) {
        this(aVar.originalUrl, aVar.url, aVar.id);
    }

    public String a() throws h {
        return y.g(this.url);
    }
}
