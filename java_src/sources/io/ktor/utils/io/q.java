package io.ktor.utils.io;

import kotlinx.coroutines.b2;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class q {

    static final class a extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
        final /* synthetic */ c $channel;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(c cVar) {
            super(1);
            this.$channel = cVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            this.$channel.c(th);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.CoroutinesKt$launchChannel$job$1", f = "Coroutines.kt", l = {147}, m = "invokeSuspend")
    static final class b extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ boolean $attachJob;
        final /* synthetic */ e8.p<S, kotlin.coroutines.d<? super l0>, Object> $block;
        final /* synthetic */ c $channel;
        final /* synthetic */ k0 $dispatcher;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(boolean z6, c cVar, e8.p<? super S, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, k0 k0Var, kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
            this.$attachJob = z6;
            this.$channel = cVar;
            this.$block = pVar;
            this.$dispatcher = k0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            b bVar = new b(this.$attachJob, this.$channel, this.$block, this.$dispatcher, dVar);
            bVar.L$0 = obj;
            return bVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((b) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to io.ktor.utils.io.q$b for r5v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r5.label
                r2 = 1
                if (r1 == 0) goto L19
                if (r1 != r2) goto L11
                w7.w.b(r6)     // Catch: java.lang.Throwable -> Lf
                goto L61
            Lf:
                r6 = move-exception
                goto L4a
            L11:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L19:
                w7.w.b(r6)
                java.lang.Object r6 = r5.L$0
                kotlinx.coroutines.o0 r6 = (kotlinx.coroutines.o0) r6
                boolean r1 = r5.$attachJob
                if (r1 == 0) goto L38
                io.ktor.utils.io.c r1 = r5.$channel
                kotlin.coroutines.g r3 = r6.getCoroutineContext()
                kotlinx.coroutines.b2$b r4 = kotlinx.coroutines.b2.Key
                kotlin.coroutines.g$b r3 = r3.get(r4)
                kotlin.jvm.internal.t.g(r3)
                kotlinx.coroutines.b2 r3 = (kotlinx.coroutines.b2) r3
                r1.a(r3)
            L38:
                io.ktor.utils.io.m r1 = new io.ktor.utils.io.m
                io.ktor.utils.io.c r3 = r5.$channel
                r1.<init>(r6, r3)
                e8.p<S, kotlin.coroutines.d<? super w7.l0>, java.lang.Object> r6 = r5.$block     // Catch: java.lang.Throwable -> Lf
                r5.label = r2     // Catch: java.lang.Throwable -> Lf
                java.lang.Object r6 = r6.invoke(r1, r5)     // Catch: java.lang.Throwable -> Lf
                if (r6 != r0) goto L61
                return r0
            L4a:
                kotlinx.coroutines.k0 r0 = r5.$dispatcher
                kotlinx.coroutines.k0 r1 = kotlinx.coroutines.e1.d()
                boolean r0 = kotlin.jvm.internal.t.e(r0, r1)
                if (r0 != 0) goto L5c
                kotlinx.coroutines.k0 r0 = r5.$dispatcher
                if (r0 != 0) goto L5b
                goto L5c
            L5b:
                throw r6
            L5c:
                io.ktor.utils.io.c r0 = r5.$channel
                r0.e(r6)
            L61:
                w7.l0 r6 = w7.l0.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.q.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private static final <S extends o0> l a(o0 o0Var, kotlin.coroutines.g gVar, c cVar, boolean z6, e8.p<? super S, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar) {
        b2 b2VarD = kotlinx.coroutines.k.d(o0Var, gVar, null, new b(z6, cVar, pVar, (k0) o0Var.getCoroutineContext().get(k0.Key), null), 2, null);
        b2VarD.U(new a(cVar));
        return new l(b2VarD, cVar);
    }

    @NotNull
    public static final t b(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g coroutineContext, boolean z6, @NotNull e8.p<? super u, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        kotlin.jvm.internal.t.j(o0Var, "<this>");
        kotlin.jvm.internal.t.j(coroutineContext, "coroutineContext");
        kotlin.jvm.internal.t.j(block, "block");
        return a(o0Var, coroutineContext, e.a(z6), true, block);
    }

    @NotNull
    public static final v c(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g coroutineContext, @NotNull c channel, @NotNull e8.p<? super w, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        kotlin.jvm.internal.t.j(o0Var, "<this>");
        kotlin.jvm.internal.t.j(coroutineContext, "coroutineContext");
        kotlin.jvm.internal.t.j(channel, "channel");
        kotlin.jvm.internal.t.j(block, "block");
        return a(o0Var, coroutineContext, channel, false, block);
    }

    @NotNull
    public static final v d(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g coroutineContext, boolean z6, @NotNull e8.p<? super w, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        kotlin.jvm.internal.t.j(o0Var, "<this>");
        kotlin.jvm.internal.t.j(coroutineContext, "coroutineContext");
        kotlin.jvm.internal.t.j(block, "block");
        return a(o0Var, coroutineContext, e.a(z6), true, block);
    }

    public static /* synthetic */ v e(o0 o0Var, kotlin.coroutines.g gVar, c cVar, e8.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        return c(o0Var, gVar, cVar, pVar);
    }

    public static /* synthetic */ v f(o0 o0Var, kotlin.coroutines.g gVar, boolean z6, e8.p pVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return d(o0Var, gVar, z6, pVar);
    }
}
