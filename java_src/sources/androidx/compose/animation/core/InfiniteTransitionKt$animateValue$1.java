package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class InfiniteTransitionKt$animateValue$1 extends v implements e8.a<l0> {
    final /* synthetic */ InfiniteRepeatableSpec<T> $animationSpec;
    final /* synthetic */ T $initialValue;
    final /* synthetic */ T $targetValue;
    final /* synthetic */ InfiniteTransition.TransitionAnimationState<T, V> $transitionAnimation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfiniteTransitionKt$animateValue$1(T t5, InfiniteTransition.TransitionAnimationState<T, V> transitionAnimationState, T t10, InfiniteRepeatableSpec<T> infiniteRepeatableSpec) {
        super(0);
        this.$initialValue = t5;
        this.$transitionAnimation = transitionAnimationState;
        this.$targetValue = t10;
        this.$animationSpec = infiniteRepeatableSpec;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
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
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (t.e(this.$initialValue, this.$transitionAnimation.a()) && t.e(this.$targetValue, this.$transitionAnimation.b())) {
            return;
        }
        this.$transitionAnimation.l(this.$initialValue, this.$targetValue, this.$animationSpec);
    }
}
