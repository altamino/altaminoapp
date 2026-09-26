package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class Pools {

    public interface Pool<T> {
        @Nullable
        T a();

        boolean b(@NonNull T t5);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        private boolean c(@NonNull T t5) {
            for (int i10 = 0; i10 < this.mPoolSize; i10++) {
                if (this.mPool[i10] == t5) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        public T a() {
            int i10 = this.mPoolSize;
            if (i10 <= 0) {
                return null;
            }
            int i11 = i10 - 1;
            Object[] objArr = this.mPool;
            T t5 = (T) objArr[i11];
            objArr[i11] = null;
            this.mPoolSize = i10 - 1;
            return t5;
        }

        public SimplePool(int i10) {
            if (i10 > 0) {
                this.mPool = new Object[i10];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean b(@NonNull T t5) {
            if (!c(t5)) {
                int i10 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i10 < objArr.length) {
                    objArr[i10] = t5;
                    this.mPoolSize = i10 + 1;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T a() {
            T t5;
            synchronized (this.mLock) {
                t5 = (T) super.a();
            }
            return t5;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean b(@NonNull T t5) {
            boolean zB;
            synchronized (this.mLock) {
                zB = super.b(t5);
            }
            return zB;
        }

        public SynchronizedPool(int i10) {
            super(i10);
            this.mLock = new Object();
        }
    }

    private Pools() {
    }
}
