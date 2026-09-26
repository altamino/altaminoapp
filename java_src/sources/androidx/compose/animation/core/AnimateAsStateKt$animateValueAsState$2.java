package androidx.compose.animation.core;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class AnimateAsStateKt$animateValueAsState$2 extends v implements e8.a<l0> {
    final /* synthetic */ kotlinx.coroutines.channels.d<T> $channel;
    final /* synthetic */ T $targetValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AnimateAsStateKt$animateValueAsState$2(kotlinx.coroutines.channels.d<T> dVar, T t5) {
        super(0);
        this.$channel = dVar;
        this.$targetValue = t5;
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
        this.$channel.p(this.$targetValue);
    }
}
