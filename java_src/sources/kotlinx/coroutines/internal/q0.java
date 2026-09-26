package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.internal.r0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class q0<T extends r0 & Comparable<? super T>> {

    @NotNull
    private static final AtomicIntegerFieldUpdater _size$FU = AtomicIntegerFieldUpdater.newUpdater(q0.class, "_size");
    private volatile int _size;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private T[] f3261a;

    @Nullable
    public final T e() {
        T t5;
        synchronized (this) {
            t5 = (T) b();
        }
        return t5;
    }

    public final boolean g(@NotNull T t5) {
        boolean z6;
        synchronized (this) {
            if (t5.c() == null) {
                z6 = false;
            } else {
                h(t5.getIndex());
                z6 = true;
            }
        }
        return z6;
    }

    @Nullable
    public final T i() {
        T t5;
        synchronized (this) {
            t5 = c() > 0 ? (T) h(0) : null;
        }
        return t5;
    }

    private final T[] f() {
        T[] tArr = this.f3261a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new r0[4];
            this.f3261a = tArr2;
            return tArr2;
        }
        if (c() < tArr.length) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, c() * 2);
        kotlin.jvm.internal.t.i(objArrCopyOf, "copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((r0[]) objArrCopyOf);
        this.f3261a = tArr3;
        return tArr3;
    }

    private final void j(int i10) {
        _size$FU.set(this, i10);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
    private final void k(int i10) {
        while (true) {
            int i11 = i10 * 2;
            int i12 = i11 + 1;
            if (i12 >= c()) {
                return;
            }
            T[] tArr = this.f3261a;
            kotlin.jvm.internal.t.g(tArr);
            int i13 = i11 + 2;
            if (i13 < c()) {
                T t5 = tArr[i13];
                kotlin.jvm.internal.t.g(t5);
                T t10 = tArr[i12];
                kotlin.jvm.internal.t.g(t10);
                if (((Comparable) t5).compareTo(t10) >= 0) {
                    i13 = i12;
                }
            } else {
                i13 = i12;
            }
            T t11 = tArr[i10];
            kotlin.jvm.internal.t.g(t11);
            T t12 = tArr[i13];
            kotlin.jvm.internal.t.g(t12);
            if (((Comparable) t11).compareTo(t12) <= 0) {
                return;
            }
            m(i10, i13);
            i10 = i13;
        }
    }

    private final void l(int i10) {
        while (i10 > 0) {
            T[] tArr = this.f3261a;
            kotlin.jvm.internal.t.g(tArr);
            int i11 = (i10 - 1) / 2;
            T t5 = tArr[i11];
            kotlin.jvm.internal.t.g(t5);
            T t10 = tArr[i10];
            kotlin.jvm.internal.t.g(t10);
            if (((Comparable) t5).compareTo(t10) <= 0) {
                return;
            }
            m(i10, i11);
            i10 = i11;
        }
    }

    private final void m(int i10, int i11) {
        T[] tArr = this.f3261a;
        kotlin.jvm.internal.t.g(tArr);
        T t5 = tArr[i11];
        kotlin.jvm.internal.t.g(t5);
        T t10 = tArr[i10];
        kotlin.jvm.internal.t.g(t10);
        tArr[i10] = t5;
        tArr[i11] = t10;
        t5.setIndex(i10);
        t10.setIndex(i11);
    }

    @Nullable
    public final T b() {
        T[] tArr = this.f3261a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int c() {
        return _size$FU.get(this);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    @NotNull
    public final T h(int i10) {
        T[] tArr = this.f3261a;
        kotlin.jvm.internal.t.g(tArr);
        j(c() - 1);
        if (i10 < c()) {
            m(i10, c());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                T t5 = tArr[i10];
                kotlin.jvm.internal.t.g(t5);
                T t10 = tArr[i11];
                kotlin.jvm.internal.t.g(t10);
                if (((Comparable) t5).compareTo(t10) < 0) {
                    m(i10, i11);
                    l(i11);
                } else {
                    k(i10);
                }
            } else {
                k(i10);
            }
        }
        T t11 = tArr[c()];
        kotlin.jvm.internal.t.g(t11);
        t11.a(null);
        t11.setIndex(-1);
        tArr[c()] = null;
        return t11;
    }

    public final void a(@NotNull T t5) {
        t5.a(this);
        r0[] r0VarArrF = f();
        int iC = c();
        j(iC + 1);
        r0VarArrF[iC] = t5;
        t5.setIndex(iC);
        l(iC);
    }

    public final boolean d() {
        if (c() == 0) {
            return true;
        }
        return false;
    }
}
