package androidx.compose.material;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1 extends v implements p<IntrinsicMeasurable, Integer, Integer> {
    public static final OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1 INSTANCE = new OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1();

    OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1() {
        super(2);
    }

    @NotNull
    public final Integer a(@NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        t.j(intrinsicMeasurable, "intrinsicMeasurable");
        return Integer.valueOf(intrinsicMeasurable.Y(i10));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
        return a(intrinsicMeasurable, num.intValue());
    }
}
