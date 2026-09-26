package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final /* synthetic */ class r {
    private static final int DEFAULT_CONCURRENCY = kotlinx.coroutines.internal.j0.b(i.DEFAULT_CONCURRENCY_PROPERTY_NAME, 16, 1, Integer.MAX_VALUE);

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", l = {217, 217}, m = "invokeSuspend")
    static final class a<R, T> extends kotlin.coroutines.jvm.internal.l implements e8.q<h<? super R>, T, kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ e8.p<T, kotlin.coroutines.d<? super R>, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(e8.p<? super T, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, kotlin.coroutines.d<? super a> dVar) {
            super(3, dVar);
            this.$transform = pVar;
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull h<? super R> hVar, T t5, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            a aVar = new a(this.$transform, dVar);
            aVar.L$0 = hVar;
            aVar.L$1 = t5;
            return aVar.invokeSuspend(w7.l0.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.flow.r$a<R, T> for r5v1 'this'  java.lang.Object
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
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                w7.w.b(r6)
                goto L45
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                java.lang.Object r1 = r5.L$0
                kotlinx.coroutines.flow.h r1 = (kotlinx.coroutines.flow.h) r1
                w7.w.b(r6)
                goto L39
            L22:
                w7.w.b(r6)
                java.lang.Object r6 = r5.L$0
                r1 = r6
                kotlinx.coroutines.flow.h r1 = (kotlinx.coroutines.flow.h) r1
                java.lang.Object r6 = r5.L$1
                e8.p<T, kotlin.coroutines.d<? super R>, java.lang.Object> r4 = r5.$transform
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r4.invoke(r6, r5)
                if (r6 != r0) goto L39
                return r0
            L39:
                r3 = 0
                r5.L$0 = r3
                r5.label = r2
                java.lang.Object r6 = r1.emit(r6, r5)
                if (r6 != r0) goto L45
                return r0
            L45:
                w7.l0 r6 = w7.l0.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.r.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @NotNull
    public static final <T, R> g<R> a(@NotNull g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar) {
        return i.M(gVar, new a(pVar, null));
    }

    @NotNull
    public static final <T, R> g<R> b(@NotNull g<? extends T> gVar, @NotNull e8.q<? super h<? super R>, ? super T, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> qVar) {
        return new kotlinx.coroutines.flow.internal.i(qVar, gVar, null, 0, null, 28, null);
    }
}
