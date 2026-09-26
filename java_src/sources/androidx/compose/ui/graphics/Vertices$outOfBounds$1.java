package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class Vertices$outOfBounds$1 extends kotlin.jvm.internal.v implements e8.l<Integer, Boolean> {
    final /* synthetic */ List<Offset> $positions;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Vertices$outOfBounds$1(List<Offset> list) {
        super(1);
        this.$positions = list;
    }

    @NotNull
    public final Boolean b(int i10) {
        return Boolean.valueOf(i10 < 0 || i10 >= this.$positions.size());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
        return b(num.intValue());
    }
}
