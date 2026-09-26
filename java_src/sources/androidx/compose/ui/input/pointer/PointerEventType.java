package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class PointerEventType {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = h(0);
    private static final int Press = h(1);
    private static final int Release = h(2);
    private static final int Move = h(3);
    private static final int Enter = h(4);
    private static final int Exit = h(5);
    private static final int Scroll = h(6);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return PointerEventType.Enter;
        }

        public final int b() {
            return PointerEventType.Exit;
        }

        public final int c() {
            return PointerEventType.Move;
        }

        public final int d() {
            return PointerEventType.Press;
        }

        public final int e() {
            return PointerEventType.Release;
        }

        public final int f() {
            return PointerEventType.Scroll;
        }

        public final int g() {
            return PointerEventType.Unknown;
        }
    }

    private static int h(int i10) {
        return i10;
    }

    public static boolean i(int i10, Object obj) {
        return (obj instanceof PointerEventType) && i10 == ((PointerEventType) obj).m();
    }

    public static final boolean j(int i10, int i11) {
        return i10 == i11;
    }

    public static int k(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return i(this.value, obj);
    }

    public int hashCode() {
        return k(this.value);
    }

    public final /* synthetic */ int m() {
        return this.value;
    }

    @NotNull
    public static String l(int i10) {
        if (j(i10, Press)) {
            return "Press";
        }
        if (j(i10, Release)) {
            return "Release";
        }
        if (j(i10, Move)) {
            return "Move";
        }
        if (j(i10, Enter)) {
            return "Enter";
        }
        if (j(i10, Exit)) {
            return "Exit";
        }
        return j(i10, Scroll) ? "Scroll" : "Unknown";
    }

    @NotNull
    public String toString() {
        return l(this.value);
    }
}
