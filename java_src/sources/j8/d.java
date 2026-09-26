package j8;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class d implements e<Float> {
    private final float _endInclusive;
    private final float _start;

    public boolean d(float f) {
        return f >= this._start && f <= this._endInclusive;
    }

    public boolean g(float f, float f6) {
        return f <= f6;
    }

    @Override // j8.e, j8.f
    public boolean isEmpty() {
        return this._start > this._endInclusive;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j8.e
    public /* bridge */ /* synthetic */ boolean a(Comparable comparable, Comparable comparable2) {
        return g(((Number) comparable).floatValue(), ((Number) comparable2).floatValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j8.e
    public /* bridge */ /* synthetic */ boolean b(Comparable comparable) {
        return d(((Number) comparable).floatValue());
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Float c() {
        return Float.valueOf(this._endInclusive);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (this._start != dVar._start || this._endInclusive != dVar._endInclusive) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Float getStart() {
        return Float.valueOf(this._start);
    }

    @NotNull
    public String toString() {
        return this._start + ".." + this._endInclusive;
    }

    public d(float f, float f6) {
        this._start = f;
        this._endInclusive = f6;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Float.floatToIntBits(this._start) * 31) + Float.floatToIntBits(this._endInclusive);
    }
}
