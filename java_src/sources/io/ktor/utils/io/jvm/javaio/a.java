package io.ktor.utils.io.jvm.javaio;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.v0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.n1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
abstract class a {
    static final /* synthetic */ AtomicReferenceFieldUpdater state$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "state");

    @Nullable
    private final g1 disposable;

    @NotNull
    private final kotlin.coroutines.d<l0> end;
    private int length;
    private int offset;

    @Nullable
    private final b2 parent;

    @NotNull
    volatile /* synthetic */ int result;

    @NotNull
    volatile /* synthetic */ Object state;

    /* JADX INFO: renamed from: io.ktor.utils.io.jvm.javaio.a$a, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.jvm.javaio.BlockingAdapter$block$1", f = "Blocking.kt", l = {186}, m = "invokeSuspend")
    static final class C0417a extends l implements e8.l<kotlin.coroutines.d<? super l0>, Object> {
        int label;

        C0417a(kotlin.coroutines.d<? super C0417a> dVar) {
            super(1, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@NotNull kotlin.coroutines.d<?> dVar) {
            return a.this.new C0417a(dVar);
        }

        @Override // e8.l
        @Nullable
        public final Object invoke(@Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((C0417a) create(dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                a aVar = a.this;
                this.label = 1;
                if (aVar.h(this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    static final class b extends v implements e8.l<Throwable, l0> {
        b() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            if (th != null) {
                kotlin.coroutines.d dVar = a.this.end;
                w7.v.a aVar = w7.v.Companion;
                dVar.resumeWith(w7.v.b(w.a(th)));
            }
        }
    }

    public static final class c implements kotlin.coroutines.d<l0> {

        @NotNull
        private final kotlin.coroutines.g context;

        @Override // kotlin.coroutines.d
        @NotNull
        public kotlin.coroutines.g getContext() {
            return this.context;
        }

        c() {
            this.context = a.this.g() != null ? i.INSTANCE.plus(a.this.g()) : i.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.d
        public void resumeWith(@NotNull Object obj) {
            Object obj2;
            boolean z6;
            Throwable thE;
            b2 b2VarG;
            Object objE = w7.v.e(obj);
            if (objE == null) {
                objE = l0.INSTANCE;
            }
            a aVar = a.this;
            do {
                obj2 = aVar.state;
                z6 = obj2 instanceof Thread;
                if (!z6 && !(obj2 instanceof kotlin.coroutines.d) && !t.e(obj2, this)) {
                    return;
                }
            } while (!androidx.concurrent.futures.a.a(a.state$FU, aVar, obj2, objE));
            if (z6) {
                f.a().b(obj2);
            } else if ((obj2 instanceof kotlin.coroutines.d) && (thE = w7.v.e(obj)) != null) {
                ((kotlin.coroutines.d) obj2).resumeWith(w7.v.b(w.a(thE)));
            }
            if (w7.v.g(obj) && !(w7.v.e(obj) instanceof CancellationException) && (b2VarG = a.this.g()) != null) {
                b2.a.a(b2VarG, null, 1, null);
            }
            g1 g1Var = a.this.disposable;
            if (g1Var != null) {
                g1Var.t();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object j(kotlin.coroutines.d<Object> dVar) {
        Object obj;
        kotlin.coroutines.d dVarC;
        Object obj2 = null;
        while (true) {
            Object obj3 = this.state;
            if (obj3 instanceof Thread) {
                dVarC = kotlin.coroutines.intrinsics.c.c(dVar);
                obj = obj3;
            } else {
                if (!t.e(obj3, this)) {
                    throw new IllegalStateException("Already suspended or in finished state");
                }
                obj = obj2;
                dVarC = kotlin.coroutines.intrinsics.c.c(dVar);
            }
            if (androidx.concurrent.futures.a.a(state$FU, this, obj3, dVarC)) {
                if (obj != null) {
                    f.a().b(obj);
                }
                return kotlin.coroutines.intrinsics.d.e();
            }
            obj2 = obj;
        }
    }

    protected final void d(int i10) {
        this.result = i10;
    }

    protected final int e() {
        return this.length;
    }

    protected final int f() {
        return this.offset;
    }

    @Nullable
    public final b2 g() {
        return this.parent;
    }

    @Nullable
    protected abstract Object h(@NotNull kotlin.coroutines.d<? super l0> dVar);

    public a(@Nullable b2 b2Var) {
        this.parent = b2Var;
        c cVar = new c();
        this.end = cVar;
        this.state = this;
        this.result = 0;
        this.disposable = b2Var != null ? b2Var.U(new b()) : null;
        ((e8.l) v0.e(new C0417a(null), 1)).invoke(cVar);
        if (this.state == this) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final void i(Thread thread) {
        if (this.state != thread) {
            return;
        }
        if (!f.b()) {
            io.ktor.utils.io.jvm.javaio.b.b().b("Blocking network thread detected. \nIt can possible lead to a performance decline or even a deadlock.\nPlease make sure you're using blocking IO primitives like InputStream and OutputStream only in \nthe context of Dispatchers.IO:\n```\nwithContext(Dispatchers.IO) {\n    myInputStream.read()\n}\n```");
        }
        while (true) {
            long jB = n1.b();
            if (this.state != thread) {
                return;
            }
            if (jB > 0) {
                f.a().a(jB);
            }
        }
    }

    public final void k() {
        g1 g1Var = this.disposable;
        if (g1Var != null) {
            g1Var.t();
        }
        kotlin.coroutines.d<l0> dVar = this.end;
        w7.v.a aVar = w7.v.Companion;
        dVar.resumeWith(w7.v.b(w.a(new CancellationException("Stream closed"))));
    }

    public final int l(@NotNull Object jobToken) throws Throwable {
        Object obj;
        Object sVar;
        t.j(jobToken, "jobToken");
        Thread thread = Thread.currentThread();
        kotlin.coroutines.d dVar = null;
        do {
            obj = this.state;
            if (obj instanceof kotlin.coroutines.d) {
                t.h(obj, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any>");
                dVar = (kotlin.coroutines.d) obj;
                sVar = thread;
            } else {
                if (obj instanceof l0) {
                    return this.result;
                }
                if (obj instanceof Throwable) {
                    throw ((Throwable) obj);
                }
                if (obj instanceof Thread) {
                    throw new IllegalStateException("There is already thread owning adapter");
                }
                if (t.e(obj, this)) {
                    throw new IllegalStateException("Not yet started");
                }
                sVar = new s();
            }
            t.i(sVar, "when (value) {\n         …Exception()\n            }");
        } while (!androidx.concurrent.futures.a.a(state$FU, this, obj, sVar));
        t.g(dVar);
        dVar.resumeWith(w7.v.b(jobToken));
        t.i(thread, "thread");
        i(thread);
        Object obj2 = this.state;
        if (obj2 instanceof Throwable) {
            throw ((Throwable) obj2);
        }
        return this.result;
    }

    public final int m(@NotNull byte[] buffer, int i10, int i11) {
        t.j(buffer, "buffer");
        this.offset = i10;
        this.length = i11;
        return l(buffer);
    }

    public /* synthetic */ a(b2 b2Var, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : b2Var);
    }
}
