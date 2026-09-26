package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import e8.l;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AndroidViewHolder$layoutNode$1$4 extends v implements l<Owner, l0> {
    final /* synthetic */ AndroidViewHolder $this_run;
    final /* synthetic */ p0<View> $viewRemovedOnDetach;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidViewHolder$layoutNode$1$4(AndroidViewHolder androidViewHolder, p0<View> p0Var) {
        super(1);
        this.$this_run = androidViewHolder;
        this.$viewRemovedOnDetach = p0Var;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, android.view.View] */
    public final void a(@NotNull Owner owner) {
        t.j(owner, "owner");
        AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
        if (androidComposeView != null) {
            androidComposeView.f0(this.$this_run);
        }
        this.$viewRemovedOnDetach.element = this.$this_run.getView();
        this.$this_run.setView$ui_release(null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Owner owner) {
        a(owner);
        return l0.INSTANCE;
    }
}
