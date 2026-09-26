package com.narvii.util.http;

import com.narvii.app.NVContext;
import com.narvii.volley.HurlExtStack;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* JADX INFO: loaded from: classes11.dex */
public class ProxyStack extends HurlExtStack {
    Proxy cnProxy;
    NVContext context;
    boolean isCn;

    public boolean isCn() {
        return this.isCn;
    }

    public ProxyStack(NVContext nVContext) {
        this.context = nVContext;
    }

    @Override // com.narvii.volley.HurlExtStack
    public HttpURLConnection createConnection(URL url) throws IOException {
        return super.createConnection(url);
    }
}
