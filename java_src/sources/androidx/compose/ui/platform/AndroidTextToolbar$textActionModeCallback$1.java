package androidx.compose.ui.platform;

/* JADX INFO: loaded from: classes8.dex */
final class AndroidTextToolbar$textActionModeCallback$1 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
    final /* synthetic */ AndroidTextToolbar this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidTextToolbar$textActionModeCallback$1(AndroidTextToolbar androidTextToolbar) {
        super(0);
        this.this$0 = androidTextToolbar;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ w7.l0 invoke() {
        invoke2();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.actionMode = null;
    }
}
