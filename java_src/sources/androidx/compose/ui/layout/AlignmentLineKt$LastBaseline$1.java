package androidx.compose.ui.layout;

import e8.p;
import kotlin.jvm.internal.q;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class AlignmentLineKt$LastBaseline$1 extends q implements p<Integer, Integer, Integer> {
    public static final AlignmentLineKt$LastBaseline$1 INSTANCE = new AlignmentLineKt$LastBaseline$1();

    AlignmentLineKt$LastBaseline$1() {
        super(2, g8.a.class, "max", "max(II)I", 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, Integer num2) {
        return a(num.intValue(), num2.intValue());
    }

    @NotNull
    public final Integer a(int i10, int i11) {
        return Integer.valueOf(Math.max(i10, i11));
    }
}
