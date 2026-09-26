package t7;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class d<T> implements g<T> {

    @NotNull
    public static final b Companion = new b(null);

    @NotNull
    private static final AtomicLongFieldUpdater<d<?>> Top;
    private final int capacity;

    @NotNull
    private final AtomicReferenceArray<T> instances;
    private final int maxIndex;

    @NotNull
    private final int[] next;
    private final int shift;
    private volatile long top;

    public static final class b {
        public /* synthetic */ b(k kVar) {
            this();
        }

        private b() {
        }
    }

    @NotNull
    protected T d(@NotNull T instance) {
        t.j(instance, "instance");
        return instance;
    }

    protected void e(@NotNull T instance) {
        t.j(instance, "instance");
    }

    @NotNull
    protected abstract T k();

    protected void o(@NotNull T instance) {
        t.j(instance, "instance");
    }

    static {
        AtomicLongFieldUpdater<d<?>> atomicLongFieldUpdaterNewUpdater = AtomicLongFieldUpdater.newUpdater(d.class, new a0() { // from class: t7.d.a
            @Override // kotlin.jvm.internal.a0, kotlin.reflect.KProperty1
            @Nullable
            public Object get(@Nullable Object obj) {
                return Long.valueOf(((d) obj).top);
            }

            @Override // kotlin.jvm.internal.a0, kotlin.reflect.KMutableProperty1
            public void set(@Nullable Object obj, @Nullable Object obj2) {
                ((d) obj).top = ((Number) obj2).longValue();
            }
        }.getName());
        t.i(atomicLongFieldUpdaterNewUpdater, "newUpdater(Owner::class.java, p.name)");
        Top = atomicLongFieldUpdaterNewUpdater;
    }

    private final int h() {
        long j6;
        long j10;
        int i10;
        do {
            j6 = this.top;
            if (j6 == 0) {
                return 0;
            }
            j10 = ((j6 >> 32) & 4294967295L) + 1;
            i10 = (int) (4294967295L & j6);
            if (i10 == 0) {
                return 0;
            }
        } while (!Top.compareAndSet(this, j6, (j10 << 32) | ((long) this.next[i10])));
        return i10;
    }

    private final void l(int i10) {
        long j6;
        if (i10 <= 0) {
            throw new IllegalArgumentException("index should be positive".toString());
        }
        do {
            j6 = this.top;
            this.next[i10] = (int) (4294967295L & j6);
        } while (!Top.compareAndSet(this, j6, ((((j6 >> 32) & 4294967295L) + 1) << 32) | ((long) i10)));
    }

    @Override // t7.g
    public final void S(@NotNull T instance) {
        t.j(instance, "instance");
        o(instance);
        if (n(instance)) {
            return;
        }
        e(instance);
    }

    public d(int i10) {
        this.capacity = i10;
        if (i10 > 0) {
            if (i10 <= 536870911) {
                int iHighestOneBit = Integer.highestOneBit((i10 * 4) - 1) * 2;
                this.maxIndex = iHighestOneBit;
                this.shift = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
                this.instances = new AtomicReferenceArray<>(iHighestOneBit + 1);
                this.next = new int[iHighestOneBit + 1];
                return;
            }
            throw new IllegalArgumentException(("capacity should be less or equal to 536870911 but it is " + i10).toString());
        }
        throw new IllegalArgumentException(("capacity should be positive but it is " + i10).toString());
    }

    private final T m() {
        int iH = h();
        if (iH == 0) {
            return null;
        }
        return this.instances.getAndSet(iH, null);
    }

    private final boolean n(T t5) {
        int iIdentityHashCode = ((System.identityHashCode(t5) * (-1640531527)) >>> this.shift) + 1;
        for (int i10 = 0; i10 < 8; i10++) {
            if (c.a(this.instances, iIdentityHashCode, null, t5)) {
                l(iIdentityHashCode);
                return true;
            }
            iIdentityHashCode--;
            if (iIdentityHashCode == 0) {
                iIdentityHashCode = this.maxIndex;
            }
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        g.a.a(this);
    }

    @Override // t7.g
    @NotNull
    public final T s0() {
        T tD;
        T tM = m();
        if (tM == null || (tD = d(tM)) == null) {
            return k();
        }
        return tD;
    }

    @Override // t7.g
    public final void t() {
        while (true) {
            T tM = m();
            if (tM == null) {
                return;
            } else {
                e(tM);
            }
        }
    }
}
