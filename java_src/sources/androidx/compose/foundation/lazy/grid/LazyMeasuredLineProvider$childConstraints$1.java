package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.Constraints;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes2.dex */
final class LazyMeasuredLineProvider$childConstraints$1 extends v implements p<Integer, Integer, Constraints> {
    final /* synthetic */ int $crossAxisSpacing;
    final /* synthetic */ List<Integer> $slotSizesSums;
    final /* synthetic */ LazyMeasuredLineProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyMeasuredLineProvider$childConstraints$1(List<Integer> list, int i10, LazyMeasuredLineProvider lazyMeasuredLineProvider) {
        super(2);
        this.$slotSizesSums = list;
        this.$crossAxisSpacing = i10;
        this.this$0 = lazyMeasuredLineProvider;
    }

    public final long a(int i10, int i11) {
        int iIntValue = (this.$slotSizesSums.get((i10 + i11) - 1).intValue() - (i10 == 0 ? 0 : this.$slotSizesSums.get(i10 - 1).intValue())) + (this.$crossAxisSpacing * (i11 - 1));
        return this.this$0.isVertical ? Constraints.Companion.e(iIntValue) : Constraints.Companion.d(iIntValue);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Constraints invoke(Integer num, Integer num2) {
        return Constraints.b(a(num.intValue(), num2.intValue()));
    }
}
