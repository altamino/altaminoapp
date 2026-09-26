package com.google.firebase.perf.util;

import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes8.dex */
public class m {
    private final URL url;

    public URLConnection a() throws IOException {
        return this.url.openConnection();
    }

    public String toString() {
        return this.url.toString();
    }

    public m(URL url) {
        this.url = url;
    }
}
