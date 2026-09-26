package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Stable
public interface Indication {
    @Composable
    @NotNull
    IndicationInstance a(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);
}
