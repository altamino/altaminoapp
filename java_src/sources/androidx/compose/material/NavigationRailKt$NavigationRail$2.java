package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$NavigationRail$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ float $elevation;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $header;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    NavigationRailKt$NavigationRail$2(Modifier modifier, long j6, long j10, float f, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar2, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$elevation = f;
        this.$header = qVar;
        this.$content = qVar2;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        NavigationRailKt.a(this.$modifier, this.$backgroundColor, this.$contentColor, this.$elevation, this.$header, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
