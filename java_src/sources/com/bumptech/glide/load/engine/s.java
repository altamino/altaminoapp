package com.bumptech.glide.load.engine;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class s {
    private final Map<com.bumptech.glide.load.g, l<?>> jobs = new HashMap();
    private final Map<com.bumptech.glide.load.g, l<?>> onlyCacheJobs = new HashMap();

    private Map<com.bumptech.glide.load.g, l<?>> b(boolean z6) {
        return z6 ? this.onlyCacheJobs : this.jobs;
    }

    s() {
    }

    l<?> a(com.bumptech.glide.load.g gVar, boolean z6) {
        return b(z6).get(gVar);
    }

    void c(com.bumptech.glide.load.g gVar, l<?> lVar) {
        b(lVar.p()).put(gVar, lVar);
    }

    void d(com.bumptech.glide.load.g gVar, l<?> lVar) {
        Map<com.bumptech.glide.load.g, l<?>> mapB = b(lVar.p());
        if (lVar.equals(mapB.get(gVar))) {
            mapB.remove(gVar);
        }
    }
}
