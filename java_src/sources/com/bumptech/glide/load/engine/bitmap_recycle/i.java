package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes11.dex */
public final class i implements com.bumptech.glide.load.engine.bitmap_recycle.b {
    private static final int DEFAULT_SIZE = 4194304;

    @VisibleForTesting
    static final int MAX_OVER_SIZE_MULTIPLE = 8;
    private static final int SINGLE_ARRAY_MAX_SIZE_DIVISOR = 2;
    private final Map<Class<?>, com.bumptech.glide.load.engine.bitmap_recycle.a<?>> adapters;
    private int currentSize;
    private final g<a, Object> groupedMap;
    private final b keyPool;
    private final int maxSize;
    private final Map<Class<?>, NavigableMap<Integer, Integer>> sortedSizes;

    private static final class a implements l {
        private Class<?> arrayClass;
        private final b pool;
        int size;

        void b(int i10, Class<?> cls) {
            this.size = i10;
            this.arrayClass = cls;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
        public void a() {
            this.pool.c(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.size == aVar.size && this.arrayClass == aVar.arrayClass;
        }

        public int hashCode() {
            int i10 = this.size * 31;
            Class<?> cls = this.arrayClass;
            return i10 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.size + "array=" + this.arrayClass + kotlinx.serialization.json.internal.b.END_OBJ;
        }

        a(b bVar) {
            this.pool = bVar;
        }
    }

    private static final class b extends c<a> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public a a() {
            return new a(this);
        }

        b() {
        }

        a e(int i10, Class<?> cls) {
            a aVarB = b();
            aVarB.b(i10, cls);
            return aVarB;
        }
    }

    @VisibleForTesting
    public i() {
        this.groupedMap = new g<>();
        this.keyPool = new b();
        this.sortedSizes = new HashMap();
        this.adapters = new HashMap();
        this.maxSize = 4194304;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized void a(int i10) {
        try {
            if (i10 >= 40) {
                b();
            } else if (i10 >= 20 || i10 == 15) {
                h(this.maxSize / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized void b() {
        h(0);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized <T> T c(int i10, Class<T> cls) {
        Integer numCeilingKey;
        try {
            numCeilingKey = m(cls).ceilingKey(Integer.valueOf(i10));
        } catch (Throwable th) {
            throw th;
        }
        return (T) l(p(i10, numCeilingKey) ? this.keyPool.e(numCeilingKey.intValue(), cls) : this.keyPool.e(i10, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized <T> T d(int i10, Class<T> cls) {
        return (T) l(this.keyPool.e(i10, cls), cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.b
    public synchronized <T> void e(T t5) {
        Class<?> cls = t5.getClass();
        com.bumptech.glide.load.engine.bitmap_recycle.a<T> aVarJ = j(cls);
        int iA = aVarJ.a(t5);
        int iB = aVarJ.b() * iA;
        if (o(iB)) {
            a aVarE = this.keyPool.e(iA, cls);
            this.groupedMap.d(aVarE, t5);
            NavigableMap<Integer, Integer> navigableMapM = m(cls);
            Integer num = navigableMapM.get(Integer.valueOf(aVarE.size));
            Integer numValueOf = Integer.valueOf(aVarE.size);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapM.put(numValueOf, Integer.valueOf(iIntValue));
            this.currentSize += iB;
            g();
        }
    }

    private void g() {
        h(this.maxSize);
    }

    private void h(int i10) {
        while (this.currentSize > i10) {
            Object objF = this.groupedMap.f();
            com.bumptech.glide.util.j.d(objF);
            com.bumptech.glide.load.engine.bitmap_recycle.a aVarI = i(objF);
            this.currentSize -= aVarI.a(objF) * aVarI.b();
            f(aVarI.a(objF), objF.getClass());
            if (Log.isLoggable(aVarI.getTag(), 2)) {
                Log.v(aVarI.getTag(), "evicted: " + aVarI.a(objF));
            }
        }
    }

    private <T> com.bumptech.glide.load.engine.bitmap_recycle.a<T> j(Class<T> cls) {
        com.bumptech.glide.load.engine.bitmap_recycle.a<T> fVar = (com.bumptech.glide.load.engine.bitmap_recycle.a) this.adapters.get(cls);
        if (fVar == null) {
            if (cls.equals(int[].class)) {
                fVar = new h();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
                }
                fVar = new f();
            }
            this.adapters.put(cls, fVar);
        }
        return fVar;
    }

    @Nullable
    private <T> T k(a aVar) {
        return (T) this.groupedMap.a(aVar);
    }

    private NavigableMap<Integer, Integer> m(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.sortedSizes.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.sortedSizes.put(cls, treeMap);
        return treeMap;
    }

    private boolean n() {
        int i10 = this.currentSize;
        return i10 == 0 || this.maxSize / i10 >= 2;
    }

    private boolean o(int i10) {
        return i10 <= this.maxSize / 2;
    }

    private boolean p(int i10, Integer num) {
        return num != null && (n() || num.intValue() <= i10 * 8);
    }

    private void f(int i10, Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMapM = m(cls);
        Integer num = navigableMapM.get(Integer.valueOf(i10));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapM.remove(Integer.valueOf(i10));
                return;
            } else {
                navigableMapM.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i10 + ", this: " + this);
    }

    private <T> com.bumptech.glide.load.engine.bitmap_recycle.a<T> i(T t5) {
        return j(t5.getClass());
    }

    private <T> T l(a aVar, Class<T> cls) {
        com.bumptech.glide.load.engine.bitmap_recycle.a<T> aVarJ = j(cls);
        T t5 = (T) k(aVar);
        if (t5 != null) {
            this.currentSize -= aVarJ.a(t5) * aVarJ.b();
            f(aVarJ.a(t5), cls);
        }
        if (t5 == null) {
            if (Log.isLoggable(aVarJ.getTag(), 2)) {
                Log.v(aVarJ.getTag(), "Allocated " + aVar.size + " bytes");
            }
            return aVarJ.newArray(aVar.size);
        }
        return t5;
    }

    public i(int i10) {
        this.groupedMap = new g<>();
        this.keyPool = new b();
        this.sortedSizes = new HashMap();
        this.adapters = new HashMap();
        this.maxSize = i10;
    }
}
