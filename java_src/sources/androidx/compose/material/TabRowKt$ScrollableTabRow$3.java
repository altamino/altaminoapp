package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TabRowKt$ScrollableTabRow$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ p<Composer, Integer, l0> $divider;
    final /* synthetic */ float $edgePadding;
    final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ int $selectedTabIndex;
    final /* synthetic */ p<Composer, Integer, l0> $tabs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TabRowKt$ScrollableTabRow$3(int i10, Modifier modifier, long j6, long j10, float f, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i11, int i12) {
        super(2);
        this.$selectedTabIndex = i10;
        this.$modifier = modifier;
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$edgePadding = f;
        this.$indicator = qVar;
        this.$divider = pVar;
        this.$tabs = pVar2;
        this.$$changed = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TabRowKt.a(this.$selectedTabIndex, this.$modifier, this.$backgroundColor, this.$contentColor, this.$edgePadding, this.$indicator, this.$divider, this.$tabs, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
