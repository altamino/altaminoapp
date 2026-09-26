package androidx.compose.ui.window;

import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidDialog_androidKt$Dialog$2 extends v implements a<l0> {
    final /* synthetic */ DialogWrapper $dialog;
    final /* synthetic */ LayoutDirection $layoutDirection;
    final /* synthetic */ a<l0> $onDismissRequest;
    final /* synthetic */ DialogProperties $properties;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidDialog_androidKt$Dialog$2(DialogWrapper dialogWrapper, a<l0> aVar, DialogProperties dialogProperties, LayoutDirection layoutDirection) {
        super(0);
        this.$dialog = dialogWrapper;
        this.$onDismissRequest = aVar;
        this.$properties = dialogProperties;
        this.$layoutDirection = layoutDirection;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$dialog.f(this.$onDismissRequest, this.$properties, this.$layoutDirection);
    }
}
