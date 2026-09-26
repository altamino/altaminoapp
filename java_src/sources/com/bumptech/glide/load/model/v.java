package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class v<Model> implements n<Model, Model> {
    private static final v<?> INSTANCE = new v<>();

    private static class b<Model> implements com.bumptech.glide.load.data.d<Model> {
        private final Model resource;

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Model> a() {
            return (Class<Model>) this.resource.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super Model> aVar) {
            aVar.e(this.resource);
        }

        b(Model model) {
            this.resource = model;
        }
    }

    public static <T> v<T> c() {
        return (v<T>) INSTANCE;
    }

    @Override // com.bumptech.glide.load.model.n
    public boolean b(@NonNull Model model) {
        return true;
    }

    public static class a<Model> implements o<Model, Model> {
        private static final a<?> FACTORY = new a<>();

        public static <T> a<T> a() {
            return (a<T>) FACTORY;
        }

        @Deprecated
        public a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Model, Model> b(r rVar) {
            return v.c();
        }
    }

    @Override // com.bumptech.glide.load.model.n
    public n.a<Model> a(@NonNull Model model, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(model), new b(model));
    }

    @Deprecated
    public v() {
    }
}
