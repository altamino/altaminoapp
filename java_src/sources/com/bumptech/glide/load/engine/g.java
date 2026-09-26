package com.bumptech.glide.load.engine;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class g<Transcode> {
    private h.e diskCacheProvider;
    private j diskCacheStrategy;
    private com.bumptech.glide.d glideContext;
    private int height;
    private boolean isCacheKeysSet;
    private boolean isLoadDataSet;
    private boolean isScaleOnlyOrNoTransform;
    private boolean isTransformationRequired;
    private Object model;
    private com.bumptech.glide.load.i options;
    private com.bumptech.glide.f priority;
    private Class<?> resourceClass;
    private com.bumptech.glide.load.g signature;
    private Class<Transcode> transcodeClass;
    private Map<Class<?>, com.bumptech.glide.load.m<?>> transformations;
    private int width;
    private final List<com.bumptech.glide.load.model.n.a<?>> loadData = new ArrayList();
    private final List<com.bumptech.glide.load.g> cacheKeys = new ArrayList();

    void a() {
        this.glideContext = null;
        this.model = null;
        this.signature = null;
        this.resourceClass = null;
        this.transcodeClass = null;
        this.options = null;
        this.priority = null;
        this.transformations = null;
        this.diskCacheStrategy = null;
        this.loadData.clear();
        this.isLoadDataSet = false;
        this.cacheKeys.clear();
        this.isCacheKeysSet = false;
    }

    j e() {
        return this.diskCacheStrategy;
    }

    int f() {
        return this.height;
    }

    com.bumptech.glide.load.i k() {
        return this.options;
    }

    com.bumptech.glide.f l() {
        return this.priority;
    }

    com.bumptech.glide.load.g o() {
        return this.signature;
    }

    Class<?> q() {
        return this.transcodeClass;
    }

    int s() {
        return this.width;
    }

    /* JADX WARN: Multi-variable type inference failed */
    <R> void u(com.bumptech.glide.d dVar, Object obj, com.bumptech.glide.load.g gVar, int i10, int i11, j jVar, Class<?> cls, Class<R> cls2, com.bumptech.glide.f fVar, com.bumptech.glide.load.i iVar, Map<Class<?>, com.bumptech.glide.load.m<?>> map, boolean z6, boolean z10, h.e eVar) {
        this.glideContext = dVar;
        this.model = obj;
        this.signature = gVar;
        this.width = i10;
        this.height = i11;
        this.diskCacheStrategy = jVar;
        this.resourceClass = cls;
        this.diskCacheProvider = eVar;
        this.transcodeClass = cls2;
        this.priority = fVar;
        this.options = iVar;
        this.transformations = map;
        this.isTransformationRequired = z6;
        this.isScaleOnlyOrNoTransform = z10;
    }

    boolean w() {
        return this.isScaleOnlyOrNoTransform;
    }

    com.bumptech.glide.load.engine.bitmap_recycle.b b() {
        return this.glideContext.a();
    }

    List<com.bumptech.glide.load.g> c() {
        if (!this.isCacheKeysSet) {
            this.isCacheKeysSet = true;
            this.cacheKeys.clear();
            List<com.bumptech.glide.load.model.n.a<?>> listG = g();
            int size = listG.size();
            for (int i10 = 0; i10 < size; i10++) {
                com.bumptech.glide.load.model.n.a<?> aVar = listG.get(i10);
                if (!this.cacheKeys.contains(aVar.sourceKey)) {
                    this.cacheKeys.add(aVar.sourceKey);
                }
                for (int i11 = 0; i11 < aVar.alternateKeys.size(); i11++) {
                    if (!this.cacheKeys.contains(aVar.alternateKeys.get(i11))) {
                        this.cacheKeys.add(aVar.alternateKeys.get(i11));
                    }
                }
            }
        }
        return this.cacheKeys;
    }

    com.bumptech.glide.load.engine.cache.a d() {
        return this.diskCacheProvider.a();
    }

    List<com.bumptech.glide.load.model.n.a<?>> g() {
        if (!this.isLoadDataSet) {
            this.isLoadDataSet = true;
            this.loadData.clear();
            List listI = this.glideContext.g().i(this.model);
            int size = listI.size();
            for (int i10 = 0; i10 < size; i10++) {
                com.bumptech.glide.load.model.n.a<?> aVarA = ((com.bumptech.glide.load.model.n) listI.get(i10)).a(this.model, this.width, this.height, this.options);
                if (aVarA != null) {
                    this.loadData.add(aVarA);
                }
            }
        }
        return this.loadData;
    }

    <Data> t<Data, ?, Transcode> h(Class<Data> cls) {
        return this.glideContext.g().h(cls, this.resourceClass, this.transcodeClass);
    }

    Class<?> i() {
        return this.model.getClass();
    }

    List<com.bumptech.glide.load.model.n<File, ?>> j(File file) throws com.bumptech.glide.h.c {
        return this.glideContext.g().i(file);
    }

    List<Class<?>> m() {
        return this.glideContext.g().j(this.model.getClass(), this.resourceClass, this.transcodeClass);
    }

    <Z> com.bumptech.glide.load.l<Z> n(v<Z> vVar) {
        return this.glideContext.g().k(vVar);
    }

    <X> com.bumptech.glide.load.d<X> p(X x6) throws com.bumptech.glide.h.e {
        return this.glideContext.g().m(x6);
    }

    <Z> com.bumptech.glide.load.m<Z> r(Class<Z> cls) {
        com.bumptech.glide.load.m<Z> mVar = (com.bumptech.glide.load.m) this.transformations.get(cls);
        if (mVar == null) {
            for (Map.Entry<Class<?>, com.bumptech.glide.load.m<?>> entry : this.transformations.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    mVar = (com.bumptech.glide.load.m) entry.getValue();
                    break;
                }
            }
        }
        if (mVar != null) {
            return mVar;
        }
        if (!this.transformations.isEmpty() || !this.isTransformationRequired) {
            return com.bumptech.glide.load.resource.l.c();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    boolean v(v<?> vVar) {
        return this.glideContext.g().n(vVar);
    }

    g() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean t(Class<?> cls) {
        if (h(cls) != null) {
            return true;
        }
        return false;
    }

    boolean x(com.bumptech.glide.load.g gVar) {
        List<com.bumptech.glide.load.model.n.a<?>> listG = g();
        int size = listG.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (listG.get(i10).sourceKey.equals(gVar)) {
                return true;
            }
        }
        return false;
    }
}
