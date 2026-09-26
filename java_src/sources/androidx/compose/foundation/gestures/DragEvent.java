package androidx.compose.foundation.gestures;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
abstract class DragEvent {

    @StabilityInferred
    public static final class DragCancelled extends DragEvent {
        public static final int $stable = 0;

        @NotNull
        public static final DragCancelled INSTANCE = new DragCancelled();

        private DragCancelled() {
            super(null);
        }
    }

    @StabilityInferred
    public static final class DragDelta extends DragEvent {
        public static final int $stable = 0;
        private final float delta;
        private final long pointerPosition;

        public /* synthetic */ DragDelta(float f, long j6, k kVar) {
            this(f, j6);
        }

        public final float a() {
            return this.delta;
        }

        public final long b() {
            return this.pointerPosition;
        }

        private DragDelta(float f, long j6) {
            super(null);
            this.delta = f;
            this.pointerPosition = j6;
        }
    }

    @StabilityInferred
    public static final class DragStarted extends DragEvent {
        public static final int $stable = 0;
        private final long startPoint;

        public /* synthetic */ DragStarted(long j6, k kVar) {
            this(j6);
        }

        public final long a() {
            return this.startPoint;
        }

        private DragStarted(long j6) {
            super(null);
            this.startPoint = j6;
        }
    }

    @StabilityInferred
    public static final class DragStopped extends DragEvent {
        public static final int $stable = 0;
        private final float velocity;

        public DragStopped(float f) {
            super(null);
            this.velocity = f;
        }

        public final float a() {
            return this.velocity;
        }
    }

    public /* synthetic */ DragEvent(k kVar) {
        this();
    }

    private DragEvent() {
    }
}
