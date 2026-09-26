package androidx.constraintlayout.core;

/* JADX INFO: loaded from: classes.dex */
final class Pools {
    private static final boolean DEBUG = false;

    interface Pool<T> {
        T a();

        boolean b(T t5);

        void c(T[] tArr, int i10);
    }

    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        @Override // androidx.constraintlayout.core.Pools.Pool
        public void c(T[] tArr, int i10) {
            if (i10 > tArr.length) {
                i10 = tArr.length;
            }
            for (int i11 = 0; i11 < i10; i11++) {
                T t5 = tArr[i11];
                int i12 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i12 < objArr.length) {
                    objArr[i12] = t5;
                    this.mPoolSize = i12 + 1;
                }
            }
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
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

        @Override // androidx.constraintlayout.core.Pools.Pool
        public boolean b(T t5) {
            int i10 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i10 >= objArr.length) {
                return false;
            }
            objArr[i10] = t5;
            this.mPoolSize = i10 + 1;
            return true;
        }

        SimplePool(int i10) {
            if (i10 > 0) {
                this.mPool = new Object[i10];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
    }

    private Pools() {
    }
}
