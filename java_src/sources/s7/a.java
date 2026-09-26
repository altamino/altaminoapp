package s7;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class a extends r7.a {

    @NotNull
    public static final d Companion = new d(null);

    @NotNull
    private static final a Empty;

    @NotNull
    private static final t7.g<a> EmptyPool;

    @NotNull
    private static final t7.g<a> NoPool;

    @NotNull
    private static final t7.g<a> NoPoolManuallyManaged;
    private static final /* synthetic */ AtomicReferenceFieldUpdater nextRef$FU;
    private static final /* synthetic */ AtomicIntegerFieldUpdater refCount$FU;

    @NotNull
    private volatile /* synthetic */ Object nextRef;

    @Nullable
    private a origin;

    @Nullable
    private final t7.g<a> parentPool;

    @NotNull
    private volatile /* synthetic */ int refCount;

    /* JADX INFO: renamed from: s7.a$a, reason: collision with other inner class name */
    public static final class C0496a implements t7.g<a> {
        @Override // t7.g
        public void t() {
        }

        @Override // t7.g
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public a s0() {
            return a.Companion.a();
        }

        @Override // t7.g
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void S(@NotNull a instance) {
            t.j(instance, "instance");
            if (instance != a.Companion.a()) {
                throw new IllegalArgumentException("Only ChunkBuffer.Empty instance could be recycled.".toString());
            }
        }

        C0496a() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            t7.g.a.a(this);
        }
    }

    public static final class b extends t7.f<a> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // t7.g
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public a s0() {
            return new a(p7.b.INSTANCE.b(4096), null, this, 0 == true ? 1 : 0);
        }

        @Override // t7.f, t7.g
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void S(@NotNull a instance) {
            t.j(instance, "instance");
            p7.b.INSTANCE.a(instance.g());
        }

        b() {
        }
    }

    public static final class c extends t7.f<a> {
        @Override // t7.f, t7.g
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void S(@NotNull a instance) {
            t.j(instance, "instance");
        }

        @Override // t7.g
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public a s0() {
            throw new UnsupportedOperationException("This pool doesn't support borrow");
        }

        c() {
        }
    }

    public static final class d {
        public /* synthetic */ d(k kVar) {
            this();
        }

        private d() {
        }

        @NotNull
        public final a a() {
            return a.Empty;
        }

        @NotNull
        public final t7.g<a> b() {
            return a.EmptyPool;
        }

        @NotNull
        public final t7.g<a> c() {
            return r7.c.a();
        }
    }

    public /* synthetic */ a(ByteBuffer byteBuffer, a aVar, t7.g gVar, k kVar) {
        this(byteBuffer, aVar, gVar);
    }

    @Nullable
    public final a y() {
        return this.origin;
    }

    public final int z() {
        return this.refCount;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        C0496a c0496a = new C0496a();
        EmptyPool = c0496a;
        Empty = new a(p7.c.Companion.a(), 0 == true ? 1 : 0, c0496a, 0 == true ? 1 : 0);
        NoPool = new b();
        NoPoolManuallyManaged = new c();
        nextRef$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "nextRef");
        refCount$FU = AtomicIntegerFieldUpdater.newUpdater(a.class, "refCount");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private a(ByteBuffer memory, a aVar, t7.g<a> gVar) {
        super(memory, null);
        t.j(memory, "memory");
        this.parentPool = gVar;
        if (aVar == this) {
            throw new IllegalArgumentException("A chunk couldn't be a view of itself.".toString());
        }
        this.nextRef = null;
        this.refCount = 1;
        this.origin = aVar;
    }

    private final void v(a aVar) {
        if (!androidx.concurrent.futures.a.a(nextRef$FU, this, null, aVar)) {
            throw new IllegalStateException("This chunk has already a next chunk.");
        }
    }

    public void A(@NotNull t7.g<a> pool) {
        t.j(pool, "pool");
        if (B()) {
            a aVar = this.origin;
            if (aVar != null) {
                D();
                aVar.A(pool);
            } else {
                t7.g<a> gVar = this.parentPool;
                if (gVar != null) {
                    pool = gVar;
                }
                pool.S(this);
            }
        }
    }

    public final boolean B() {
        int i10;
        int i11;
        do {
            i10 = this.refCount;
            if (i10 <= 0) {
                throw new IllegalStateException("Unable to release: it is already released.");
            }
            i11 = i10 - 1;
        } while (!refCount$FU.compareAndSet(this, i10, i11));
        return i11 == 0;
    }

    public final void C(@Nullable a aVar) {
        if (aVar == null) {
            w();
        } else {
            v(aVar);
        }
    }

    public final void D() {
        if (!refCount$FU.compareAndSet(this, 0, -1)) {
            throw new IllegalStateException("Unable to unlink: buffer is in use.");
        }
        w();
        this.origin = null;
    }

    public final void E() {
        int i10;
        do {
            i10 = this.refCount;
            if (i10 < 0) {
                throw new IllegalStateException("This instance is already disposed and couldn't be borrowed.");
            }
            if (i10 > 0) {
                throw new IllegalStateException("This instance is already in use but somehow appeared in the pool.");
            }
        } while (!refCount$FU.compareAndSet(this, i10, 1));
    }

    @Override // r7.a
    public final void q() {
        if (this.origin != null) {
            throw new IllegalArgumentException("Unable to reset buffer with origin".toString());
        }
        super.q();
        this.nextRef = null;
    }

    @Nullable
    public final a w() {
        return (a) nextRef$FU.getAndSet(this, null);
    }

    @Nullable
    public final a x() {
        return (a) this.nextRef;
    }
}
