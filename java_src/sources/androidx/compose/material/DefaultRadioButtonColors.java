package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
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

/* JADX INFO: loaded from: classes9.dex */
@Immutable
final class DefaultRadioButtonColors implements RadioButtonColors {
    private final long disabledColor;
    private final long selectedColor;
    private final long unselectedColor;

    public /* synthetic */ DefaultRadioButtonColors(long j6, long j10, long j11, k kVar) {
        this(j6, j10, j11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultRadioButtonColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultRadioButtonColors defaultRadioButtonColors = (DefaultRadioButtonColors) obj;
        return Color.n(this.selectedColor, defaultRadioButtonColors.selectedColor) && Color.n(this.unselectedColor, defaultRadioButtonColors.unselectedColor) && Color.n(this.disabledColor, defaultRadioButtonColors.disabledColor);
    }

    private DefaultRadioButtonColors(long j6, long j10, long j11) {
        this.selectedColor = j6;
        this.unselectedColor = j10;
        this.disabledColor = j11;
    }

    public int hashCode() {
        return (((Color.t(this.selectedColor) * 31) + Color.t(this.unselectedColor)) * 31) + Color.t(this.disabledColor);
    }

    @Override // androidx.compose.material.RadioButtonColors
    @Composable
    @NotNull
    public State<Color> a(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        State<Color> stateN;
        composer.G(1243421834);
        if (!z6) {
            j6 = this.disabledColor;
        } else if (!z10) {
            j6 = this.unselectedColor;
        } else {
            j6 = this.selectedColor;
        }
        long j10 = j6;
        if (z6) {
            composer.G(-1052799218);
            stateN = SingleValueAnimationKt.a(j10, AnimationSpecKt.k(100, 0, null, 6, null), null, composer, 48, 4);
            composer.Q();
        } else {
            composer.G(-1052799113);
            stateN = SnapshotStateKt.n(Color.h(j10), composer, 0);
            composer.Q();
        }
        composer.Q();
        return stateN;
    }
}
