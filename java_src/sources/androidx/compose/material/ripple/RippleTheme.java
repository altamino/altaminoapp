package androidx.compose.material.ripple;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface RippleTheme {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public final RippleAlpha a(long j6, boolean z6) {
            if (z6) {
                return ((double) ColorKt.j(j6)) > 0.5d ? RippleThemeKt.LightThemeHighContrastRippleAlpha : RippleThemeKt.LightThemeLowContrastRippleAlpha;
            }
            return RippleThemeKt.DarkThemeRippleAlpha;
        }

        private Companion() {
        }

        public final long b(long j6, boolean z6) {
            float fJ = ColorKt.j(j6);
            if (!z6 && fJ < 0.5d) {
                return Color.Companion.g();
            }
            return j6;
        }
    }

    @Composable
    long a(@Nullable Composer composer, int i10);

    @Composable
    @NotNull
    RippleAlpha b(@Nullable Composer composer, int i10);
}
