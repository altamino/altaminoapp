package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@LayoutScopeMarker
@Immutable
public interface RowScope {

    public static final class DefaultImpls {
    }

    @Stable
    @NotNull
    Modifier a(@NotNull Modifier modifier, float f, boolean z6);

    @Stable
    @NotNull
    Modifier b(@NotNull Modifier modifier, @NotNull Alignment.Vertical vertical);
}
