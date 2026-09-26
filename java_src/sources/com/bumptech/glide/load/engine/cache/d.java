package com.bumptech.glide.load.engine.cache;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class d implements com.bumptech.glide.load.engine.cache.a.InterfaceC0121a {
    private final c cacheDirectoryGetter;
    private final long diskCacheSize;

    class a implements c {
        final /* synthetic */ String val$diskCacheFolder;

        a(String str) {
            this.val$diskCacheFolder = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            return new File(this.val$diskCacheFolder);
        }
    }

    class b implements c {
        final /* synthetic */ String val$diskCacheFolder;
        final /* synthetic */ String val$diskCacheName;

        b(String str, String str2) {
            this.val$diskCacheFolder = str;
            this.val$diskCacheName = str2;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            return new File(this.val$diskCacheFolder, this.val$diskCacheName);
        }
    }

    public interface c {
        File a();
    }

    public d(String str, long j6) {
        this(new a(str), j6);
    }

    public d(String str, String str2, long j6) {
        this(new b(str, str2), j6);
    }

    @Override // com.bumptech.glide.load.engine.cache.a.InterfaceC0121a
    public com.bumptech.glide.load.engine.cache.a build() {
        File fileA = this.cacheDirectoryGetter.a();
        if (fileA == null) {
            return null;
        }
        if (fileA.mkdirs() || (fileA.exists() && fileA.isDirectory())) {
            return e.c(fileA, this.diskCacheSize);
        }
        return null;
    }

    public d(c cVar, long j6) {
        this.diskCacheSize = j6;
        this.cacheDirectoryGetter = cVar;
    }
}
