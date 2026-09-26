package androidx.core.graphics;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes.dex */
public final class PathSegment {
    private final PointF mEnd;
    private final float mEndFraction;
    private final PointF mStart;
    private final float mStartFraction;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        return Float.compare(this.mStartFraction, pathSegment.mStartFraction) == 0 && Float.compare(this.mEndFraction, pathSegment.mEndFraction) == 0 && this.mStart.equals(pathSegment.mStart) && this.mEnd.equals(pathSegment.mEnd);
    }

    public int hashCode() {
        int iHashCode = this.mStart.hashCode() * 31;
        float f = this.mStartFraction;
        int iFloatToIntBits = (((iHashCode + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31) + this.mEnd.hashCode()) * 31;
        float f6 = this.mEndFraction;
        return iFloatToIntBits + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0);
    }

    public String toString() {
        return "PathSegment{start=" + this.mStart + ", startFraction=" + this.mStartFraction + ", end=" + this.mEnd + ", endFraction=" + this.mEndFraction + b.END_OBJ;
    }

    public PathSegment(@NonNull PointF pointF, float f, @NonNull PointF pointF2, float f6) {
        this.mStart = (PointF) Preconditions.j(pointF, "start == null");
        this.mStartFraction = f;
        this.mEnd = (PointF) Preconditions.j(pointF2, "end == null");
        this.mEndFraction = f6;
    }
}
