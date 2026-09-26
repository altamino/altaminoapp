package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Stable
public interface TextFieldColors {
    @Composable
    @NotNull
    State<Color> a(boolean z6, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> b(boolean z6, boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> d(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> e(boolean z6, boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> f(boolean z6, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> g(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> h(boolean z6, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> i(boolean z6, @Nullable Composer composer, int i10);
}
