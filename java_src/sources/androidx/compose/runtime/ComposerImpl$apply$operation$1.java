package androidx.compose.runtime;

import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$apply$operation$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ p<T, V, l0> $block;
    final /* synthetic */ V $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ComposerImpl$apply$operation$1(p<? super T, ? super V, l0> pVar, V v5) {
        super(3);
        this.$block = pVar;
        this.$value = v5;
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
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r2v2 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    public final void a(@org.jetbrains.annotations.NotNull androidx.compose.runtime.Applier<?> r2, @org.jetbrains.annotations.NotNull androidx.compose.runtime.SlotWriter r3, @org.jetbrains.annotations.NotNull androidx.compose.runtime.RememberManager r4) {
        /*
            r1 = this;
            java.lang.String r0 = "applier"
            kotlin.jvm.internal.t.j(r2, r0)
            java.lang.String r0 = "<anonymous parameter 1>"
            kotlin.jvm.internal.t.j(r3, r0)
            java.lang.String r3 = "<anonymous parameter 2>"
            kotlin.jvm.internal.t.j(r4, r3)
            e8.p<T, V, w7.l0> r3 = r1.$block
            java.lang.Object r2 = r2.a()
            V r4 = r1.$value
            r3.invoke(r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl$apply$operation$1.a(androidx.compose.runtime.Applier, androidx.compose.runtime.SlotWriter, androidx.compose.runtime.RememberManager):void");
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
