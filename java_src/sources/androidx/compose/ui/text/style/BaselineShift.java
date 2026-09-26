package androidx.compose.ui.text.style;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class BaselineShift {
    private final float multiplier;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float Superscript = c(0.5f);
    private static final float Subscript = c(-0.5f);
    private static final float None = c(0.0f);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final float a() {
            return BaselineShift.None;
        }
    }

    public static final /* synthetic */ BaselineShift b(float f) {
        return new BaselineShift(f);
    }

    public static float c(float f) {
        return f;
    }

    public static boolean d(float f, Object obj) {
        if (obj instanceof BaselineShift) {
            return t.e(Float.valueOf(f), Float.valueOf(((BaselineShift) obj).h()));
        }
        return false;
    }

    public static final boolean e(float f, float f6) {
        return t.e(Float.valueOf(f), Float.valueOf(f6));
    }

    public static int f(float f) {
        return Float.floatToIntBits(f);
    }

    public static String g(float f) {
        return "BaselineShift(multiplier=" + f + ')';
    }

    public boolean equals(Object obj) {
        return d(this.multiplier, obj);
    }

    public final /* synthetic */ float h() {
        return this.multiplier;
    }

    public int hashCode() {
        return f(this.multiplier);
    }

    public String toString() {
        return g(this.multiplier);
    }

    private /* synthetic */ BaselineShift(float f) {
        this.multiplier = f;
    }
}
