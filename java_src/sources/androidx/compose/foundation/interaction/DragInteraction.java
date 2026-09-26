package androidx.compose.foundation.interaction;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface DragInteraction extends Interaction {

    @StabilityInferred
    public static final class Cancel implements DragInteraction {
        public static final int $stable = 0;

        @NotNull
        private final Start start;

        @NotNull
        public final Start a() {
            return this.start;
        }

        public Cancel(@NotNull Start start) {
            t.j(start, "start");
            this.start = start;
        }
    }

    @StabilityInferred
    public static final class Start implements DragInteraction {
        public static final int $stable = 0;
    }

    @StabilityInferred
    public static final class Stop implements DragInteraction {
        public static final int $stable = 0;

        @NotNull
        private final Start start;

        @NotNull
        public final Start a() {
            return this.start;
        }

        public Stop(@NotNull Start start) {
            t.j(start, "start");
            this.start = start;
        }
    }
}
