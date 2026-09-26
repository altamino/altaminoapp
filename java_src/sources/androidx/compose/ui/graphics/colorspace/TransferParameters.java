package androidx.compose.ui.graphics.colorspace;

import androidx.compose.animation.core.b;
import com.google.firebase.remoteconfig.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class TransferParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f93a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f94b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f95c;
    private final double d;
    private final double e;
    private final double f;
    private final double gamma;

    public TransferParameters(double d, double d2, double d6, double d7, double d10, double d11, double d12) {
        this.gamma = d;
        this.f93a = d2;
        this.f94b = d6;
        this.f95c = d7;
        this.d = d10;
        this.e = d11;
        this.f = d12;
        if (Double.isNaN(d2) || Double.isNaN(d6) || Double.isNaN(d7) || Double.isNaN(d10) || Double.isNaN(d11) || Double.isNaN(d12) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Parameters cannot be NaN");
        }
        if (d10 < a.DEFAULT_VALUE_FOR_DOUBLE || d10 > 1.0d) {
            throw new IllegalArgumentException("Parameter d must be in the range [0..1], was " + d10);
        }
        if (d10 == a.DEFAULT_VALUE_FOR_DOUBLE && (d2 == a.DEFAULT_VALUE_FOR_DOUBLE || d == a.DEFAULT_VALUE_FOR_DOUBLE)) {
            throw new IllegalArgumentException("Parameter a or g is zero, the transfer function is constant");
        }
        if (d10 >= 1.0d && d7 == a.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("Parameter c is zero, the transfer function is constant");
        }
        if ((d2 == a.DEFAULT_VALUE_FOR_DOUBLE || d == a.DEFAULT_VALUE_FOR_DOUBLE) && d7 == a.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("Parameter a or g is zero, and c is zero, the transfer function is constant");
        }
        if (d7 < a.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("The transfer function must be increasing");
        }
        if (d2 < a.DEFAULT_VALUE_FOR_DOUBLE || d < a.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("The transfer function must be positive or increasing");
        }
    }

    public final double a() {
        return this.f93a;
    }

    public final double b() {
        return this.f94b;
    }

    public final double c() {
        return this.f95c;
    }

    public final double d() {
        return this.d;
    }

    public final double e() {
        return this.e;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransferParameters)) {
            return false;
        }
        TransferParameters transferParameters = (TransferParameters) obj;
        return t.e(Double.valueOf(this.gamma), Double.valueOf(transferParameters.gamma)) && t.e(Double.valueOf(this.f93a), Double.valueOf(transferParameters.f93a)) && t.e(Double.valueOf(this.f94b), Double.valueOf(transferParameters.f94b)) && t.e(Double.valueOf(this.f95c), Double.valueOf(transferParameters.f95c)) && t.e(Double.valueOf(this.d), Double.valueOf(transferParameters.d)) && t.e(Double.valueOf(this.e), Double.valueOf(transferParameters.e)) && t.e(Double.valueOf(this.f), Double.valueOf(transferParameters.f));
    }

    public final double f() {
        return this.f;
    }

    public final double g() {
        return this.gamma;
    }

    public int hashCode() {
        return (((((((((((b.a(this.gamma) * 31) + b.a(this.f93a)) * 31) + b.a(this.f94b)) * 31) + b.a(this.f95c)) * 31) + b.a(this.d)) * 31) + b.a(this.e)) * 31) + b.a(this.f);
    }

    @NotNull
    public String toString() {
        return "TransferParameters(gamma=" + this.gamma + ", a=" + this.f93a + ", b=" + this.f94b + ", c=" + this.f95c + ", d=" + this.d + ", e=" + this.e + ", f=" + this.f + ')';
    }

    public /* synthetic */ TransferParameters(double d, double d2, double d6, double d7, double d10, double d11, double d12, int i10, k kVar) {
        this(d, d2, d6, d7, d10, (i10 & 32) != 0 ? 0.0d : d11, (i10 & 64) != 0 ? 0.0d : d12);
    }
}
