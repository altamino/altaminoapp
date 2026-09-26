package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class g implements com.bumptech.glide.load.g {
    private static final String ALLOWED_URI_CHARS = "@#&=*+-_.,:!?()/~'%;$";

    @Nullable
    private volatile byte[] cacheKeyBytes;
    private int hashCode;
    private final h headers;

    @Nullable
    private String safeStringUrl;

    @Nullable
    private URL safeUrl;

    @Nullable
    private final String stringUrl;

    @Nullable
    private final URL url;

    public g(URL url) {
        this(url, h.DEFAULT);
    }

    public g(String str) {
        this(str, h.DEFAULT);
    }

    private byte[] d() {
        if (this.cacheKeyBytes == null) {
            this.cacheKeyBytes = c().getBytes(com.bumptech.glide.load.g.CHARSET);
        }
        return this.cacheKeyBytes;
    }

    private String f() {
        if (TextUtils.isEmpty(this.safeStringUrl)) {
            String string = this.stringUrl;
            if (TextUtils.isEmpty(string)) {
                string = ((URL) com.bumptech.glide.util.j.d(this.url)).toString();
            }
            this.safeStringUrl = Uri.encode(string, ALLOWED_URI_CHARS);
        }
        return this.safeStringUrl;
    }

    private URL g() throws MalformedURLException {
        if (this.safeUrl == null) {
            this.safeUrl = new URL(f());
        }
        return this.safeUrl;
    }

    public String c() {
        String str = this.stringUrl;
        return str != null ? str : ((URL) com.bumptech.glide.util.j.d(this.url)).toString();
    }

    public Map<String, String> e() {
        return this.headers.getHeaders();
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return c().equals(gVar.c()) && this.headers.equals(gVar.headers);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        if (this.hashCode == 0) {
            int iHashCode = c().hashCode();
            this.hashCode = iHashCode;
            this.hashCode = (iHashCode * 31) + this.headers.hashCode();
        }
        return this.hashCode;
    }

    public g(URL url, h hVar) {
        this.url = (URL) com.bumptech.glide.util.j.d(url);
        this.stringUrl = null;
        this.headers = (h) com.bumptech.glide.util.j.d(hVar);
    }

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(d());
    }

    public URL h() throws MalformedURLException {
        return g();
    }

    public String toString() {
        return c();
    }

    public g(String str, h hVar) {
        this.url = null;
        this.stringUrl = com.bumptech.glide.util.j.b(str);
        this.headers = (h) com.bumptech.glide.util.j.d(hVar);
    }
}
