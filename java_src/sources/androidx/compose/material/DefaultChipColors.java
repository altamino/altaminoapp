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

/* JADX INFO: loaded from: classes8.dex */
@Immutable
@ExperimentalMaterialApi
final class DefaultChipColors implements ChipColors {
    private final long backgroundColor;
    private final long contentColor;
    private final long disabledBackgroundColor;
    private final long disabledContentColor;
    private final long disabledLeadingIconContentColor;
    private final long leadingIconContentColor;

    public /* synthetic */ DefaultChipColors(long j6, long j10, long j11, long j12, long j13, long j14, k kVar) {
        this(j6, j10, j11, j12, j13, j14);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultChipColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultChipColors defaultChipColors = (DefaultChipColors) obj;
        return Color.n(this.backgroundColor, defaultChipColors.backgroundColor) && Color.n(this.contentColor, defaultChipColors.contentColor) && Color.n(this.leadingIconContentColor, defaultChipColors.leadingIconContentColor) && Color.n(this.disabledBackgroundColor, defaultChipColors.disabledBackgroundColor) && Color.n(this.disabledContentColor, defaultChipColors.disabledContentColor) && Color.n(this.disabledLeadingIconContentColor, defaultChipColors.disabledLeadingIconContentColor);
    }

    private DefaultChipColors(long j6, long j10, long j11, long j12, long j13, long j14) {
        this.backgroundColor = j6;
        this.contentColor = j10;
        this.leadingIconContentColor = j11;
        this.disabledBackgroundColor = j12;
        this.disabledContentColor = j13;
        this.disabledLeadingIconContentColor = j14;
    }

    public int hashCode() {
        return (((((((((Color.t(this.backgroundColor) * 31) + Color.t(this.contentColor)) * 31) + Color.t(this.leadingIconContentColor)) * 31) + Color.t(this.disabledBackgroundColor)) * 31) + Color.t(this.disabledContentColor)) * 31) + Color.t(this.disabledLeadingIconContentColor);
    }

    @Override // androidx.compose.material.ChipColors
    @Composable
    @NotNull
    public State<Color> a(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-1593588247);
        if (z6) {
            j6 = this.backgroundColor;
        } else {
            j6 = this.disabledBackgroundColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.ChipColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(483145880);
        if (z6) {
            j6 = this.contentColor;
        } else {
            j6 = this.disabledContentColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.ChipColors
    @Composable
    @NotNull
    public State<Color> c(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(1955749013);
        if (z6) {
            j6 = this.leadingIconContentColor;
        } else {
            j6 = this.disabledLeadingIconContentColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }
}
