package androidx.compose.ui.text.caches;

import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.HashMap;
import java.util.LinkedHashSet;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;

    @NotNull
    private final LinkedHashSet<K> keySet;

    @NotNull
    private final HashMap<K, V> map;
    private int maxSize;
    private int missCount;

    @NotNull
    private final SynchronizedObject monitor = Synchronization_jvmKt.a();
    private int putCount;
    private int size;

    @Nullable
    protected V b(K k) {
        return null;
    }

    protected void c(boolean z6, K k, V v5, @Nullable V v6) {
    }

    protected int i(K k, V v5) {
        return 1;
    }

    @Nullable
    public final V d(K k) {
        synchronized (this.monitor) {
            V v5 = this.map.get(k);
            if (v5 != null) {
                this.keySet.remove(k);
                this.keySet.add(k);
                this.hitCount++;
                return v5;
            }
            this.missCount++;
            V vB = b(k);
            if (vB == null) {
                return null;
            }
            synchronized (this.monitor) {
                try {
                    this.createCount++;
                    V vPut = this.map.put(k, vB);
                    this.keySet.remove(k);
                    this.keySet.add(k);
                    if (vPut != null) {
                        this.map.put(k, vPut);
                        v5 = vPut;
                    } else {
                        this.size = h() + g(k, vB);
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (v5 != null) {
                c(false, k, vB, v5);
                return v5;
            }
            j(this.maxSize);
            return vB;
        }
    }

    @Nullable
    public final V e(K k, V v5) {
        V vPut;
        if (k == null || v5 == null) {
            throw null;
        }
        synchronized (this.monitor) {
            try {
                this.putCount++;
                this.size = h() + g(k, v5);
                vPut = this.map.put(k, v5);
                if (vPut != null) {
                    this.size = h() - g(k, vPut);
                }
                if (this.keySet.contains(k)) {
                    this.keySet.remove(k);
                }
                this.keySet.add(k);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (vPut != null) {
            c(false, k, vPut, v5);
        }
        j(this.maxSize);
        return vPut;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(int i10) {
        Object objI0;
        V v5;
        while (true) {
            synchronized (this.monitor) {
                try {
                    if (h() >= 0 && (!this.map.isEmpty() || h() == 0)) {
                        if (this.map.isEmpty() != this.keySet.isEmpty()) {
                            break;
                        }
                        if (h() <= i10 || this.map.isEmpty()) {
                            objI0 = null;
                            v5 = null;
                        } else {
                            objI0 = d0.i0(this.keySet);
                            v5 = this.map.get(objI0);
                            if (v5 == null) {
                                throw new IllegalStateException("inconsistent state");
                            }
                            v0.d(this.map).remove(objI0);
                            v0.a(this.keySet).remove(objI0);
                            int iH = h();
                            t.g(objI0);
                            t.g(v5);
                            this.size = iH - g(objI0, v5);
                            this.evictionCount++;
                        }
                        l0 l0Var = l0.INSTANCE;
                    } else {
                        break;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (objI0 == null && v5 == null) {
                return;
            }
            t.g(objI0);
            t.g(v5);
            c(true, objI0, v5, null);
        }
        throw new IllegalStateException("map/keySet size inconsistency");
    }

    @NotNull
    public String toString() {
        String str;
        synchronized (this.monitor) {
            try {
                int i10 = this.hitCount;
                int i11 = this.missCount + i10;
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i11 != 0 ? (i10 * 100) / i11 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public LruCache(int i10) {
        if (i10 > 0) {
            this.maxSize = i10;
            this.map = new HashMap<>(0, 0.75f);
            this.keySet = new LinkedHashSet<>();
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0".toString());
    }

    private final int g(K k, V v5) {
        int i10 = i(k, v5);
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalStateException(("Negative size: " + k + '=' + v5).toString());
    }

    @Nullable
    public final V f(K k) {
        V vRemove;
        k.getClass();
        synchronized (this.monitor) {
            try {
                vRemove = this.map.remove(k);
                this.keySet.remove(k);
                if (vRemove != null) {
                    this.size = h() - g(k, vRemove);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (vRemove != null) {
            c(false, k, vRemove, null);
        }
        return vRemove;
    }

    public final int h() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.size;
        }
        return i10;
    }
}
