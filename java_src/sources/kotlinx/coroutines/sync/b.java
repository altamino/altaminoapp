package kotlinx.coroutines.sync;

import e8.l;
import e8.q;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.j3;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p;
import kotlinx.coroutines.r;
import kotlinx.coroutines.s0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public class b extends e implements kotlinx.coroutines.sync.a {

    @NotNull
    private static final AtomicReferenceFieldUpdater owner$FU = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "owner");

    @NotNull
    private final q<kotlinx.coroutines.selects.b<?>, Object, Object, l<Throwable, l0>> onSelectCancellationUnlockConstructor;

    @Nullable
    private volatile Object owner;

    private final class a implements o<l0>, j3 {

        @NotNull
        public final p<l0> cont;

        @Nullable
        public final Object owner;

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$a$a, reason: collision with other inner class name */
        static final class C0455a extends v implements l<Throwable, l0> {
            final /* synthetic */ b this$0;
            final /* synthetic */ a this$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0455a(b bVar, a aVar) {
                super(1);
                this.this$0 = bVar;
                this.this$1 = aVar;
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                invoke2(th);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable th) {
                this.this$0.e(this.this$1.owner);
            }
        }

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$a$b, reason: collision with other inner class name */
        static final class C0456b extends v implements l<Throwable, l0> {
            final /* synthetic */ b this$0;
            final /* synthetic */ a this$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0456b(b bVar, a aVar) {
                super(1);
                this.this$0 = bVar;
                this.this$1 = aVar;
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                invoke2(th);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable th) {
                b.owner$FU.set(this.this$0, this.this$1.owner);
                this.this$0.e(this.this$1.owner);
            }
        }

        @Override // kotlinx.coroutines.o
        public void K(@NotNull Object obj) {
            this.cont.K(obj);
        }

        @Override // kotlinx.coroutines.o
        @Nullable
        public Object M(@NotNull Throwable th) {
            return this.cont.M(th);
        }

        @Override // kotlinx.coroutines.o
        public void S(@NotNull l<? super Throwable, l0> lVar) {
            this.cont.S(lVar);
        }

        @Override // kotlinx.coroutines.j3
        public void a(@NotNull f0<?> f0Var, int i10) {
            this.cont.a(f0Var, i10);
        }

        @Override // kotlinx.coroutines.o
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void V(@NotNull k0 k0Var, @NotNull l0 l0Var) {
            this.cont.V(k0Var, l0Var);
        }

        @Override // kotlinx.coroutines.o
        public boolean e(@Nullable Throwable th) {
            return this.cont.e(th);
        }

        @Override // kotlin.coroutines.d
        @NotNull
        public kotlin.coroutines.g getContext() {
            return this.cont.getContext();
        }

        @Override // kotlinx.coroutines.o
        public boolean isActive() {
            return this.cont.isActive();
        }

        @Override // kotlinx.coroutines.o
        public boolean m() {
            return this.cont.m();
        }

        @Override // kotlin.coroutines.d
        public void resumeWith(@NotNull Object obj) {
            this.cont.resumeWith(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(@Nullable p<? super l0> pVar, Object obj) {
            this.cont = pVar;
            this.owner = obj;
        }

        @Override // kotlinx.coroutines.o
        @Nullable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Object r(@NotNull l0 l0Var, @Nullable Object obj, @Nullable l<? super Throwable, l0> lVar) {
            Object objR = this.cont.r(l0Var, obj, new C0456b(b.this, this));
            if (objR != null) {
                b.owner$FU.set(b.this, this.owner);
            }
            return objR;
        }

        @Override // kotlinx.coroutines.o
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void B(@NotNull l0 l0Var, @Nullable l<? super Throwable, l0> lVar) {
            b.owner$FU.set(b.this, this.owner);
            this.cont.B(l0Var, new C0455a(b.this, this));
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$b, reason: collision with other inner class name */
    static final class C0457b extends v implements q<kotlinx.coroutines.selects.b<?>, Object, Object, l<? super Throwable, ? extends l0>> {

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.b$b$a */
        static final class a extends v implements l<Throwable, l0> {
            final /* synthetic */ Object $owner;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b bVar, Object obj) {
                super(1);
                this.this$0 = bVar;
                this.$owner = obj;
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
                invoke2(th);
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable th) {
                this.this$0.e(this.$owner);
            }
        }

        C0457b() {
            super(3);
        }

        @Override // e8.q
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l<Throwable, l0> invoke(@NotNull kotlinx.coroutines.selects.b<?> bVar, @Nullable Object obj, @Nullable Object obj2) {
            return new a(b.this, obj);
        }
    }

    public b(boolean z6) {
        super(1, z6 ? 1 : 0);
        this.owner = z6 ? null : c.NO_OWNER;
        this.onSelectCancellationUnlockConstructor = new C0457b();
    }

    @Override // kotlinx.coroutines.sync.a
    @Nullable
    public Object d(@Nullable Object obj, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return s(this, obj, dVar);
    }

    @NotNull
    public String toString() {
        return "Mutex@" + s0.b(this) + "[isLocked=" + b() + ",owner=" + owner$FU.get(this) + kotlinx.serialization.json.internal.b.END_LIST;
    }

    private final int r(Object obj) {
        while (b()) {
            Object obj2 = owner$FU.get(this);
            if (obj2 != c.NO_OWNER) {
                if (obj2 == obj) {
                    return 1;
                }
                return 2;
            }
        }
        return 0;
    }

    static /* synthetic */ Object s(b bVar, Object obj, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        if (bVar.a(obj)) {
            return l0.INSTANCE;
        }
        Object objT = bVar.t(obj, dVar);
        if (objT == kotlin.coroutines.intrinsics.d.e()) {
            return objT;
        }
        return l0.INSTANCE;
    }

    private final Object t(Object obj, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        p pVarB = r.b(kotlin.coroutines.intrinsics.c.c(dVar));
        try {
            g(new a(pVarB, obj));
            Object objU = pVarB.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                h.c(dVar);
            }
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                return objU;
            }
            return l0.INSTANCE;
        } catch (Throwable th) {
            pVarB.G();
            throw th;
        }
    }

    private final int u(Object obj) {
        while (!n()) {
            if (obj == null) {
                return 1;
            }
            int iR = r(obj);
            if (iR == 1) {
                return 2;
            }
            if (iR == 2) {
                return 1;
            }
        }
        owner$FU.set(this, obj);
        return 0;
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean a(@Nullable Object obj) {
        int iU = u(obj);
        if (iU == 0) {
            return true;
        }
        if (iU != 1) {
            if (iU != 2) {
                throw new IllegalStateException("unexpected".toString());
            }
            throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean b() {
        if (m() == 0) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.a
    public void e(@Nullable Object obj) {
        while (b()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = owner$FU;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 != c.NO_OWNER) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj2, c.NO_OWNER)) {
                    release();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked".toString());
    }
}
