package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Offset;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class Shadow {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Shadow None = new Shadow(0, 0, 0.0f, 7, null);
    private final float blurRadius;
    private final long color;
    private final long offset;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Shadow a() {
            return Shadow.None;
        }
    }

    public /* synthetic */ Shadow(long j6, long j10, float f, kotlin.jvm.internal.k kVar) {
        this(j6, j10, f);
    }

    public final float b() {
        return this.blurRadius;
    }

    public final long c() {
        return this.color;
    }

    public final long d() {
        return this.offset;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        return Color.n(this.color, shadow.color) && Offset.j(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius;
    }

    private Shadow(long j6, long j10, float f) {
        this.color = j6;
        this.offset = j10;
        this.blurRadius = f;
    }

    public int hashCode() {
        return (((Color.t(this.color) * 31) + Offset.o(this.offset)) * 31) + Float.floatToIntBits(this.blurRadius);
    }

    @NotNull
    public String toString() {
        return "Shadow(color=" + ((Object) Color.u(this.color)) + ", offset=" + ((Object) Offset.t(this.offset)) + ", blurRadius=" + this.blurRadius + ')';
    }

    public /* synthetic */ Shadow(long j6, long j10, float f, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? ColorKt.d(4278190080L) : j6, (i10 & 2) != 0 ? Offset.Companion.c() : j10, (i10 & 4) != 0 ? 0.0f : f, null);
    }
}
