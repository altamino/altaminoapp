package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class ComposeView$Content$1 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ ComposeView $tmp1_rcvr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposeView$Content$1(ComposeView composeView, int i10) {
        super(2);
        this.$tmp1_rcvr = composeView;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp1_rcvr.a(composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
