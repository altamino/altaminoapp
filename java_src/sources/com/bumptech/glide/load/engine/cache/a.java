package com.bumptech.glide.load.engine.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.cache.a$a, reason: collision with other inner class name */
    public interface InterfaceC0121a {
        public static final String DEFAULT_DISK_CACHE_DIR = "image_manager_disk_cache";
        public static final int DEFAULT_DISK_CACHE_SIZE = 262144000;

        @Nullable
        a build();
    }

    public interface b {
        boolean a(@NonNull File file);
    }

    void a(com.bumptech.glide.load.g gVar, b bVar);

    @Nullable
    File b(com.bumptech.glide.load.g gVar);
}
