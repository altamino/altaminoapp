package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.internal.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class z<T> implements kotlinx.coroutines.flow.h<T> {

    @NotNull
    private final Object countOrElement;

    @NotNull
    private final kotlin.coroutines.g emitContext;

    @NotNull
    private final e8.p<T, kotlin.coroutines.d<? super l0>, Object> emitRef;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", l = {212}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<T, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.h<T> $downstream;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.h<? super T> hVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$downstream = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$downstream, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(T t5, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(t5, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.d to kotlinx.coroutines.flow.internal.z$a for r3v1 'this'  kotlin.coroutines.d
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r3.label
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                w7.w.b(r4)
                goto L27
            Lf:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r0)
                throw r4
            L17:
                w7.w.b(r4)
                java.lang.Object r4 = r3.L$0
                kotlinx.coroutines.flow.h<T> r1 = r3.$downstream
                r3.label = r2
                java.lang.Object r4 = r1.emit(r4, r3)
                if (r4 != r0) goto L27
                return r0
            L27:
                w7.l0 r4 = w7.l0.INSTANCE
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.z.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objB = f.b(this.emitContext, t5, this.countOrElement, this.emitRef, dVar);
        return objB == kotlin.coroutines.intrinsics.d.e() ? objB : l0.INSTANCE;
    }

    public z(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @NotNull kotlin.coroutines.g gVar) {
        this.emitContext = gVar;
        this.countOrElement = m0.b(gVar);
        this.emitRef = new a(hVar, null);
    }
}
