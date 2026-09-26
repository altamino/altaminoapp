package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
@ExperimentalMaterialApi
final class DefaultSelectableChipColors implements SelectableChipColors {
    private final long backgroundColor;
    private final long contentColor;
    private final long disabledBackgroundColor;
    private final long disabledContentColor;
    private final long disabledLeadingIconColor;
    private final long leadingIconColor;
    private final long selectedBackgroundColor;
    private final long selectedContentColor;
    private final long selectedLeadingIconColor;

    public /* synthetic */ DefaultSelectableChipColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, k kVar) {
        this(j6, j10, j11, j12, j13, j14, j15, j16, j17);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultSelectableChipColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultSelectableChipColors defaultSelectableChipColors = (DefaultSelectableChipColors) obj;
        return Color.n(this.backgroundColor, defaultSelectableChipColors.backgroundColor) && Color.n(this.contentColor, defaultSelectableChipColors.contentColor) && Color.n(this.leadingIconColor, defaultSelectableChipColors.leadingIconColor) && Color.n(this.disabledBackgroundColor, defaultSelectableChipColors.disabledBackgroundColor) && Color.n(this.disabledContentColor, defaultSelectableChipColors.disabledContentColor) && Color.n(this.disabledLeadingIconColor, defaultSelectableChipColors.disabledLeadingIconColor) && Color.n(this.selectedBackgroundColor, defaultSelectableChipColors.selectedBackgroundColor) && Color.n(this.selectedContentColor, defaultSelectableChipColors.selectedContentColor) && Color.n(this.selectedLeadingIconColor, defaultSelectableChipColors.selectedLeadingIconColor);
    }

    private DefaultSelectableChipColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17) {
        this.backgroundColor = j6;
        this.contentColor = j10;
        this.leadingIconColor = j11;
        this.disabledBackgroundColor = j12;
        this.disabledContentColor = j13;
        this.disabledLeadingIconColor = j14;
        this.selectedBackgroundColor = j15;
        this.selectedContentColor = j16;
        this.selectedLeadingIconColor = j17;
    }

    public int hashCode() {
        return (((((((((((((((Color.t(this.backgroundColor) * 31) + Color.t(this.contentColor)) * 31) + Color.t(this.leadingIconColor)) * 31) + Color.t(this.disabledBackgroundColor)) * 31) + Color.t(this.disabledContentColor)) * 31) + Color.t(this.disabledLeadingIconColor)) * 31) + Color.t(this.selectedBackgroundColor)) * 31) + Color.t(this.selectedContentColor)) * 31) + Color.t(this.selectedLeadingIconColor);
    }

    @Override // androidx.compose.material.SelectableChipColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(189838188);
        if (!z6) {
            j6 = this.disabledLeadingIconColor;
        } else if (!z10) {
            j6 = this.leadingIconColor;
        } else {
            j6 = this.selectedLeadingIconColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.SelectableChipColors
    @Composable
    @NotNull
    public State<Color> c(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(2025240134);
        if (!z6) {
            j6 = this.disabledContentColor;
        } else if (!z10) {
            j6 = this.contentColor;
        } else {
            j6 = this.selectedContentColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.SelectableChipColors
    @Composable
    @NotNull
    public State<Color> d(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-403836585);
        if (!z6) {
            j6 = this.disabledBackgroundColor;
        } else if (!z10) {
            j6 = this.backgroundColor;
        } else {
            j6 = this.selectedBackgroundColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }
}
