package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Stable
public interface ButtonColors {
    @Composable
    @NotNull
    State<Color> a(boolean z6, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> b(boolean z6, @Nullable Composer composer, int i10);
}
