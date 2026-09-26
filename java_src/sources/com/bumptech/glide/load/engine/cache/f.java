package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes10.dex */
public final class f extends d {

    class a implements d.c {
        final /* synthetic */ Context val$context;
        final /* synthetic */ String val$diskCacheName;

        a(Context context, String str) {
            this.val$context = context;
            this.val$diskCacheName = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            File cacheDir = this.val$context.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.val$diskCacheName != null ? new File(cacheDir, this.val$diskCacheName) : cacheDir;
        }
    }

    public f(Context context) {
        this(context, com.bumptech.glide.load.engine.cache.a.InterfaceC0121a.DEFAULT_DISK_CACHE_DIR, 262144000L);
    }

    public f(Context context, long j6) {
        this(context, com.bumptech.glide.load.engine.cache.a.InterfaceC0121a.DEFAULT_DISK_CACHE_DIR, j6);
    }

    public f(Context context, String str, long j6) {
        super(new a(context, str), j6);
    }
}
