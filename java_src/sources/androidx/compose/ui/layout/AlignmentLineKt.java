package androidx.compose.ui.layout;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class AlignmentLineKt {

    @NotNull
    private static final HorizontalAlignmentLine FirstBaseline = new HorizontalAlignmentLine(AlignmentLineKt$FirstBaseline$1.INSTANCE);

    @NotNull
    private static final HorizontalAlignmentLine LastBaseline = new HorizontalAlignmentLine(AlignmentLineKt$LastBaseline$1.INSTANCE);

    @NotNull
    public static final HorizontalAlignmentLine a() {
        return FirstBaseline;
    }

    @NotNull
    public static final HorizontalAlignmentLine b() {
        return LastBaseline;
    }

    public static final int c(@NotNull AlignmentLine alignmentLine, int i10, int i11) {
        t.j(alignmentLine, "<this>");
        return alignmentLine.a().invoke(Integer.valueOf(i10), Integer.valueOf(i11)).intValue();
    }
}
