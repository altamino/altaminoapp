package androidx.compose.ui.platform;

import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: loaded from: classes4.dex */
final class DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
    final /* synthetic */ SavedStateRegistry $androidxRegistry;
    final /* synthetic */ String $key;
    final /* synthetic */ boolean $registered;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(boolean z6, SavedStateRegistry savedStateRegistry, String str) {
        super(0);
        this.$registered = z6;
        this.$androidxRegistry = savedStateRegistry;
        this.$key = str;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ w7.l0 invoke() {
        invoke2();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.$registered) {
            this.$androidxRegistry.j(this.$key);
        }
    }
}
