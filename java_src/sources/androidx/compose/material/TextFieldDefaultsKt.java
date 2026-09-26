package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes6.dex */
public final class TextFieldDefaultsKt {
    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<BorderStroke> b(boolean z6, boolean z10, InteractionSource interactionSource, TextFieldColors textFieldColors, float f, float f6, Composer composer, int i10) {
        State<Dp> stateN;
        composer.G(1097899920);
        State<Boolean> stateA = FocusInteractionKt.a(interactionSource, composer, (i10 >> 6) & 14);
        State<Color> stateD = textFieldColors.d(z6, z10, interactionSource, composer, (i10 & 14) | (i10 & 112) | (i10 & 896) | (i10 & 7168));
        float f7 = c(stateA) ? f : f6;
        if (z6) {
            composer.G(1685712037);
            stateN = AnimateAsStateKt.c(f7, AnimationSpecKt.k(TextFieldImplKt.AnimationDuration, 0, null, 6, null), null, composer, 48, 4);
            composer.Q();
        } else {
            composer.G(1685712135);
            stateN = SnapshotStateKt.n(Dp.c(f6), composer, (i10 >> 15) & 14);
            composer.Q();
        }
        State<BorderStroke> stateN2 = SnapshotStateKt.n(new BorderStroke(stateN.getValue().l(), new SolidColor(stateD.getValue().v(), null), null), composer, 0);
        composer.Q();
        return stateN2;
    }

    private static final boolean c(State<Boolean> state) {
        return state.getValue().booleanValue();
    }
}
