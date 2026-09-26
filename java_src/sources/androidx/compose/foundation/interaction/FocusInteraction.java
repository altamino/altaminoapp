package androidx.compose.foundation.interaction;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface FocusInteraction extends Interaction {

    @StabilityInferred
    public static final class Focus implements FocusInteraction {
        public static final int $stable = 0;
    }

    @StabilityInferred
    public static final class Unfocus implements FocusInteraction {
        public static final int $stable = 0;

        @NotNull
        private final Focus focus;

        @NotNull
        public final Focus a() {
            return this.focus;
        }

        public Unfocus(@NotNull Focus focus) {
            t.j(focus, "focus");
            this.focus = focus;
        }
    }
}
