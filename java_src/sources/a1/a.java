package a1;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final int DEFAULT_POOL_SIZE = 20;
    private static final g<Object> EMPTY_RESETTER = new C0002a();
    private static final String TAG = "FactoryPools";

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> implements d<List<T>> {
        @Override // a1.a.d
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<T> a() {
            return new ArrayList();
        }

        b() {
        }
    }

    public interface d<T> {
        T a();
    }

    private static final class e<T> implements Pools.Pool<T> {
        private final d<T> factory;
        private final Pools.Pool<T> pool;
        private final g<T> resetter;

        @Override // androidx.core.util.Pools.Pool
        public T a() {
            T tA = this.pool.a();
            if (tA == null) {
                tA = this.factory.a();
                if (Log.isLoggable(a.TAG, 2)) {
                    Log.v(a.TAG, "Created new " + tA.getClass());
                }
            }
            if (tA instanceof f) {
                ((f) tA).e().b(false);
            }
            return tA;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean b(@NonNull T t5) {
            if (t5 instanceof f) {
                ((f) t5).e().b(true);
            }
            this.resetter.a(t5);
            return this.pool.b(t5);
        }

        e(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
            this.pool = pool;
            this.factory = dVar;
            this.resetter = gVar;
        }
    }

    public interface f {
        @NonNull
        a1.c e();
    }

    public interface g<T> {
        void a(@NonNull T t5);
    }

    @NonNull
    private static <T> g<T> c() {
        return (g<T>) EMPTY_RESETTER;
    }

    /* JADX INFO: renamed from: a1.a$a, reason: collision with other inner class name */
    class C0002a implements g<Object> {
        @Override // a1.a.g
        public void a(@NonNull Object obj) {
        }

        C0002a() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> implements g<List<T>> {
        c() {
        }

        @Override // a1.a.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull List<T> list) {
            list.clear();
        }
    }

    @NonNull
    private static <T> Pools.Pool<T> b(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar, @NonNull g<T> gVar) {
        return new e(pool, dVar, gVar);
    }

    @NonNull
    public static <T extends f> Pools.Pool<T> d(int i10, @NonNull d<T> dVar) {
        return a(new Pools.SynchronizedPool(i10), dVar);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> e() {
        return f(20);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> f(int i10) {
        return b(new Pools.SynchronizedPool(i10), new b(), new c());
    }

    @NonNull
    private static <T extends f> Pools.Pool<T> a(@NonNull Pools.Pool<T> pool, @NonNull d<T> dVar) {
        return b(pool, dVar, c());
    }
}
