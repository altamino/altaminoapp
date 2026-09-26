package androidx.compose.ui.layout;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class ScaleFactor {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = ScaleFactorKt.a(Float.NaN, Float.NaN);
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static long a(long j6) {
        return j6;
    }

    public static boolean b(long j6, Object obj) {
        return (obj instanceof ScaleFactor) && j6 == ((ScaleFactor) obj).g();
    }

    public static int e(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return b(this.packedValue, obj);
    }

    public final /* synthetic */ long g() {
        return this.packedValue;
    }

    public int hashCode() {
        return e(this.packedValue);
    }

    public static final float c(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("ScaleFactor is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final float d(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("ScaleFactor is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    @NotNull
    public static String f(long j6) {
        return "ScaleFactor(" + ScaleFactorKt.c(c(j6)) + ", " + ScaleFactorKt.c(d(j6)) + ')';
    }

    @NotNull
    public String toString() {
        return f(this.packedValue);
    }
}
