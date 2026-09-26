package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$NavigationRailItemBaselineLayout$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ float $iconPositionAnimationProgress;
    final /* synthetic */ p<Composer, Integer, l0> $label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    NavigationRailKt$NavigationRailItemBaselineLayout$3(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, float f, int i10) {
        super(2);
        this.$icon = pVar;
        this.$label = pVar2;
        this.$iconPositionAnimationProgress = f;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        NavigationRailKt.c(this.$icon, this.$label, this.$iconPositionAnimationProgress, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
