package androidx.compose.ui.platform;

import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.node.RootForTest;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@VisibleForTesting
public interface ViewRootForTest extends RootForTest {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Nullable
        private static e8.l<? super ViewRootForTest, w7.l0> onViewCreatedCallback;

        @Nullable
        public final e8.l<ViewRootForTest, w7.l0> a() {
            return onViewCreatedCallback;
        }

        private Companion() {
        }
    }
}
