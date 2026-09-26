package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@Stable
public interface WindowInsets {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    int a(@NotNull Density density);

    int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection);

    int c(@NotNull Density density);

    int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }
}
