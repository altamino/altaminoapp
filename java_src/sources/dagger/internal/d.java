package dagger.internal;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> implements c<T> {
        final /* synthetic */ v7.a val$provider;

        a(v7.a aVar) {
            this.val$provider = aVar;
        }

        @Override // v7.a
        public T get() {
            return (T) this.val$provider.get();
        }
    }

    public static <T> c<T> a(v7.a<T> aVar) {
        b.b(aVar);
        return new a(aVar);
    }
}
