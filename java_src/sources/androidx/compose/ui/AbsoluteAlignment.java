package androidx.compose.ui;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class AbsoluteAlignment {
    public static final int $stable = 0;

    @NotNull
    public static final AbsoluteAlignment INSTANCE = new AbsoluteAlignment();

    @NotNull
    private static final Alignment TopLeft = new BiasAbsoluteAlignment(-1.0f, -1.0f);

    @NotNull
    private static final Alignment TopRight = new BiasAbsoluteAlignment(1.0f, -1.0f);

    @NotNull
    private static final Alignment CenterLeft = new BiasAbsoluteAlignment(-1.0f, 0.0f);

    @NotNull
    private static final Alignment CenterRight = new BiasAbsoluteAlignment(1.0f, 0.0f);

    @NotNull
    private static final Alignment BottomLeft = new BiasAbsoluteAlignment(-1.0f, 1.0f);

    @NotNull
    private static final Alignment BottomRight = new BiasAbsoluteAlignment(1.0f, 1.0f);

    @NotNull
    private static final Alignment.Horizontal Left = new BiasAbsoluteAlignment.Horizontal(-1.0f);

    @NotNull
    private static final Alignment.Horizontal Right = new BiasAbsoluteAlignment.Horizontal(1.0f);

    private AbsoluteAlignment() {
    }
}
