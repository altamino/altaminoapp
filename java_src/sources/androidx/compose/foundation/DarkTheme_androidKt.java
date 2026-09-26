package androidx.compose.foundation;

import android.content.res.Configuration;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class DarkTheme_androidKt {
    @Composable
    @ReadOnlyComposable
    public static final boolean a(@Nullable Composer composer, int i10) {
        if ((((Configuration) composer.x(AndroidCompositionLocals_androidKt.f())).uiMode & 48) == 32) {
            return true;
        }
        return false;
    }
}
