package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackLayerTransition$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $appBar;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ BackdropValue $target;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BackdropScaffoldKt$BackLayerTransition$2(BackdropValue backdropValue, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10) {
        super(2);
        this.$target = backdropValue;
        this.$appBar = pVar;
        this.$content = pVar2;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BackdropScaffoldKt.a(this.$target, this.$appBar, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
