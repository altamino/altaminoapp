package io.ktor.utils.io.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.h2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    private static final /* synthetic */ AtomicReferenceFieldUpdater suspension$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "suspension");

    @NotNull
    private volatile /* synthetic */ Object suspension = null;

    /* JADX INFO: renamed from: io.ktor.utils.io.internal.a$a, reason: collision with other inner class name */
    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.internal.AwaitingSlot", f = "AwaitingSlot.kt", l = {24}, m = "sleep")
    static final class C0415a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C0415a(kotlin.coroutines.d<? super C0415a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.d(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.internal.AwaitingSlot", f = "AwaitingSlot.kt", l = {57}, m = "trySuspend")
    static final class b extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.e(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(e8.a<Boolean> aVar, kotlin.coroutines.d<? super Boolean> dVar) {
        b bVar;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.label = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object obj = bVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = bVar.label;
        boolean z6 = true;
        if (i11 == 0) {
            w.b(obj);
            a0 a0VarB = h2.b(null, 1, null);
            if (androidx.concurrent.futures.a.a(suspension$FU, this, null, a0VarB) && aVar.invoke().booleanValue()) {
                bVar.I$0 = 1;
                bVar.label = 1;
                if (a0VarB.t0(bVar) == objE) {
                    return objE;
                }
            } else {
                z6 = false;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i12 = bVar.I$0;
            w.b(obj);
            if (i12 == 0) {
                z6 = false;
            }
        }
        return kotlin.coroutines.jvm.internal.b.a(z6);
    }

    public final void b(@Nullable Throwable th) {
        a0 a0Var = (a0) suspension$FU.getAndSet(this, null);
        if (a0Var == null) {
            return;
        }
        if (th != null) {
            a0Var.a(th);
        } else {
            a0Var.complete();
        }
    }

    public final void c() {
        a0 a0Var = (a0) suspension$FU.getAndSet(this, null);
        if (a0Var != null) {
            a0Var.complete();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object d(@NotNull e8.a<Boolean> aVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        C0415a c0415a;
        a aVar2;
        if (dVar instanceof C0415a) {
            c0415a = (C0415a) dVar;
            int i10 = c0415a.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0415a.label = i10 - Integer.MIN_VALUE;
            } else {
                c0415a = new C0415a(dVar);
            }
        } else {
            c0415a = new C0415a(dVar);
        }
        Object objE = c0415a.result;
        Object objE2 = kotlin.coroutines.intrinsics.d.e();
        int i11 = c0415a.label;
        if (i11 == 0) {
            w.b(objE);
            c0415a.L$0 = this;
            c0415a.label = 1;
            objE = e(aVar, c0415a);
            if (objE == objE2) {
                return objE2;
            }
            aVar2 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar2 = (a) c0415a.L$0;
            w.b(objE);
        }
        if (((Boolean) objE).booleanValue()) {
            return l0.INSTANCE;
        }
        aVar2.c();
        return l0.INSTANCE;
    }
}
