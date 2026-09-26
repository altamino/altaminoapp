package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ThreeLine$ListItem$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ p<Composer, Integer, l0> $overlineText;
    final /* synthetic */ p<Composer, Integer, l0> $secondaryText;
    final /* synthetic */ p<Composer, Integer, l0> $text;
    final /* synthetic */ ThreeLine $tmp0_rcvr;
    final /* synthetic */ p<Composer, Integer, l0> $trailing;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ThreeLine$ListItem$2(ThreeLine threeLine, Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, p<? super Composer, ? super Integer, l0> pVar5, int i10, int i11) {
        super(2);
        this.$tmp0_rcvr = threeLine;
        this.$modifier = modifier;
        this.$icon = pVar;
        this.$text = pVar2;
        this.$secondaryText = pVar3;
        this.$overlineText = pVar4;
        this.$trailing = pVar5;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(this.$modifier, this.$icon, this.$text, this.$secondaryText, this.$overlineText, this.$trailing, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
