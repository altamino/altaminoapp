package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class BoxKt$Box$3 extends v implements e8.p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BoxKt$Box$3(Modifier modifier, int i10) {
        super(2);
        this.$modifier = modifier;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BoxKt.a(this.$modifier, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
