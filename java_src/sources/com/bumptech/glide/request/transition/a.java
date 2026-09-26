package com.bumptech.glide.request.transition;

/* JADX INFO: loaded from: classes9.dex */
public class a<R> implements b<R> {
    static final a<?> NO_ANIMATION = new a<>();
    private static final c<?> NO_ANIMATION_FACTORY = new C0138a();

    /* JADX INFO: renamed from: com.bumptech.glide.request.transition.a$a, reason: collision with other inner class name */
    public static class C0138a<R> implements c<R> {
        @Override // com.bumptech.glide.request.transition.c
        public b<R> a(com.bumptech.glide.load.a aVar, boolean z6) {
            return a.NO_ANIMATION;
        }
    }

    public static <R> c<R> a() {
        return (c<R>) NO_ANIMATION_FACTORY;
    }
}
