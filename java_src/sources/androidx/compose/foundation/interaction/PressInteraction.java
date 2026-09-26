package androidx.compose.foundation.interaction;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface PressInteraction extends Interaction {

    @StabilityInferred
    public static final class Cancel implements PressInteraction {
        public static final int $stable = 0;

        @NotNull
        private final Press press;

        @NotNull
        public final Press a() {
            return this.press;
        }

        public Cancel(@NotNull Press press) {
            t.j(press, "press");
            this.press = press;
        }
    }

    @StabilityInferred
    public static final class Press implements PressInteraction {
        public static final int $stable = 0;
        private final long pressPosition;

        public /* synthetic */ Press(long j6, k kVar) {
            this(j6);
        }

        public final long a() {
            return this.pressPosition;
        }

        private Press(long j6) {
            this.pressPosition = j6;
        }
    }

    @StabilityInferred
    public static final class Release implements PressInteraction {
        public static final int $stable = 0;

        @NotNull
        private final Press press;

        @NotNull
        public final Press a() {
            return this.press;
        }

        public Release(@NotNull Press press) {
            t.j(press, "press");
            this.press = press;
        }
    }
}
