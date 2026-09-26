package androidx.compose.ui.text;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextRangeSaver$2 extends v implements l<Object, TextRange> {
    public static final SaversKt$TextRangeSaver$2 INSTANCE = new SaversKt$TextRangeSaver$2();

    SaversKt$TextRangeSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TextRange invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        Integer num = obj != null ? (Integer) obj : null;
        t.g(num);
        int iIntValue = num.intValue();
        Object obj2 = list.get(1);
        Integer num2 = obj2 != null ? (Integer) obj2 : null;
        t.g(num2);
        return TextRange.b(TextRangeKt.b(iIntValue, num2.intValue()));
    }
}
