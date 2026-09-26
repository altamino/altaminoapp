package androidx.compose.foundation;

import android.os.Build;
import android.view.View;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
@Stable
public interface PlatformMagnifierFactory {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    PlatformMagnifier a(@NotNull MagnifierStyle magnifierStyle, @NotNull View view, @NotNull Density density, float f);

    boolean b();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Stable
        @NotNull
        public final PlatformMagnifierFactory a() {
            if (MagnifierKt.c(0, 1, null)) {
                return Build.VERSION.SDK_INT == 28 ? PlatformMagnifierFactoryApi28Impl.INSTANCE : PlatformMagnifierFactoryApi29Impl.INSTANCE;
            }
            throw new UnsupportedOperationException("Magnifier is only supported on API level 28 and higher.");
        }

        private Companion() {
        }
    }
}
