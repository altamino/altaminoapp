package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class NavigationRailKt$NavigationRailTransition$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ long $activeColor;
    final /* synthetic */ q<Float, Composer, Integer, l0> $content;
    final /* synthetic */ long $inactiveColor;
    final /* synthetic */ boolean $selected;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    NavigationRailKt$NavigationRailTransition$2(long j6, long j10, boolean z6, q<? super Float, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$activeColor = j6;
        this.$inactiveColor = j10;
        this.$selected = z6;
        this.$content = qVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        NavigationRailKt.d(this.$activeColor, this.$inactiveColor, this.$selected, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
