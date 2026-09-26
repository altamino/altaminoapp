package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class AbstractComposeView$ensureCompositionCreated$1 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    final /* synthetic */ AbstractComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractComposeView$ensureCompositionCreated$1(AbstractComposeView abstractComposeView) {
        super(2);
        this.this$0 = abstractComposeView;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.this$0.a(composer, 8);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
