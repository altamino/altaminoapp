package androidx.compose.foundation.interaction;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface HoverInteraction extends Interaction {

    @StabilityInferred
    public static final class Enter implements HoverInteraction {
        public static final int $stable = 0;
    }

    @StabilityInferred
    public static final class Exit implements HoverInteraction {
        public static final int $stable = 0;

        @NotNull
        private final Enter enter;

        @NotNull
        public final Enter a() {
            return this.enter;
        }

        public Exit(@NotNull Enter enter) {
            t.j(enter, "enter");
            this.enter = enter;
        }
    }
}
