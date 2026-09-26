package androidx.compose.material;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import e8.q;
import java.util.Set;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SwipeToDismissKt$SwipeToDismiss$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $background;
    final /* synthetic */ Set<DismissDirection> $directions;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $dismissContent;
    final /* synthetic */ l<DismissDirection, ThresholdConfig> $dismissThresholds;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ DismissState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SwipeToDismissKt$SwipeToDismiss$3(DismissState dismissState, Modifier modifier, Set<? extends DismissDirection> set, l<? super DismissDirection, ? extends ThresholdConfig> lVar, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar2, int i10, int i11) {
        super(2);
        this.$state = dismissState;
        this.$modifier = modifier;
        this.$directions = set;
        this.$dismissThresholds = lVar;
        this.$background = qVar;
        this.$dismissContent = qVar2;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SwipeToDismissKt.a(this.$state, this.$modifier, this.$directions, this.$dismissThresholds, this.$background, this.$dismissContent, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
