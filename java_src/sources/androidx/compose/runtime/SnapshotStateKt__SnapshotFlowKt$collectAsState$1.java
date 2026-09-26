package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.i;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1", f = "SnapshotFlow.kt", l = {65, 66}, m = "invokeSuspend")
final class SnapshotStateKt__SnapshotFlowKt$collectAsState$1<R> extends l implements p<ProduceStateScope<R>, d<? super l0>, Object> {
    final /* synthetic */ g $context;
    final /* synthetic */ kotlinx.coroutines.flow.g<T> $this_collectAsState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$2, reason: invalid class name */
    @f(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$2", f = "SnapshotFlow.kt", l = {67}, m = "invokeSuspend")
    static final class AnonymousClass2 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ ProduceStateScope<R> $$this$produceState;
        final /* synthetic */ kotlinx.coroutines.flow.g<T> $this_collectAsState;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(kotlinx.coroutines.flow.g<? extends T> gVar, ProduceStateScope<R> produceStateScope, d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$this_collectAsState = gVar;
            this.$$this$produceState = produceStateScope;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass2(this.$this_collectAsState, this.$$this$produceState, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

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
                kotlinx.coroutines.flow.g<T> gVar = this.$this_collectAsState;
                final ProduceStateScope<R> produceStateScope = this.$$this$produceState;
                Object obj2 = new h<T>() { // from class: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt.collectAsState.1.2.1
                    @Override // kotlinx.coroutines.flow.h
                    @Nullable
                    public final Object emit(T t5, @NotNull d<? super l0> dVar) {
                        produceStateScope.setValue(t5);
                        return l0.INSTANCE;
                    }
                };
                this.label = 1;
                if (gVar.collect(obj2, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnapshotStateKt__SnapshotFlowKt$collectAsState$1(g gVar, kotlinx.coroutines.flow.g<? extends T> gVar2, d<? super SnapshotStateKt__SnapshotFlowKt$collectAsState$1> dVar) {
        super(2, dVar);
        this.$context = gVar;
        this.$this_collectAsState = gVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SnapshotStateKt__SnapshotFlowKt$collectAsState$1 snapshotStateKt__SnapshotFlowKt$collectAsState$1 = new SnapshotStateKt__SnapshotFlowKt$collectAsState$1(this.$context, this.$this_collectAsState, dVar);
        snapshotStateKt__SnapshotFlowKt$collectAsState$1.L$0 = obj;
        return snapshotStateKt__SnapshotFlowKt$collectAsState$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull ProduceStateScope<R> produceStateScope, @Nullable d<? super l0> dVar) {
        return ((SnapshotStateKt__SnapshotFlowKt$collectAsState$1) create(produceStateScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

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
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj);
        } else {
            w.b(obj);
            final ProduceStateScope produceStateScope = (ProduceStateScope) this.L$0;
            if (t.e(this.$context, kotlin.coroutines.h.INSTANCE)) {
                kotlinx.coroutines.flow.g<T> gVar = this.$this_collectAsState;
                Object obj2 = new h<T>() { // from class: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1.1
                    @Override // kotlinx.coroutines.flow.h
                    @Nullable
                    public final Object emit(T t5, @NotNull d<? super l0> dVar) {
                        produceStateScope.setValue(t5);
                        return l0.INSTANCE;
                    }
                };
                this.label = 1;
                if (gVar.collect(obj2, this) == objE) {
                    return objE;
                }
            } else {
                g gVar2 = this.$context;
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_collectAsState, produceStateScope, null);
                this.label = 2;
                if (i.g(gVar2, anonymousClass2, this) == objE) {
                    return objE;
                }
            }
        }
        return l0.INSTANCE;
    }
}
