package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class TransformOrigin {
    private final long packedValue;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Center = TransformOriginKt.a(0.5f, 0.5f);

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return TransformOrigin.Center;
        }
    }

    public static final /* synthetic */ TransformOrigin b(long j6) {
        return new TransformOrigin(j6);
    }

    public static long c(long j6) {
        return j6;
    }

    public static boolean d(long j6, Object obj) {
        return (obj instanceof TransformOrigin) && j6 == ((TransformOrigin) obj).j();
    }

    public static final boolean e(long j6, long j10) {
        return j6 == j10;
    }

    public static int h(long j6) {
        return i.a.a(j6);
    }

    public static String i(long j6) {
        return "TransformOrigin(packedValue=" + j6 + ')';
    }

    public boolean equals(Object obj) {
        return d(this.packedValue, obj);
    }

    public int hashCode() {
        return h(this.packedValue);
    }

    public final /* synthetic */ long j() {
        return this.packedValue;
    }

    public String toString() {
        return i(this.packedValue);
    }

    public static final float f(long j6) {
        kotlin.jvm.internal.m mVar = kotlin.jvm.internal.m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final float g(long j6) {
        kotlin.jvm.internal.m mVar = kotlin.jvm.internal.m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    private /* synthetic */ TransformOrigin(long j6) {
        this.packedValue = j6;
    }
}
