package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ComplexDouble {
    private double _imaginary;
    private double _real;

    public final double e() {
        return this._imaginary;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComplexDouble)) {
            return false;
        }
        ComplexDouble complexDouble = (ComplexDouble) obj;
        return t.e(Double.valueOf(this._real), Double.valueOf(complexDouble._real)) && t.e(Double.valueOf(this._imaginary), Double.valueOf(complexDouble._imaginary));
    }

    public final double f() {
        return this._real;
    }

    public int hashCode() {
        return (b.a(this._real) * 31) + b.a(this._imaginary);
    }

    @NotNull
    public String toString() {
        return "ComplexDouble(_real=" + this._real + ", _imaginary=" + this._imaginary + ')';
    }

    public ComplexDouble(double d, double d2) {
        this._real = d;
        this._imaginary = d2;
    }
}
