package androidx.compose.ui.window;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class DialogLayout$Content$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ DialogLayout $tmp0_rcvr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DialogLayout$Content$4(DialogLayout dialogLayout, int i10) {
        super(2);
        this.$tmp0_rcvr = dialogLayout;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
