package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import e8.q;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class IntrinsicMeasureBlocks {

    @NotNull
    public static final IntrinsicMeasureBlocks INSTANCE = new IntrinsicMeasureBlocks();

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMinWidth = IntrinsicMeasureBlocks$HorizontalMinWidth$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMinWidth = IntrinsicMeasureBlocks$VerticalMinWidth$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMinHeight = IntrinsicMeasureBlocks$HorizontalMinHeight$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMinHeight = IntrinsicMeasureBlocks$VerticalMinHeight$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMaxWidth = IntrinsicMeasureBlocks$HorizontalMaxWidth$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMaxWidth = IntrinsicMeasureBlocks$VerticalMaxWidth$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMaxHeight = IntrinsicMeasureBlocks$HorizontalMaxHeight$1.INSTANCE;

    @NotNull
    private static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMaxHeight = IntrinsicMeasureBlocks$VerticalMaxHeight$1.INSTANCE;

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> a() {
        return HorizontalMaxHeight;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> b() {
        return HorizontalMaxWidth;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> c() {
        return HorizontalMinHeight;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> d() {
        return HorizontalMinWidth;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> e() {
        return VerticalMaxHeight;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> f() {
        return VerticalMaxWidth;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> g() {
        return VerticalMinHeight;
    }

    @NotNull
    public final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> h() {
        return VerticalMinWidth;
    }

    private IntrinsicMeasureBlocks() {
    }
}
