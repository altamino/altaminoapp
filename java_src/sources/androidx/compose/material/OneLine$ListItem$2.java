package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class OneLine$ListItem$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ p<Composer, Integer, l0> $text;
    final /* synthetic */ OneLine $tmp0_rcvr;
    final /* synthetic */ p<Composer, Integer, l0> $trailing;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    OneLine$ListItem$2(OneLine oneLine, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, int i10, int i11) {
        super(2);
        this.$tmp0_rcvr = oneLine;
        this.$modifier = modifier;
        this.$icon = pVar;
        this.$text = pVar2;
        this.$trailing = pVar3;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(this.$modifier, this.$icon, this.$text, this.$trailing, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
