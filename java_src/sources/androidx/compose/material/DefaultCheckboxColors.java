package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.state.ToggleableState;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
@Stable
final class DefaultCheckboxColors implements CheckboxColors {
    private final long checkedBorderColor;
    private final long checkedBoxColor;
    private final long checkedCheckmarkColor;
    private final long disabledBorderColor;
    private final long disabledCheckedBoxColor;
    private final long disabledIndeterminateBorderColor;
    private final long disabledIndeterminateBoxColor;
    private final long disabledUncheckedBoxColor;
    private final long uncheckedBorderColor;
    private final long uncheckedBoxColor;
    private final long uncheckedCheckmarkColor;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            iArr[ToggleableState.On.ordinal()] = 1;
            iArr[ToggleableState.Indeterminate.ordinal()] = 2;
            iArr[ToggleableState.Off.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ DefaultCheckboxColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, k kVar) {
        this(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19);
    }

    private DefaultCheckboxColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19) {
        this.checkedCheckmarkColor = j6;
        this.uncheckedCheckmarkColor = j10;
        this.checkedBoxColor = j11;
        this.uncheckedBoxColor = j12;
        this.disabledCheckedBoxColor = j13;
        this.disabledUncheckedBoxColor = j14;
        this.disabledIndeterminateBoxColor = j15;
        this.checkedBorderColor = j16;
        this.uncheckedBorderColor = j17;
        this.disabledBorderColor = j18;
        this.disabledIndeterminateBorderColor = j19;
    }

    @Override // androidx.compose.material.CheckboxColors
    @Composable
    @NotNull
    public State<Color> a(@NotNull ToggleableState state, @Nullable Composer composer, int i10) {
        t.j(state, "state");
        composer.G(544656267);
        ToggleableState toggleableState = ToggleableState.Off;
        State<Color> stateA = SingleValueAnimationKt.a(state == toggleableState ? this.uncheckedCheckmarkColor : this.checkedCheckmarkColor, AnimationSpecKt.k(state == toggleableState ? 100 : 50, 0, null, 6, null), null, composer, 0, 4);
        composer.Q();
        return stateA;
    }

    @Override // androidx.compose.material.CheckboxColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, @NotNull ToggleableState state, @Nullable Composer composer, int i10) {
        long j6;
        State<Color> stateN;
        t.j(state, "state");
        composer.G(840901029);
        if (z6) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i11 == 1 || i11 == 2) {
                j6 = this.checkedBoxColor;
            } else {
                if (i11 != 3) {
                    throw new s();
                }
                j6 = this.uncheckedBoxColor;
            }
        } else {
            int i12 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i12 == 1) {
                j6 = this.disabledCheckedBoxColor;
            } else if (i12 == 2) {
                j6 = this.disabledIndeterminateBoxColor;
            } else {
                if (i12 != 3) {
                    throw new s();
                }
                j6 = this.disabledUncheckedBoxColor;
            }
        }
        long j10 = j6;
        if (z6) {
            composer.G(-2010643579);
            stateN = SingleValueAnimationKt.a(j10, AnimationSpecKt.k(state == ToggleableState.Off ? 100 : 50, 0, null, 6, null), null, composer, 0, 4);
            composer.Q();
        } else {
            composer.G(-2010643393);
            stateN = SnapshotStateKt.n(Color.h(j10), composer, 0);
            composer.Q();
        }
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.CheckboxColors
    @Composable
    @NotNull
    public State<Color> c(boolean z6, @NotNull ToggleableState state, @Nullable Composer composer, int i10) {
        long j6;
        State<Color> stateN;
        t.j(state, "state");
        composer.G(-1568341342);
        if (z6) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i11 == 1 || i11 == 2) {
                j6 = this.checkedBorderColor;
            } else {
                if (i11 != 3) {
                    throw new s();
                }
                j6 = this.uncheckedBorderColor;
            }
        } else {
            int i12 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i12 == 1) {
                j6 = this.disabledBorderColor;
            } else if (i12 != 2) {
                if (i12 != 3) {
                    throw new s();
                }
                j6 = this.disabledBorderColor;
            } else {
                j6 = this.disabledIndeterminateBorderColor;
            }
        }
        long j10 = j6;
        if (z6) {
            composer.G(-796405338);
            stateN = SingleValueAnimationKt.a(j10, AnimationSpecKt.k(state == ToggleableState.Off ? 100 : 50, 0, null, 6, null), null, composer, 0, 4);
            composer.Q();
        } else {
            composer.G(-796405152);
            stateN = SnapshotStateKt.n(Color.h(j10), composer, 0);
            composer.Q();
        }
        composer.Q();
        return stateN;
    }
}
