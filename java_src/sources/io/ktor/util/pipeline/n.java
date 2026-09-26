package io.ktor.util.pipeline;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class n<TSubject, TContext> extends e<TSubject, TContext> {

    @NotNull
    private final List<q<e<TSubject, TContext>, TSubject, kotlin.coroutines.d<? super l0>, Object>> blocks;

    @NotNull
    private final kotlin.coroutines.d<l0> continuation;
    private int index;
    private int lastSuspensionIndex;

    @NotNull
    private TSubject subject;

    @NotNull
    private final kotlin.coroutines.d<TSubject>[] suspensions;

    public static final class a implements kotlin.coroutines.d<l0>, kotlin.coroutines.jvm.internal.e {
        private int currentIndex = Integer.MIN_VALUE;
        final /* synthetic */ n<TSubject, TContext> this$0;

        a(n<TSubject, TContext> nVar) {
            this.this$0 = nVar;
        }

        private final kotlin.coroutines.d<?> a() {
            if (this.currentIndex == Integer.MIN_VALUE) {
                this.currentIndex = ((n) this.this$0).lastSuspensionIndex;
            }
            if (this.currentIndex < 0) {
                this.currentIndex = Integer.MIN_VALUE;
                return null;
            }
            try {
                kotlin.coroutines.d<?>[] dVarArr = ((n) this.this$0).suspensions;
                int i10 = this.currentIndex;
                kotlin.coroutines.d<?> dVar = dVarArr[i10];
                if (dVar == null) {
                    return m.INSTANCE;
                }
                this.currentIndex = i10 - 1;
                return dVar;
            } catch (Throwable unused) {
                return m.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.d
        @NotNull
        public kotlin.coroutines.g getContext() {
            kotlin.coroutines.d dVar = ((n) this.this$0).suspensions[((n) this.this$0).lastSuspensionIndex];
            if (dVar != this && dVar != null) {
                return dVar.getContext();
            }
            int i10 = ((n) this.this$0).lastSuspensionIndex - 1;
            while (i10 >= 0) {
                int i11 = i10 - 1;
                kotlin.coroutines.d dVar2 = ((n) this.this$0).suspensions[i10];
                if (dVar2 != this && dVar2 != null) {
                    return dVar2.getContext();
                }
                i10 = i11;
            }
            throw new IllegalStateException("Not started".toString());
        }

        @Override // kotlin.coroutines.jvm.internal.e
        @Nullable
        public kotlin.coroutines.jvm.internal.e getCallerFrame() {
            kotlin.coroutines.d<?> dVarA = a();
            if (dVarA instanceof kotlin.coroutines.jvm.internal.e) {
                return (kotlin.coroutines.jvm.internal.e) dVarA;
            }
            return null;
        }

        @Override // kotlin.coroutines.d
        public void resumeWith(@NotNull Object obj) {
            if (!v.g(obj)) {
                this.this$0.m(false);
                return;
            }
            n<TSubject, TContext> nVar = this.this$0;
            Throwable thE = v.e(obj);
            t.g(thE);
            nVar.n(v.b(w.a(thE)));
        }
    }

    @Override // io.ktor.util.pipeline.e
    @Nullable
    public Object a(@NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        this.index = 0;
        if (this.blocks.size() == 0) {
            return tsubject;
        }
        o(tsubject);
        if (this.lastSuspensionIndex < 0) {
            return c(dVar);
        }
        throw new IllegalStateException("Already started");
    }

    @NotNull
    public TSubject l() {
        return this.subject;
    }

    public void o(@NotNull TSubject tsubject) {
        t.j(tsubject, "<set-?>");
        this.subject = tsubject;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public n(@NotNull TSubject initial, @NotNull TContext context, @NotNull List<? extends q<? super e<TSubject, TContext>, ? super TSubject, ? super kotlin.coroutines.d<? super l0>, ? extends Object>> blocks) {
        super(context);
        t.j(initial, "initial");
        t.j(context, "context");
        t.j(blocks, "blocks");
        this.blocks = blocks;
        this.continuation = new a(this);
        this.subject = initial;
        this.suspensions = new kotlin.coroutines.d[blocks.size()];
        this.lastSuspensionIndex = -1;
    }

    private final void k() {
        int i10 = this.lastSuspensionIndex;
        if (i10 < 0) {
            throw new IllegalStateException("No more continuations to resume");
        }
        kotlin.coroutines.d<TSubject>[] dVarArr = this.suspensions;
        this.lastSuspensionIndex = i10 - 1;
        dVarArr[i10] = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m(boolean z6) {
        int i10;
        do {
            i10 = this.index;
            if (i10 == this.blocks.size()) {
                if (z6) {
                    return true;
                }
                v.a aVar = v.Companion;
                n(v.b(l()));
                return false;
            }
            this.index = i10 + 1;
            try {
            } catch (Throwable th) {
                v.a aVar2 = v.Companion;
                n(v.b(w.a(th)));
                return false;
            }
        } while (this.blocks.get(i10).invoke(this, l(), this.continuation) != kotlin.coroutines.intrinsics.d.e());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(Object obj) {
        int i10 = this.lastSuspensionIndex;
        if (i10 < 0) {
            throw new IllegalStateException("No more continuations to resume".toString());
        }
        kotlin.coroutines.d<TSubject> dVar = this.suspensions[i10];
        t.g(dVar);
        kotlin.coroutines.d<TSubject>[] dVarArr = this.suspensions;
        int i11 = this.lastSuspensionIndex;
        this.lastSuspensionIndex = i11 - 1;
        dVarArr[i11] = null;
        if (!v.g(obj)) {
            dVar.resumeWith(obj);
            return;
        }
        Throwable thE = v.e(obj);
        t.g(thE);
        dVar.resumeWith(v.b(w.a(k.a(thE, dVar))));
    }

    @Override // io.ktor.util.pipeline.e
    @Nullable
    public Object c(@NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        Object objE;
        if (this.index == this.blocks.size()) {
            objE = l();
        } else {
            j(kotlin.coroutines.intrinsics.c.c(dVar));
            if (m(true)) {
                k();
                objE = l();
            } else {
                objE = kotlin.coroutines.intrinsics.d.e();
            }
        }
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objE;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.continuation.getContext();
    }

    public final void j(@NotNull kotlin.coroutines.d<? super TSubject> continuation) {
        t.j(continuation, "continuation");
        kotlin.coroutines.d<TSubject>[] dVarArr = this.suspensions;
        int i10 = this.lastSuspensionIndex + 1;
        this.lastSuspensionIndex = i10;
        dVarArr[i10] = continuation;
    }

    @Override // io.ktor.util.pipeline.e
    @Nullable
    public Object e(@NotNull TSubject tsubject, @NotNull kotlin.coroutines.d<? super TSubject> dVar) {
        o(tsubject);
        return c(dVar);
    }
}
