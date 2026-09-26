package androidx.compose.ui.viewinterop;

import android.view.View;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class ViewFactoryHolder$updateBlock$1 extends v implements e8.a<l0> {
    final /* synthetic */ ViewFactoryHolder<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewFactoryHolder$updateBlock$1(ViewFactoryHolder<T> viewFactoryHolder) {
        super(0);
        this.this$0 = viewFactoryHolder;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        View typedView$ui_release = this.this$0.getTypedView$ui_release();
        if (typedView$ui_release != null) {
            this.this$0.getUpdateBlock().invoke(typedView$ui_release);
        }
    }
}
