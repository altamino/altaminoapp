package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class f<T> implements g<T> {

    @NotNull
    public final e8.p<Object, Object, Boolean> areEquivalent;

    @NotNull
    public final e8.l<T, Object> keySelector;

    @NotNull
    private final g<T> upstream;

    static final class a<T> implements h {
        final /* synthetic */ h<T> $collector;
        final /* synthetic */ kotlin.jvm.internal.p0<Object> $previousKey;
        final /* synthetic */ f<T> this$0;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.f$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", l = {77}, m = "emit")
        static final class C0434a extends kotlin.coroutines.jvm.internal.d {
            int label;
            /* synthetic */ Object result;
            final /* synthetic */ a<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0434a(a<? super T> aVar, kotlin.coroutines.d<? super C0434a> dVar) {
                super(dVar);
                this.this$0 = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return this.this$0.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        a(f<T> fVar, kotlin.jvm.internal.p0<Object> p0Var, h<? super T> hVar) {
            this.this$0 = fVar;
            this.$previousKey = p0Var;
            this.$collector = hVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
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
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            C0434a c0434a;
            if (dVar instanceof C0434a) {
                c0434a = (C0434a) dVar;
                int i10 = c0434a.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    c0434a.label = i10 - Integer.MIN_VALUE;
                } else {
                    c0434a = new C0434a(this, dVar);
                }
            } else {
                c0434a = new C0434a(this, dVar);
            }
            Object obj = c0434a.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = c0434a.label;
            if (i11 == 0) {
                w7.w.b(obj);
                T t10 = (T) this.this$0.keySelector.invoke(t5);
                Object obj2 = this.$previousKey.element;
                if (obj2 != kotlinx.coroutines.flow.internal.s.NULL && this.this$0.areEquivalent.invoke(obj2, t10).booleanValue()) {
                    return w7.l0.INSTANCE;
                }
                this.$previousKey.element = t10;
                h<T> hVar = this.$collector;
                c0434a.label = 1;
                if (hVar.emit(t5, c0434a) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w7.w.b(obj);
            }
            return w7.l0.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        p0Var.element = (T) kotlinx.coroutines.flow.internal.s.NULL;
        Object objCollect = this.upstream.collect(new a(this, p0Var, hVar), dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : w7.l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull g<? extends T> gVar, @NotNull e8.l<? super T, ? extends Object> lVar, @NotNull e8.p<Object, Object, Boolean> pVar) {
        this.upstream = gVar;
        this.keySelector = lVar;
        this.areEquivalent = pVar;
    }
}
