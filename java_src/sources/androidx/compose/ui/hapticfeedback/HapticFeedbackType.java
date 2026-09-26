package androidx.compose.ui.hapticfeedback;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class HapticFeedbackType {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int value;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PlatformHapticFeedbackType.INSTANCE.a();
        }

        public final int b() {
            return PlatformHapticFeedbackType.INSTANCE.b();
        }
    }

    public static int a(int i10) {
        return i10;
    }

    public static boolean b(int i10, Object obj) {
        return (obj instanceof HapticFeedbackType) && i10 == ((HapticFeedbackType) obj).f();
    }

    public static final boolean c(int i10, int i11) {
        return i10 == i11;
    }

    public static int d(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return b(this.value, obj);
    }

    public final /* synthetic */ int f() {
        return this.value;
    }

    public int hashCode() {
        return d(this.value);
    }

    @NotNull
    public static String e(int i10) {
        Companion companion = Companion;
        if (c(i10, companion.a())) {
            return "LongPress";
        }
        return c(i10, companion.b()) ? "TextHandleMove" : "Invalid";
    }

    @NotNull
    public String toString() {
        return e(this.value);
    }
}
