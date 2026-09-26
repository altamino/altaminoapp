package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BottomNavigationKt$BottomNavigation$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ float $elevation;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomNavigationKt$BottomNavigation$2(Modifier modifier, long j6, long j10, float f, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$elevation = f;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BottomNavigationKt.a(this.$modifier, this.$backgroundColor, this.$contentColor, this.$elevation, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
