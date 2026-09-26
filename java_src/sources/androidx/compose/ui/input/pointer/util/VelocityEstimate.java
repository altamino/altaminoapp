package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import i.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class VelocityEstimate {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final VelocityEstimate None;
    private final float confidence;
    private final long durationMillis;
    private final long offset;
    private final long pixelsPerSecond;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final VelocityEstimate a() {
            return VelocityEstimate.None;
        }
    }

    public /* synthetic */ VelocityEstimate(long j6, float f, long j10, long j11, k kVar) {
        this(j6, f, j10, j11);
    }

    public final long b() {
        return this.pixelsPerSecond;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VelocityEstimate)) {
            return false;
        }
        VelocityEstimate velocityEstimate = (VelocityEstimate) obj;
        return Offset.j(this.pixelsPerSecond, velocityEstimate.pixelsPerSecond) && t.e(Float.valueOf(this.confidence), Float.valueOf(velocityEstimate.confidence)) && this.durationMillis == velocityEstimate.durationMillis && Offset.j(this.offset, velocityEstimate.offset);
    }

    public int hashCode() {
        return (((((Offset.o(this.pixelsPerSecond) * 31) + Float.floatToIntBits(this.confidence)) * 31) + a.a(this.durationMillis)) * 31) + Offset.o(this.offset);
    }

    @NotNull
    public String toString() {
        return "VelocityEstimate(pixelsPerSecond=" + ((Object) Offset.t(this.pixelsPerSecond)) + ", confidence=" + this.confidence + ", durationMillis=" + this.durationMillis + ", offset=" + ((Object) Offset.t(this.offset)) + ')';
    }

    static {
        Offset.Companion companion = Offset.Companion;
        None = new VelocityEstimate(companion.c(), 1.0f, 0L, companion.c(), null);
    }

    private VelocityEstimate(long j6, float f, long j10, long j11) {
        this.pixelsPerSecond = j6;
        this.confidence = f;
        this.durationMillis = j10;
        this.offset = j11;
    }
}
