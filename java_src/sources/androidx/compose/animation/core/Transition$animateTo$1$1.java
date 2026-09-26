package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.Transition$animateTo$1$1", f = "Transition.kt", l = {434}, m = "invokeSuspend")
final class Transition$animateTo$1$1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Transition<S> this$0;

    /* JADX INFO: renamed from: androidx.compose.animation.core.Transition$animateTo$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Long, l0> {
        final /* synthetic */ float $durationScale;
        final /* synthetic */ Transition<S> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Transition<S> transition, float f) {
            super(1);
            this.this$0 = transition;
            this.$durationScale = f;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final void a(long j6) {
            if (this.this$0.q()) {
                return;
            }
            this.this$0.s(j6, this.$durationScale);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Long l) {
            a(l.longValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Transition$animateTo$1$1(Transition<S> transition, kotlin.coroutines.d<? super Transition$animateTo$1$1> dVar) {
        super(2, dVar);
        this.this$0 = transition;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        Transition$animateTo$1$1 transition$animateTo$1$1 = new Transition$animateTo$1$1(this.this$0, dVar);
        transition$animateTo$1$1.L$0 = obj;
        return transition$animateTo$1$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((Transition$animateTo$1$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        o0 o0Var;
        AnonymousClass1 anonymousClass1;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                o0Var = (o0) this.L$0;
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            o0Var = (o0) this.L$0;
        }
        do {
            anonymousClass1 = new AnonymousClass1(this.this$0, SuspendAnimationKt.o(o0Var.getCoroutineContext()));
            this.L$0 = o0Var;
            this.label = 1;
        } while (MonotonicFrameClockKt.b(anonymousClass1, this) != objE);
        return objE;
    }
}
