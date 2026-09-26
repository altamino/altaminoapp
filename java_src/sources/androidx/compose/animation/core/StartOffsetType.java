package androidx.compose.animation.core;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class StartOffsetType {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Delay = b(-1);
    private static final int FastForward = b(1);
    private final int value;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return StartOffsetType.Delay;
        }
    }

    private static int b(int i10) {
        return i10;
    }

    public static boolean c(int i10, Object obj) {
        return (obj instanceof StartOffsetType) && i10 == ((StartOffsetType) obj).f();
    }

    public static int d(int i10) {
        return i10;
    }

    public static String e(int i10) {
        return "StartOffsetType(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.value, obj);
    }

    public final /* synthetic */ int f() {
        return this.value;
    }

    public int hashCode() {
        return d(this.value);
    }

    public String toString() {
        return e(this.value);
    }
}
