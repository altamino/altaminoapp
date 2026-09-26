package kotlinx.coroutines.selects;

import e8.l;
import e8.q;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.collections.d0;
import kotlin.collections.u;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.j3;
import kotlinx.coroutines.m;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public class a<R> extends m implements b, j3 {

    @NotNull
    private static final AtomicReferenceFieldUpdater state$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "state");

    @NotNull
    private final g context;

    @Nullable
    private Object disposableHandleOrSegment;

    @Nullable
    private volatile Object state = c.STATE_REG;

    @Nullable
    private List<a<R>.C0453a> clauses = new ArrayList(2);
    private int indexInSegment = -1;

    @Nullable
    private Object internalResult = c.NO_RESULT;

    /* JADX INFO: renamed from: kotlinx.coroutines.selects.a$a, reason: collision with other inner class name */
    public final class C0453a {

        @NotNull
        private final Object block;

        @NotNull
        public final Object clauseObject;

        @Nullable
        public Object disposableHandleOrSegment;
        public int indexInSegment = -1;

        @Nullable
        public final q<b<?>, Object, Object, l<Throwable, l0>> onCancellationConstructor;

        @Nullable
        private final Object param;

        @NotNull
        private final q<Object, Object, Object, Object> processResFunc;

        @NotNull
        private final q<Object, b<?>, Object, l0> regFunc;

        /* JADX WARN: Multi-variable type inference failed */
        public C0453a(@NotNull Object obj, @NotNull q<Object, ? super b<?>, Object, l0> qVar, @Nullable q<Object, Object, Object, ? extends Object> qVar2, @NotNull Object obj2, @Nullable Object obj3, q<? super b<?>, Object, Object, ? extends l<? super Throwable, l0>> qVar3) {
            this.clauseObject = obj;
            this.regFunc = qVar;
            this.processResFunc = qVar2;
            this.param = obj2;
            this.block = obj3;
            this.onCancellationConstructor = qVar3;
        }

        @Nullable
        public final l<Throwable, l0> a(@NotNull b<?> bVar, @Nullable Object obj) {
            q<b<?>, Object, Object, l<Throwable, l0>> qVar = this.onCancellationConstructor;
            if (qVar != null) {
                return qVar.invoke(bVar, this.param, obj);
            }
            return null;
        }

        public final void b() {
            Object obj = this.disposableHandleOrSegment;
            a<R> aVar = a.this;
            if (obj instanceof f0) {
                ((f0) obj).o(this.indexInSegment, null, aVar.getContext());
                return;
            }
            g1 g1Var = obj instanceof g1 ? (g1) obj : null;
            if (g1Var != null) {
                g1Var.t();
            }
        }
    }

    @Override // kotlinx.coroutines.j3
    public void a(@NotNull f0<?> f0Var, int i10) {
        this.disposableHandleOrSegment = f0Var;
        this.indexInSegment = i10;
    }

    @Override // kotlinx.coroutines.selects.b
    public void b(@Nullable Object obj) {
        this.internalResult = obj;
    }

    @Override // kotlinx.coroutines.selects.b
    @NotNull
    public g getContext() {
        return this.context;
    }

    private final a<R>.C0453a e(Object obj) {
        List<a<R>.C0453a> list = this.clauses;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        for (Object obj3 : list) {
            if (((C0453a) obj3).clauseObject == obj) {
                obj2 = obj3;
                break;
            }
        }
        a<R>.C0453a c0453a = (C0453a) obj2;
        if (c0453a != null) {
            return c0453a;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    private final int g(Object obj, Object obj2) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = state$FU;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof o) {
                a<R>.C0453a c0453aE = e(obj);
                if (c0453aE == null) {
                    continue;
                } else {
                    l<Throwable, l0> lVarA = c0453aE.a(this, obj2);
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, c0453aE)) {
                        this.internalResult = obj2;
                        if (c.h((o) obj3, lVarA)) {
                            return 0;
                        }
                        this.internalResult = null;
                        return 2;
                    }
                }
            } else {
                if (t.e(obj3, c.STATE_COMPLETED) || (obj3 instanceof C0453a)) {
                    return 3;
                }
                if (t.e(obj3, c.STATE_CANCELLED)) {
                    return 2;
                }
                if (t.e(obj3, c.STATE_REG)) {
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, u.e(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj3, d0.E0((Collection) obj3, obj))) {
                        return 1;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.n
    public void d(@Nullable Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = state$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == c.STATE_COMPLETED) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, c.STATE_CANCELLED));
        List<a<R>.C0453a> list = this.clauses;
        if (list == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((C0453a) it.next()).b();
        }
        this.internalResult = c.NO_RESULT;
        this.clauses = null;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        d(th);
        return l0.INSTANCE;
    }

    public a(@NotNull g gVar) {
        this.context = gVar;
    }

    @Override // kotlinx.coroutines.selects.b
    public boolean c(@NotNull Object obj, @Nullable Object obj2) {
        if (g(obj, obj2) == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final d f(@NotNull Object obj, @Nullable Object obj2) {
        return c.a(g(obj, obj2));
    }
}
