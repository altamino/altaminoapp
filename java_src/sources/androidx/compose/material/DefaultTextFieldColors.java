package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
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
final class DefaultTextFieldColors implements TextFieldColors {
    private final long backgroundColor;
    private final long cursorColor;
    private final long disabledIndicatorColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconColor;
    private final long disabledPlaceholderColor;
    private final long disabledTextColor;
    private final long disabledTrailingIconColor;
    private final long errorCursorColor;
    private final long errorIndicatorColor;
    private final long errorLabelColor;
    private final long errorLeadingIconColor;
    private final long errorTrailingIconColor;
    private final long focusedIndicatorColor;
    private final long focusedLabelColor;
    private final long leadingIconColor;
    private final long placeholderColor;
    private final long textColor;
    private final long trailingIconColor;
    private final long unfocusedIndicatorColor;
    private final long unfocusedLabelColor;

    public /* synthetic */ DefaultTextFieldColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, k kVar) {
        this(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(DefaultTextFieldColors.class), q0.b(obj.getClass()))) {
            return false;
        }
        DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) obj;
        return Color.n(this.textColor, defaultTextFieldColors.textColor) && Color.n(this.disabledTextColor, defaultTextFieldColors.disabledTextColor) && Color.n(this.cursorColor, defaultTextFieldColors.cursorColor) && Color.n(this.errorCursorColor, defaultTextFieldColors.errorCursorColor) && Color.n(this.focusedIndicatorColor, defaultTextFieldColors.focusedIndicatorColor) && Color.n(this.unfocusedIndicatorColor, defaultTextFieldColors.unfocusedIndicatorColor) && Color.n(this.errorIndicatorColor, defaultTextFieldColors.errorIndicatorColor) && Color.n(this.disabledIndicatorColor, defaultTextFieldColors.disabledIndicatorColor) && Color.n(this.leadingIconColor, defaultTextFieldColors.leadingIconColor) && Color.n(this.disabledLeadingIconColor, defaultTextFieldColors.disabledLeadingIconColor) && Color.n(this.errorLeadingIconColor, defaultTextFieldColors.errorLeadingIconColor) && Color.n(this.trailingIconColor, defaultTextFieldColors.trailingIconColor) && Color.n(this.disabledTrailingIconColor, defaultTextFieldColors.disabledTrailingIconColor) && Color.n(this.errorTrailingIconColor, defaultTextFieldColors.errorTrailingIconColor) && Color.n(this.backgroundColor, defaultTextFieldColors.backgroundColor) && Color.n(this.focusedLabelColor, defaultTextFieldColors.focusedLabelColor) && Color.n(this.unfocusedLabelColor, defaultTextFieldColors.unfocusedLabelColor) && Color.n(this.disabledLabelColor, defaultTextFieldColors.disabledLabelColor) && Color.n(this.errorLabelColor, defaultTextFieldColors.errorLabelColor) && Color.n(this.placeholderColor, defaultTextFieldColors.placeholderColor) && Color.n(this.disabledPlaceholderColor, defaultTextFieldColors.disabledPlaceholderColor);
    }

    private DefaultTextFieldColors(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29) {
        this.textColor = j6;
        this.disabledTextColor = j10;
        this.cursorColor = j11;
        this.errorCursorColor = j12;
        this.focusedIndicatorColor = j13;
        this.unfocusedIndicatorColor = j14;
        this.errorIndicatorColor = j15;
        this.disabledIndicatorColor = j16;
        this.leadingIconColor = j17;
        this.disabledLeadingIconColor = j18;
        this.errorLeadingIconColor = j19;
        this.trailingIconColor = j20;
        this.disabledTrailingIconColor = j21;
        this.errorTrailingIconColor = j22;
        this.backgroundColor = j23;
        this.focusedLabelColor = j24;
        this.unfocusedLabelColor = j25;
        this.disabledLabelColor = j26;
        this.errorLabelColor = j27;
        this.placeholderColor = j28;
        this.disabledPlaceholderColor = j29;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> d(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        long j6;
        State<Color> stateN;
        t.j(interactionSource, "interactionSource");
        composer.G(998675979);
        State<Boolean> stateA = FocusInteractionKt.a(interactionSource, composer, (i10 >> 6) & 14);
        if (!z6) {
            j6 = this.disabledIndicatorColor;
        } else if (z10) {
            j6 = this.errorIndicatorColor;
        } else {
            j6 = k(stateA) ? this.focusedIndicatorColor : this.unfocusedIndicatorColor;
        }
        long j10 = j6;
        if (z6) {
            composer.G(-2054190426);
            stateN = SingleValueAnimationKt.a(j10, AnimationSpecKt.k(TextFieldImplKt.AnimationDuration, 0, null, 6, null), null, composer, 48, 4);
            composer.Q();
        } else {
            composer.G(-2054190321);
            stateN = SnapshotStateKt.n(Color.h(j10), composer, 0);
            composer.Q();
        }
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> g(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        long j6;
        t.j(interactionSource, "interactionSource");
        composer.G(727091888);
        State<Boolean> stateA = FocusInteractionKt.a(interactionSource, composer, (i10 >> 6) & 14);
        if (!z6) {
            j6 = this.disabledLabelColor;
        } else if (z10) {
            j6 = this.errorLabelColor;
        } else {
            j6 = l(stateA) ? this.focusedLabelColor : this.unfocusedLabelColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((Color.t(this.textColor) * 31) + Color.t(this.disabledTextColor)) * 31) + Color.t(this.cursorColor)) * 31) + Color.t(this.errorCursorColor)) * 31) + Color.t(this.focusedIndicatorColor)) * 31) + Color.t(this.unfocusedIndicatorColor)) * 31) + Color.t(this.errorIndicatorColor)) * 31) + Color.t(this.disabledIndicatorColor)) * 31) + Color.t(this.leadingIconColor)) * 31) + Color.t(this.disabledLeadingIconColor)) * 31) + Color.t(this.errorLeadingIconColor)) * 31) + Color.t(this.trailingIconColor)) * 31) + Color.t(this.disabledTrailingIconColor)) * 31) + Color.t(this.errorTrailingIconColor)) * 31) + Color.t(this.backgroundColor)) * 31) + Color.t(this.focusedLabelColor)) * 31) + Color.t(this.unfocusedLabelColor)) * 31) + Color.t(this.disabledLabelColor)) * 31) + Color.t(this.errorLabelColor)) * 31) + Color.t(this.placeholderColor)) * 31) + Color.t(this.disabledPlaceholderColor);
    }

    private static final boolean k(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    private static final boolean l(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> a(boolean z6, @Nullable Composer composer, int i10) {
        composer.G(-1423938813);
        State<Color> stateN = SnapshotStateKt.n(Color.h(this.backgroundColor), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> b(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(1016171324);
        if (!z6) {
            j6 = this.disabledLeadingIconColor;
        } else if (z10) {
            j6 = this.errorLeadingIconColor;
        } else {
            j6 = this.leadingIconColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> e(boolean z6, boolean z10, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(225259054);
        if (!z6) {
            j6 = this.disabledTrailingIconColor;
        } else if (z10) {
            j6 = this.errorTrailingIconColor;
        } else {
            j6 = this.trailingIconColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> f(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(264799724);
        if (z6) {
            j6 = this.placeholderColor;
        } else {
            j6 = this.disabledPlaceholderColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> h(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(9804418);
        if (z6) {
            j6 = this.textColor;
        } else {
            j6 = this.disabledTextColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }

    @Override // androidx.compose.material.TextFieldColors
    @Composable
    @NotNull
    public State<Color> i(boolean z6, @Nullable Composer composer, int i10) {
        long j6;
        composer.G(-1446422485);
        if (z6) {
            j6 = this.errorCursorColor;
        } else {
            j6 = this.cursorColor;
        }
        State<Color> stateN = SnapshotStateKt.n(Color.h(j6), composer, 0);
        composer.Q();
        return stateN;
    }
}
