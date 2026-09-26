package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ p<Composer, Integer, l0> $it;
    final /* synthetic */ long $leadingIconColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1(long j6, p<? super Composer, ? super Integer, l0> pVar) {
        super(2);
        this.$leadingIconColor = j6;
        this.$it = pVar;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            TextFieldImplKt.b(this.$leadingIconColor, null, null, this.$it, composer, 0, 6);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
