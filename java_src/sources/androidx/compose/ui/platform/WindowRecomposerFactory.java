package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.InternalComposeUiApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@InternalComposeUiApi
public interface WindowRecomposerFactory {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    Recomposer a(@NotNull View view);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final WindowRecomposerFactory LifecycleAware = new WindowRecomposerFactory() { // from class: androidx.compose.ui.platform.WindowRecomposerFactory$Companion$LifecycleAware$1
            @Override // androidx.compose.ui.platform.WindowRecomposerFactory
            @NotNull
            public final Recomposer a(@NotNull View rootView) {
                kotlin.jvm.internal.t.j(rootView, "rootView");
                return WindowRecomposer_androidKt.c(rootView, null, null, 3, null);
            }
        };

        @NotNull
        public final WindowRecomposerFactory a() {
            return LifecycleAware;
        }

        private Companion() {
        }
    }
}
