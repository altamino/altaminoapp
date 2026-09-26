package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalMaterialApi
public interface SelectableChipColors {
    @Composable
    @NotNull
    State<Color> b(boolean z6, boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> c(boolean z6, boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> d(boolean z6, boolean z10, @Nullable Composer composer, int i10);
}
