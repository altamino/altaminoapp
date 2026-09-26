package kotlinx.coroutines.flow.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.j0;
import kotlinx.coroutines.l3;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class k {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {54, 76, 79}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ e8.a<T[]> $arrayFactory;
        final /* synthetic */ kotlinx.coroutines.flow.g<T>[] $flows;
        final /* synthetic */ kotlinx.coroutines.flow.h<R> $this_combineInternal;
        final /* synthetic */ e8.q<kotlinx.coroutines.flow.h<? super R>, T[], kotlin.coroutines.d<? super l0>, Object> $transform;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.k$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {31}, m = "invokeSuspend")
        static final class C0437a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ kotlinx.coroutines.flow.g<T>[] $flows;
            final /* synthetic */ int $i;
            final /* synthetic */ AtomicInteger $nonClosed;
            final /* synthetic */ kotlinx.coroutines.channels.d<j0<Object>> $resultChannel;
            int label;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.k$a$a$a, reason: collision with other inner class name */
            static final class C0438a<T> implements kotlinx.coroutines.flow.h {
                final /* synthetic */ int $i;
                final /* synthetic */ kotlinx.coroutines.channels.d<j0<Object>> $resultChannel;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.k$a$a$a$a, reason: collision with other inner class name */
                @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", l = {32, 33}, m = "emit")
                static final class C0439a extends kotlin.coroutines.jvm.internal.d {
                    int label;
                    /* synthetic */ Object result;
                    final /* synthetic */ C0438a<T> this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0439a(C0438a<? super T> c0438a, kotlin.coroutines.d<? super C0439a> dVar) {
                        super(dVar);
                        this.this$0 = c0438a;
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return this.this$0.emit(null, this);
                    }
                }

                C0438a(kotlinx.coroutines.channels.d<j0<Object>> dVar, int i10) {
                    this.$resultChannel = dVar;
                    this.$i = i10;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
                    C0439a c0439a;
                    if (dVar instanceof C0439a) {
                        c0439a = (C0439a) dVar;
                        int i10 = c0439a.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            c0439a.label = i10 - Integer.MIN_VALUE;
                        } else {
                            c0439a = new C0439a(this, dVar);
                        }
                    } else {
                        c0439a = new C0439a(this, dVar);
                    }
                    Object obj = c0439a.result;
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i11 = c0439a.label;
                    if (i11 != 0) {
                        if (i11 == 1) {
                            w7.w.b(obj);
                        } else {
                            if (i11 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            w7.w.b(obj);
                        }
                        return l0.INSTANCE;
                    }
                    w7.w.b(obj);
                    kotlinx.coroutines.channels.d<j0<Object>> dVar2 = this.$resultChannel;
                    j0<Object> j0Var = new j0<>(this.$i, t5);
                    c0439a.label = 1;
                    if (dVar2.w(j0Var, c0439a) == objE) {
                        return objE;
                    }
                    c0439a.label = 2;
                    if (l3.a(c0439a) == objE) {
                        return objE;
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0437a(kotlinx.coroutines.flow.g<? extends T>[] gVarArr, int i10, AtomicInteger atomicInteger, kotlinx.coroutines.channels.d<j0<Object>> dVar, kotlin.coroutines.d<? super C0437a> dVar2) {
                super(2, dVar2);
                this.$flows = gVarArr;
                this.$i = i10;
                this.$nonClosed = atomicInteger;
                this.$resultChannel = dVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C0437a(this.$flows, this.$i, this.$nonClosed, this.$resultChannel, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((C0437a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                try {
                    if (i10 != 0) {
                        if (i10 == 1) {
                            w7.w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w7.w.b(obj);
                        kotlinx.coroutines.flow.g[] gVarArr = this.$flows;
                        int i11 = this.$i;
                        kotlinx.coroutines.flow.g gVar = gVarArr[i11];
                        C0438a c0438a = new C0438a(this.$resultChannel, i11);
                        this.label = 1;
                        if (gVar.collect(c0438a, this) == objE) {
                            return objE;
                        }
                    }
                    if (this.$nonClosed.decrementAndGet() == 0) {
                        kotlinx.coroutines.channels.u.a.a(this.$resultChannel, null, 1, null);
                    }
                    return l0.INSTANCE;
                } catch (Throwable th) {
                    if (this.$nonClosed.decrementAndGet() == 0) {
                        kotlinx.coroutines.channels.u.a.a(this.$resultChannel, null, 1, null);
                    }
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.g<? extends T>[] gVarArr, e8.a<T[]> aVar, e8.q<? super kotlinx.coroutines.flow.h<? super R>, ? super T[], ? super kotlin.coroutines.d<? super l0>, ? extends Object> qVar, kotlinx.coroutines.flow.h<? super R> hVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$flows = gVarArr;
            this.$arrayFactory = aVar;
            this.$transform = qVar;
            this.$this_combineInternal = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x00d8 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:26:0x00e3  */
        /* JADX WARN: Code duplicated, block: B:28:0x00e6 A[LOOP:0: B:28:0x00e6->B:51:?, LOOP_START, PHI: r6 r10
          0x00e6: PHI (r6v6 int) = (r6v5 int), (r6v7 int) binds: [B:25:0x00e1, B:51:?] A[DONT_GENERATE, DONT_INLINE]
          0x00e6: PHI (r10v8 kotlin.collections.j0) = (r10v7 kotlin.collections.j0), (r10v21 kotlin.collections.j0) binds: [B:25:0x00e1, B:51:?] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:30:0x00f6  */
        /* JADX WARN: Code duplicated, block: B:33:0x00fc  */
        /* JADX WARN: Code duplicated, block: B:36:0x010d  */
        /* JADX WARN: Code duplicated, block: B:38:0x0117  */
        /* JADX WARN: Code duplicated, block: B:40:0x012d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:41:0x012e  */
        /* JADX WARN: Code duplicated, block: B:46:0x0160  */
        /* JADX WARN: Code duplicated, block: B:49:0x010b A[EDGE_INSN: B:49:0x010b->B:35:0x010b BREAK  A[LOOP:0: B:28:0x00e6->B:51:?], SYNTHETIC] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x012e -> B:20:0x00c3). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r23) {
            /*
                Method dump skipped, instruction units count: 357
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.k.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Nullable
    public static final <R, T> Object a(@NotNull kotlinx.coroutines.flow.h<? super R> hVar, @NotNull kotlinx.coroutines.flow.g<? extends T>[] gVarArr, @NotNull e8.a<T[]> aVar, @NotNull e8.q<? super kotlinx.coroutines.flow.h<? super R>, ? super T[], ? super kotlin.coroutines.d<? super l0>, ? extends Object> qVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objA = n.a(new a(gVarArr, aVar, qVar, hVar, null), dVar);
        return objA == kotlin.coroutines.intrinsics.d.e() ? objA : l0.INSTANCE;
    }
}
