package androidx.compose.ui.platform;

/* JADX INFO: loaded from: classes2.dex */
final class ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
    final /* synthetic */ kotlin.jvm.internal.p0<e8.a<w7.l0>> $disposer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2(kotlin.jvm.internal.p0<e8.a<w7.l0>> p0Var) {
        super(0);
        this.$disposer = p0Var;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ w7.l0 invoke() {
        invoke2();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$disposer.element.invoke();
    }
}
