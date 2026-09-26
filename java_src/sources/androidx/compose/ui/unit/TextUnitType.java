package androidx.compose.ui.unit;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class TextUnitType {
    private final long type;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = e(0);
    private static final long Sp = e(4294967296L);
    private static final long Em = e(8589934592L);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return TextUnitType.Em;
        }

        public final long b() {
            return TextUnitType.Sp;
        }

        public final long c() {
            return TextUnitType.Unspecified;
        }
    }

    public static final /* synthetic */ TextUnitType d(long j6) {
        return new TextUnitType(j6);
    }

    public static long e(long j6) {
        return j6;
    }

    public static boolean f(long j6, Object obj) {
        return (obj instanceof TextUnitType) && j6 == ((TextUnitType) obj).j();
    }

    public static final boolean g(long j6, long j10) {
        return j6 == j10;
    }

    public static int h(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return f(this.type, obj);
    }

    public int hashCode() {
        return h(this.type);
    }

    public final /* synthetic */ long j() {
        return this.type;
    }

    @NotNull
    public static String i(long j6) {
        if (g(j6, Unspecified)) {
            return "Unspecified";
        }
        if (g(j6, Sp)) {
            return "Sp";
        }
        return g(j6, Em) ? "Em" : "Invalid";
    }

    @NotNull
    public String toString() {
        return i(this.type);
    }

    private /* synthetic */ TextUnitType(long j6) {
        this.type = j6;
    }
}
