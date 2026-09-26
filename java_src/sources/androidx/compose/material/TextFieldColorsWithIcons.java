package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@ExperimentalMaterialApi
public interface TextFieldColorsWithIcons extends TextFieldColors {

    public static final class DefaultImpls {
        @Composable
        @NotNull
        public static State<Color> a(@NotNull TextFieldColorsWithIcons textFieldColorsWithIcons, boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
            t.j(interactionSource, "interactionSource");
            composer.G(1279189910);
            State<Color> stateB = textFieldColorsWithIcons.b(z6, z10, composer, (i10 & 14) | (i10 & 112) | ((i10 >> 3) & 896));
            composer.Q();
            return stateB;
        }
    }

    @Composable
    @NotNull
    State<Color> c(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> j(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);
}
