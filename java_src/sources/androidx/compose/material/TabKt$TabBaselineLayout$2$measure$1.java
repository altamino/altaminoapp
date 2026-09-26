package androidx.compose.material;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TabKt$TabBaselineLayout$2$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    final /* synthetic */ Integer $firstBaseline;
    final /* synthetic */ Placeable $iconPlaceable;
    final /* synthetic */ Integer $lastBaseline;
    final /* synthetic */ int $tabHeight;
    final /* synthetic */ int $tabWidth;
    final /* synthetic */ Placeable $textPlaceable;
    final /* synthetic */ MeasureScope $this_Layout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TabKt$TabBaselineLayout$2$measure$1(Placeable placeable, Placeable placeable2, MeasureScope measureScope, int i10, int i11, Integer num, Integer num2) {
        super(1);
        this.$textPlaceable = placeable;
        this.$iconPlaceable = placeable2;
        this.$this_Layout = measureScope;
        this.$tabWidth = i10;
        this.$tabHeight = i11;
        this.$firstBaseline = num;
        this.$lastBaseline = num2;
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        Placeable placeable;
        t.j(layout, "$this$layout");
        Placeable placeable2 = this.$textPlaceable;
        if (placeable2 == null || (placeable = this.$iconPlaceable) == null) {
            if (placeable2 != null) {
                TabKt.p(layout, placeable2, this.$tabHeight);
                return;
            }
            Placeable placeable3 = this.$iconPlaceable;
            if (placeable3 != null) {
                TabKt.p(layout, placeable3, this.$tabHeight);
                return;
            }
            return;
        }
        MeasureScope measureScope = this.$this_Layout;
        int i10 = this.$tabWidth;
        int i11 = this.$tabHeight;
        Integer num = this.$firstBaseline;
        t.g(num);
        int iIntValue = num.intValue();
        Integer num2 = this.$lastBaseline;
        t.g(num2);
        TabKt.o(layout, measureScope, placeable2, placeable, i10, i11, iIntValue, num2.intValue());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
