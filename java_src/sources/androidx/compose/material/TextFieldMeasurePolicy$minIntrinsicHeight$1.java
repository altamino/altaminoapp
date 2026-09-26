package androidx.compose.material;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class TextFieldMeasurePolicy$minIntrinsicHeight$1 extends v implements p<IntrinsicMeasurable, Integer, Integer> {
    public static final TextFieldMeasurePolicy$minIntrinsicHeight$1 INSTANCE = new TextFieldMeasurePolicy$minIntrinsicHeight$1();

    TextFieldMeasurePolicy$minIntrinsicHeight$1() {
        super(2);
    }

    @NotNull
    public final Integer a(@NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        t.j(intrinsicMeasurable, "intrinsicMeasurable");
        return Integer.valueOf(intrinsicMeasurable.V(i10));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
        return a(intrinsicMeasurable, num.intValue());
    }
}
