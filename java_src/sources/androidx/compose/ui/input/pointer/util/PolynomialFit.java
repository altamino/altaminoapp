package androidx.compose.ui.input.pointer.util;

import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class PolynomialFit {

    @NotNull
    private final List<Float> coefficients;
    private final float confidence;

    @NotNull
    public final List<Float> a() {
        return this.coefficients;
    }

    public final float b() {
        return this.confidence;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PolynomialFit)) {
            return false;
        }
        PolynomialFit polynomialFit = (PolynomialFit) obj;
        return t.e(this.coefficients, polynomialFit.coefficients) && t.e(Float.valueOf(this.confidence), Float.valueOf(polynomialFit.confidence));
    }

    public int hashCode() {
        return (this.coefficients.hashCode() * 31) + Float.floatToIntBits(this.confidence);
    }

    @NotNull
    public String toString() {
        return "PolynomialFit(coefficients=" + this.coefficients + ", confidence=" + this.confidence + ')';
    }

    public PolynomialFit(@NotNull List<Float> coefficients, float f) {
        t.j(coefficients, "coefficients");
        this.coefficients = coefficients;
        this.confidence = f;
    }
}
