package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class TextUnit {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TextUnitType[] TextUnitTypes;
    private static final long Unspecified;
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return TextUnit.Unspecified;
        }
    }

    public static final /* synthetic */ TextUnit b(long j6) {
        return new TextUnit(j6);
    }

    public static long c(long j6) {
        return j6;
    }

    public static boolean d(long j6, Object obj) {
        return (obj instanceof TextUnit) && j6 == ((TextUnit) obj).k();
    }

    public static final boolean e(long j6, long j10) {
        return j6 == j10;
    }

    public static final long f(long j6) {
        return j6 & 1095216660480L;
    }

    public static int i(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return d(this.packedValue, obj);
    }

    public int hashCode() {
        return i(this.packedValue);
    }

    public final /* synthetic */ long k() {
        return this.packedValue;
    }

    static {
        TextUnitType.Companion companion = TextUnitType.Companion;
        TextUnitTypes = new TextUnitType[]{TextUnitType.d(companion.c()), TextUnitType.d(companion.b()), TextUnitType.d(companion.a())};
        Unspecified = TextUnitKt.h(0L, Float.NaN);
    }

    public static final long g(long j6) {
        return TextUnitTypes[(int) (f(j6) >>> 32)].j();
    }

    public static final float h(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    @NotNull
    public String toString() {
        return j(this.packedValue);
    }

    private /* synthetic */ TextUnit(long j6) {
        this.packedValue = j6;
    }

    @NotNull
    public static String j(long j6) {
        long jG = g(j6);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.g(jG, companion.c())) {
            return "Unspecified";
        }
        if (TextUnitType.g(jG, companion.b())) {
            return h(j6) + ".sp";
        }
        if (TextUnitType.g(jG, companion.a())) {
            return h(j6) + ".em";
        }
        return "Invalid";
    }
}
