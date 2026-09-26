package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.ExperimentalTextApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public interface Font {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final long MaximumAsyncTimeout = 15000;

    public interface ResourceLoader {
        @NotNull
        Object a(@NotNull Font font);
    }

    @ExperimentalTextApi
    int a();

    @NotNull
    FontWeight b();

    int c();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final long MaximumAsyncTimeout = 15000;

        private Companion() {
        }
    }
}
