package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class v<E> {
    public static final int ADD_CLOSED = 2;
    public static final int ADD_FROZEN = 1;
    public static final int ADD_SUCCESS = 0;
    public static final int CAPACITY_BITS = 30;
    public static final long CLOSED_MASK = 2305843009213693952L;
    public static final int CLOSED_SHIFT = 61;
    public static final long FROZEN_MASK = 1152921504606846976L;
    public static final int FROZEN_SHIFT = 60;
    public static final long HEAD_MASK = 1073741823;
    public static final int HEAD_SHIFT = 0;
    public static final int INITIAL_CAPACITY = 8;
    public static final int MAX_CAPACITY_MASK = 1073741823;
    public static final int MIN_ADD_SPIN_CAPACITY = 1024;
    public static final long TAIL_MASK = 1152921503533105152L;
    public static final int TAIL_SHIFT = 30;

    @Nullable
    private volatile Object _next;
    private volatile long _state;

    @NotNull
    private final AtomicReferenceArray array;
    private final int capacity;
    private final int mask;
    private final boolean singleConsumer;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(v.class, Object.class, "_next");

    @NotNull
    private static final AtomicLongFieldUpdater _state$FU = AtomicLongFieldUpdater.newUpdater(v.class, "_state");

    @NotNull
    public static final i0 REMOVE_FROZEN = new i0("REMOVE_FROZEN");

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        public final int a(long j6) {
            return (j6 & v.CLOSED_MASK) != 0 ? 2 : 1;
        }

        public final long d(long j6, long j10) {
            return j6 & (~j10);
        }

        private a() {
        }

        public final long b(long j6, int i10) {
            return d(j6, v.HEAD_MASK) | ((long) i10);
        }

        public final long c(long j6, int i10) {
            return d(j6, v.TAIL_MASK) | (((long) i10) << 30);
        }
    }

    public static final class b {
        public final int index;

        public b(int i10) {
            this.index = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final v<E> b(long j6) {
        v<E> vVar = new v<>(this.capacity * 2, this.singleConsumer);
        int i10 = (int) (HEAD_MASK & j6);
        int i11 = (int) ((TAIL_MASK & j6) >> 30);
        while (true) {
            int i12 = this.mask;
            if ((i10 & i12) == (i11 & i12)) {
                _state$FU.set(vVar, Companion.d(j6, FROZEN_MASK));
                return vVar;
            }
            Object bVar = this.array.get(i12 & i10);
            if (bVar == null) {
                bVar = new b(i10);
            }
            vVar.array.set(vVar.mask & i10, bVar);
            i10++;
        }
    }

    private final v<E> c(long j6) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _next$FU;
        while (true) {
            v<E> vVar = (v) atomicReferenceFieldUpdater.get(this);
            if (vVar != null) {
                return vVar;
            }
            androidx.concurrent.futures.a.a(_next$FU, this, null, b(j6));
        }
    }

    private final v<E> e(int i10, E e) {
        Object obj = this.array.get(this.mask & i10);
        if (!(obj instanceof b) || ((b) obj).index != i10) {
            return null;
        }
        this.array.set(i10 & this.mask, e);
        return this;
    }

    private final long h() {
        long j6;
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            if ((j6 & FROZEN_MASK) != 0) {
                return j6;
            }
            j10 = j6 | FROZEN_MASK;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j6, j10));
        return j10;
    }

    private final v<E> k(int i10, int i11) {
        long j6;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            i12 = (int) (HEAD_MASK & j6);
            if ((FROZEN_MASK & j6) != 0) {
                return i();
            }
        } while (!_state$FU.compareAndSet(this, j6, Companion.b(j6, i11)));
        this.array.set(this.mask & i12, null);
        return null;
    }

    public final int a(@NotNull E e) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$FU;
        while (true) {
            long j6 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j6) != 0) {
                return Companion.a(j6);
            }
            int i10 = (int) (HEAD_MASK & j6);
            int i11 = (int) ((TAIL_MASK & j6) >> 30);
            int i12 = this.mask;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.singleConsumer && this.array.get(i11 & i12) != null) {
                int i13 = this.capacity;
                if (i13 < 1024 || ((i11 - i10) & MAX_CAPACITY_MASK) > (i13 >> 1)) {
                    return 1;
                }
            } else if (_state$FU.compareAndSet(this, j6, Companion.c(j6, (i11 + 1) & MAX_CAPACITY_MASK))) {
                this.array.set(i11 & i12, e);
                v<E> vVarE = this;
                while ((_state$FU.get(vVarE) & FROZEN_MASK) != 0 && (vVarE = vVarE.i().e(i11, e)) != null) {
                }
                return 0;
            }
        }
    }

    public final boolean d() {
        long j6;
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            if ((j6 & CLOSED_MASK) != 0) {
                return true;
            }
            if ((FROZEN_MASK & j6) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j6, j6 | CLOSED_MASK));
        return true;
    }

    public final int f() {
        long j6 = _state$FU.get(this);
        return (((int) ((j6 & TAIL_MASK) >> 30)) - ((int) (HEAD_MASK & j6))) & MAX_CAPACITY_MASK;
    }

    public final boolean g() {
        long j6 = _state$FU.get(this);
        return ((int) (HEAD_MASK & j6)) == ((int) ((j6 & TAIL_MASK) >> 30));
    }

    @Nullable
    public final Object j() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = _state$FU;
        while (true) {
            long j6 = atomicLongFieldUpdater.get(this);
            if ((FROZEN_MASK & j6) != 0) {
                return REMOVE_FROZEN;
            }
            int i10 = (int) (HEAD_MASK & j6);
            int i11 = (int) ((TAIL_MASK & j6) >> 30);
            int i12 = this.mask;
            if ((i11 & i12) == (i10 & i12)) {
                return null;
            }
            Object obj = this.array.get(i12 & i10);
            if (obj == null) {
                if (this.singleConsumer) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i13 = (i10 + 1) & MAX_CAPACITY_MASK;
                if (_state$FU.compareAndSet(this, j6, Companion.b(j6, i13))) {
                    this.array.set(this.mask & i10, null);
                    return obj;
                }
                if (this.singleConsumer) {
                    v<E> vVarK = this;
                    do {
                        vVarK = vVarK.k(i10, i13);
                    } while (vVarK != null);
                    return obj;
                }
            }
        }
    }

    public v(int i10, boolean z6) {
        this.capacity = i10;
        this.singleConsumer = z6;
        int i11 = i10 - 1;
        this.mask = i11;
        this.array = new AtomicReferenceArray(i10);
        if (i11 <= 1073741823) {
            if ((i10 & i11) == 0) {
                return;
            } else {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @NotNull
    public final v<E> i() {
        return c(h());
    }
}
