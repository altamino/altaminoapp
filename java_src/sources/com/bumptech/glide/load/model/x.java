package com.bumptech.glide.load.model;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class x<Data> implements n<Uri, Data> {
    private static final Set<String> SCHEMES = Collections.unmodifiableSet(new HashSet(Arrays.asList(ProxyConfig.MATCH_HTTP, ProxyConfig.MATCH_HTTPS)));
    private final n<g, Data> urlLoader;

    public static class a implements o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> b(r rVar) {
            return new x(rVar.d(g.class, InputStream.class));
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(@NonNull Uri uri, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return this.urlLoader.a(new g(uri.toString()), i10, i11, iVar);
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull Uri uri) {
        return SCHEMES.contains(uri.getScheme());
    }

    public x(n<g, Data> nVar) {
        this.urlLoader = nVar;
    }
}
