package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ListItemKt$BaselinesOffsetColumn$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ List<Dp> $offsets;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ListItemKt$BaselinesOffsetColumn$2(List<Dp> list, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$offsets = list;
        this.$modifier = modifier;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ListItemKt.a(this.$offsets, this.$modifier, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
