package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class c implements f, com.bumptech.glide.load.data.d.a<Object> {
    private File cacheFile;
    private final List<com.bumptech.glide.load.g> cacheKeys;
    private final f.a cb;
    private final g<?> helper;
    private volatile com.bumptech.glide.load.model.n.a<?> loadData;
    private int modelLoaderIndex;
    private List<com.bumptech.glide.load.model.n<File, ?>> modelLoaders;
    private int sourceIdIndex;
    private com.bumptech.glide.load.g sourceKey;

    c(g<?> gVar, f.a aVar) {
        this(gVar.c(), gVar, aVar);
    }

    c(List<com.bumptech.glide.load.g> list, g<?> gVar, f.a aVar) {
        this.sourceIdIndex = -1;
        this.cacheKeys = list;
        this.helper = gVar;
        this.cb = aVar;
    }

    private boolean b() {
        return this.modelLoaderIndex < this.modelLoaders.size();
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean a() {
        while (true) {
            boolean z6 = false;
            if (this.modelLoaders != null && b()) {
                this.loadData = null;
                while (!z6 && b()) {
                    List<com.bumptech.glide.load.model.n<File, ?>> list = this.modelLoaders;
                    int i10 = this.modelLoaderIndex;
                    this.modelLoaderIndex = i10 + 1;
                    this.loadData = list.get(i10).a(this.cacheFile, this.helper.s(), this.helper.f(), this.helper.k());
                    if (this.loadData != null && this.helper.t(this.loadData.fetcher.a())) {
                        this.loadData.fetcher.d(this.helper.l(), this);
                        z6 = true;
                    }
                }
                return z6;
            }
            int i11 = this.sourceIdIndex + 1;
            this.sourceIdIndex = i11;
            if (i11 >= this.cacheKeys.size()) {
                return false;
            }
            com.bumptech.glide.load.g gVar = this.cacheKeys.get(this.sourceIdIndex);
            File fileB = this.helper.d().b(new d(gVar, this.helper.o()));
            this.cacheFile = fileB;
            if (fileB != null) {
                this.sourceKey = gVar;
                this.modelLoaders = this.helper.j(fileB);
                this.modelLoaderIndex = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.f
    public void cancel() {
        com.bumptech.glide.load.model.n.a<?> aVar = this.loadData;
        if (aVar != null) {
            aVar.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void e(Object obj) {
        this.cb.d(this.sourceKey, obj, this.loadData.fetcher, com.bumptech.glide.load.a.DATA_DISK_CACHE, this.sourceKey);
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void f(@NonNull Exception exc) {
        this.cb.b(this.sourceKey, exc, this.loadData.fetcher, com.bumptech.glide.load.a.DATA_DISK_CACHE);
    }
}
