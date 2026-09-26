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

/* JADX INFO: loaded from: classes11.dex */
@Immutable
final class DefaultSliderColors implements SliderColors {
    private final long activeTickColor;
    private final long activeTrackColor;
    private final long disabledActiveTickColor;
    private final long disabledActiveTrackColor;
    private final long disabledInactiveTickColor;
    private final long disabledInactiveTrackColor;
    private final long disabledThumbColor;
    private final long inactiveTickColor;
    private final long inactiveTrackColor;
    private final long thumbColor;

    public /* synthetic */ DefaultSliderColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, k kVar) {
        this(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultSliderColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultSliderColors defaultSliderColors = (DefaultSliderColors) obj;
        return Color.n(this.thumbColor, defaultSliderColors.thumbColor) && Color.n(this.disabledThumbColor, defaultSliderColors.disabledThumbColor) && Color.n(this.activeTrackColor, defaultSliderColors.activeTrackColor) && Color.n(this.inactiveTrackColor, defaultSliderColors.inactiveTrackColor) && Color.n(this.disabledActiveTrackColor, defaultSliderColors.disabledActiveTrackColor) && Color.n(this.disabledInactiveTrackColor, defaultSliderColors.disabledInactiveTrackColor) && Color.n(this.activeTickColor, defaultSliderColors.activeTickColor) && Color.n(this.inactiveTickColor, defaultSliderColors.inactiveTickColor) && Color.n(this.disabledActiveTickColor, defaultSliderColors.disabledActiveTickColor) && Color.n(this.disabledInactiveTickColor, defaultSliderColors.disabledInactiveTickColor);
    }

    private DefaultSliderColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18) {
        this.thumbColor = j6;
        this.disabledThumbColor = j10;
        this.activeTrackColor = j11;
        this.inactiveTrackColor = j12;
        this.disabledActiveTrackColor = j13;
        this.disabledInactiveTrackColor = j14;
        this.activeTickColor = j15;
        this.inactiveTickColor = j16;
        this.disabledActiveTickColor = j17;
        this.disabledInactiveTickColor = j18;
    }

    public int hashCode() {
        return (((((((((((((((((Color.t(this.thumbColor) * 31) + Color.t(this.disabledThumbColor)) * 31) + Color.t(this.activeTrackColor)) * 31) + Color.t(this.inactiveTrackColor)) * 31) + Color.t(this.disabledActiveTrackColor)) * 31) + Color.t(this.disabledInactiveTrackColor)) * 31) + Color.t(this.activeTickColor)) * 31) + Color.t(this.inactiveTickColor)) * 31) + Color.t(this.disabledActiveTickColor)) * 31) + Color.t(this.disabledInactiveTickColor);
    }

    @Override // androidx.compose.material.SliderColors
    @Composable
    @NotNull
    public State<Color> a(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(1575395620);
        if (z6) {
            if (z10) {
                j6 = this.activeTrackColor;
            } else {
                j6 = this.inactiveTrackColor;
            }
        } else if (z10) {
            j6 = this.disabledActiveTrackColor;
        } else {
            j6 = this.disabledInactiveTrackColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.SliderColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-1491563694);
        if (z6) {
            if (z10) {
                j6 = this.activeTickColor;
            } else {
                j6 = this.inactiveTickColor;
            }
        } else if (z10) {
            j6 = this.disabledActiveTickColor;
        } else {
            j6 = this.disabledInactiveTickColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.SliderColors
    @Composable
    @NotNull
    public State<Color> c(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-1733795637);
        if (z6) {
            j6 = this.thumbColor;
        } else {
            j6 = this.disabledThumbColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }
}
