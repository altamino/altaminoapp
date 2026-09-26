package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import i.a;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class PointAtTime {
    private final long point;
    private final long time;

    public /* synthetic */ PointAtTime(long j6, long j10, k kVar) {
        this(j6, j10);
    }

    public final long a() {
        return this.point;
    }

    public final long b() {
        return this.time;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointAtTime)) {
            return false;
        }
        PointAtTime pointAtTime = (PointAtTime) obj;
        return Offset.j(this.point, pointAtTime.point) && this.time == pointAtTime.time;
    }

    public int hashCode() {
        return (Offset.o(this.point) * 31) + a.a(this.time);
    }

    @NotNull
    public String toString() {
        return "PointAtTime(point=" + ((Object) Offset.t(this.point)) + ", time=" + this.time + ')';
    }

    private PointAtTime(long j6, long j10) {
        this.point = j6;
        this.time = j10;
    }
}
