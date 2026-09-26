package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class w implements f, com.bumptech.glide.load.data.d.a<Object> {
    private File cacheFile;
    private final f.a cb;
    private x currentKey;
    private final g<?> helper;
    private volatile com.bumptech.glide.load.model.n.a<?> loadData;
    private int modelLoaderIndex;
    private List<com.bumptech.glide.load.model.n<File, ?>> modelLoaders;
    private int resourceClassIndex = -1;
    private int sourceIdIndex;
    private com.bumptech.glide.load.g sourceKey;

    private boolean b() {
        return this.modelLoaderIndex < this.modelLoaders.size();
    }

    @Override // com.bumptech.glide.load.engine.f
    public boolean a() {
        List<com.bumptech.glide.load.g> listC = this.helper.c();
        boolean z6 = false;
        if (listC.isEmpty()) {
            return false;
        }
        List<Class<?>> listM = this.helper.m();
        if (listM.isEmpty()) {
            if (File.class.equals(this.helper.q())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.helper.i() + " to " + this.helper.q());
        }
        while (true) {
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
            int i11 = this.resourceClassIndex + 1;
            this.resourceClassIndex = i11;
            if (i11 >= listM.size()) {
                int i12 = this.sourceIdIndex + 1;
                this.sourceIdIndex = i12;
                if (i12 >= listC.size()) {
                    return false;
                }
                this.resourceClassIndex = 0;
            }
            com.bumptech.glide.load.g gVar = listC.get(this.sourceIdIndex);
            Class<?> cls = listM.get(this.resourceClassIndex);
            this.currentKey = new x(this.helper.b(), gVar, this.helper.o(), this.helper.s(), this.helper.f(), this.helper.r(cls), cls, this.helper.k());
            File fileB = this.helper.d().b(this.currentKey);
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
        this.cb.d(this.sourceKey, obj, this.loadData.fetcher, com.bumptech.glide.load.a.RESOURCE_DISK_CACHE, this.currentKey);
    }

    @Override // com.bumptech.glide.load.data.d.a
    public void f(@NonNull Exception exc) {
        this.cb.b(this.currentKey, exc, this.loadData.fetcher, com.bumptech.glide.load.a.RESOURCE_DISK_CACHE);
    }

    w(g<?> gVar, f.a aVar) {
        this.helper = gVar;
        this.cb = aVar;
    }
}
