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

/* JADX INFO: loaded from: classes10.dex */
@Immutable
final class DefaultSwitchColors implements SwitchColors {
    private final long checkedThumbColor;
    private final long checkedTrackColor;
    private final long disabledCheckedThumbColor;
    private final long disabledCheckedTrackColor;
    private final long disabledUncheckedThumbColor;
    private final long disabledUncheckedTrackColor;
    private final long uncheckedThumbColor;
    private final long uncheckedTrackColor;

    public /* synthetic */ DefaultSwitchColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, k kVar) {
        this(j6, j10, j11, j12, j13, j14, j15, j16);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultSwitchColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultSwitchColors defaultSwitchColors = (DefaultSwitchColors) obj;
        return Color.n(this.checkedThumbColor, defaultSwitchColors.checkedThumbColor) && Color.n(this.checkedTrackColor, defaultSwitchColors.checkedTrackColor) && Color.n(this.uncheckedThumbColor, defaultSwitchColors.uncheckedThumbColor) && Color.n(this.uncheckedTrackColor, defaultSwitchColors.uncheckedTrackColor) && Color.n(this.disabledCheckedThumbColor, defaultSwitchColors.disabledCheckedThumbColor) && Color.n(this.disabledCheckedTrackColor, defaultSwitchColors.disabledCheckedTrackColor) && Color.n(this.disabledUncheckedThumbColor, defaultSwitchColors.disabledUncheckedThumbColor) && Color.n(this.disabledUncheckedTrackColor, defaultSwitchColors.disabledUncheckedTrackColor);
    }

    private DefaultSwitchColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        this.checkedThumbColor = j6;
        this.checkedTrackColor = j10;
        this.uncheckedThumbColor = j11;
        this.uncheckedTrackColor = j12;
        this.disabledCheckedThumbColor = j13;
        this.disabledCheckedTrackColor = j14;
        this.disabledUncheckedThumbColor = j15;
        this.disabledUncheckedTrackColor = j16;
    }

    public int hashCode() {
        return (((((((((((((Color.t(this.checkedThumbColor) * 31) + Color.t(this.checkedTrackColor)) * 31) + Color.t(this.uncheckedThumbColor)) * 31) + Color.t(this.uncheckedTrackColor)) * 31) + Color.t(this.disabledCheckedThumbColor)) * 31) + Color.t(this.disabledCheckedTrackColor)) * 31) + Color.t(this.disabledUncheckedThumbColor)) * 31) + Color.t(this.disabledUncheckedTrackColor);
    }

    @Override // androidx.compose.material.SwitchColors
    @Composable
    @NotNull
    public State<Color> a(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-1176343362);
        if (z6) {
            if (z10) {
                j6 = this.checkedTrackColor;
            } else {
                j6 = this.uncheckedTrackColor;
            }
        } else if (z10) {
            j6 = this.disabledCheckedTrackColor;
        } else {
            j6 = this.disabledUncheckedTrackColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.SwitchColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-66424183);
        if (z6) {
            if (z10) {
                j6 = this.checkedThumbColor;
            } else {
                j6 = this.uncheckedThumbColor;
            }
        } else if (z10) {
            j6 = this.disabledCheckedThumbColor;
        } else {
            j6 = this.disabledUncheckedThumbColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }
}
