package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextRangeSaver$1 extends v implements p<SaverScope, TextRange, Object> {
    public static final SaversKt$TextRangeSaver$1 INSTANCE = new SaversKt$TextRangeSaver$1();

    SaversKt$TextRangeSaver$1() {
        super(2);
    }

    @Nullable
    public final Object a(@NotNull SaverScope Saver, long j6) {
        t.j(Saver, "$this$Saver");
        return kotlin.collections.v.g((Integer) SaversKt.s(Integer.valueOf(TextRange.n(j6))), (Integer) SaversKt.s(Integer.valueOf(TextRange.i(j6))));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, TextRange textRange) {
        return a(saverScope, textRange.r());
    }
}
