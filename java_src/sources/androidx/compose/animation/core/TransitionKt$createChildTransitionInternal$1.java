package androidx.compose.animation.core;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class TransitionKt$createChildTransitionInternal$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ Transition<S> $this_createChildTransitionInternal;
    final /* synthetic */ Transition<T> $transition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransitionKt$createChildTransitionInternal$1(Transition<S> transition, Transition<T> transition2) {
        super(1);
        this.$this_createChildTransitionInternal = transition;
        this.$transition = transition2;
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
    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        this.$this_createChildTransitionInternal.e(this.$transition);
        final Transition<S> transition = this.$this_createChildTransitionInternal;
        final Transition<T> transition2 = this.$transition;
        return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createChildTransitionInternal$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                transition.x(transition2);
            }
        };
    }
}
