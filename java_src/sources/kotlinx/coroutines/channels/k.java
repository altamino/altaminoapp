package kotlinx.coroutines.channels;

import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class k {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", l = {39}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super h<? extends l0>>, Object> {
        final /* synthetic */ E $element;
        final /* synthetic */ u<E> $this_trySendBlocking;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(u<? super E> uVar, E e, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$this_trySendBlocking = uVar;
            this.$element = e;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$this_trySendBlocking, this.$element, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, kotlin.coroutines.d<? super h<? extends l0>> dVar) {
            return invoke2(o0Var, (kotlin.coroutines.d<? super h<l0>>) dVar);
        }

        @Nullable
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super h<l0>> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            Object objB;
            Object objA;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    u<E> uVar = this.$this_trySendBlocking;
                    E e = this.$element;
                    w7.v.a aVar = w7.v.Companion;
                    this.label = 1;
                    if (uVar.w(e, this) == objE) {
                        return objE;
                    }
                }
                objB = w7.v.b(l0.INSTANCE);
            } catch (Throwable th) {
                w7.v.a aVar2 = w7.v.Companion;
                objB = w7.v.b(w.a(th));
            }
            if (w7.v.h(objB)) {
                objA = h.Companion.c(l0.INSTANCE);
            } else {
                objA = h.Companion.a(w7.v.e(objB));
            }
            return h.b(objA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> Object a(@NotNull u<? super E> uVar, E e) {
        Object objP = uVar.p(e);
        if (!(objP instanceof h.c)) {
            return h.Companion.c(l0.INSTANCE);
        }
        return ((h) kotlinx.coroutines.j.b(null, new a(uVar, e, null), 1, null)).k();
    }
}
