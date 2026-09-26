package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final /* synthetic */ class v {

    /* JADX INFO: Add missing generic type declarations: [R] */
    public static final class a<R> implements g<R> {
        final /* synthetic */ g $flow$inlined;
        final /* synthetic */ g $this_combine$inlined;
        final /* synthetic */ e8.q $transform$inlined;

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super R> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            Object objA = kotlinx.coroutines.flow.internal.k.a(hVar, new g[]{this.$this_combine$inlined, this.$flow$inlined}, v.d(), new b(this.$transform$inlined, null), dVar);
            return objA == kotlin.coroutines.intrinsics.d.e() ? objA : w7.l0.INSTANCE;
        }

        public a(g gVar, g gVar2, e8.q qVar) {
            this.$this_combine$inlined = gVar;
            this.$flow$inlined = gVar2;
            this.$transform$inlined = qVar;
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.a {
        public static final c INSTANCE = new c();

        c() {
            super(0);
        }

        @Override // e8.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Void invoke() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> e8.a<T[]> d() {
        return c.INSTANCE;
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {33, 33}, m = "invokeSuspend")
    static final class b<R> extends kotlin.coroutines.jvm.internal.l implements e8.q<h<? super R>, Object[], kotlin.coroutines.d<? super w7.l0>, Object> {
        final /* synthetic */ e8.q<T1, T2, kotlin.coroutines.d<? super R>, Object> $transform;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(e8.q<? super T1, ? super T2, ? super kotlin.coroutines.d<? super R>, ? extends Object> qVar, kotlin.coroutines.d<? super b> dVar) {
            super(3, dVar);
            this.$transform = qVar;
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull h<? super R> hVar, @NotNull Object[] objArr, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
            b bVar = new b(this.$transform, dVar);
            bVar.L$0 = hVar;
            bVar.L$1 = objArr;
            return bVar.invokeSuspend(w7.l0.INSTANCE);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to kotlinx.coroutines.flow.v$b<R> for r6v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r6.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                w7.w.b(r7)
                goto L4c
            L12:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1a:
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.flow.h r1 = (kotlinx.coroutines.flow.h) r1
                w7.w.b(r7)
                goto L40
            L22:
                w7.w.b(r7)
                java.lang.Object r7 = r6.L$0
                r1 = r7
                kotlinx.coroutines.flow.h r1 = (kotlinx.coroutines.flow.h) r1
                java.lang.Object r7 = r6.L$1
                java.lang.Object[] r7 = (java.lang.Object[]) r7
                e8.q<T1, T2, kotlin.coroutines.d<? super R>, java.lang.Object> r4 = r6.$transform
                r5 = 0
                r5 = r7[r5]
                r7 = r7[r3]
                r6.L$0 = r1
                r6.label = r3
                java.lang.Object r7 = r4.invoke(r5, r7, r6)
                if (r7 != r0) goto L40
                return r0
            L40:
                r3 = 0
                r6.L$0 = r3
                r6.label = r2
                java.lang.Object r7 = r1.emit(r7, r6)
                if (r7 != r0) goto L4c
                return r0
            L4c:
                w7.l0 r7 = w7.l0.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.v.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @NotNull
    public static final <T1, T2, R> g<R> c(@NotNull g<? extends T1> gVar, @NotNull g<? extends T2> gVar2, @NotNull e8.q<? super T1, ? super T2, ? super kotlin.coroutines.d<? super R>, ? extends Object> qVar) {
        return new a(gVar, gVar2, qVar);
    }

    @NotNull
    public static final <T1, T2, R> g<R> b(@NotNull g<? extends T1> gVar, @NotNull g<? extends T2> gVar2, @NotNull e8.q<? super T1, ? super T2, ? super kotlin.coroutines.d<? super R>, ? extends Object> qVar) {
        return i.z(gVar, gVar2, qVar);
    }
}
