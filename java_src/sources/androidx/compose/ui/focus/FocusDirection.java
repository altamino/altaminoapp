package androidx.compose.ui.focus;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class FocusDirection {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Next = j(1);
    private static final int Previous = j(2);
    private static final int Left = j(3);
    private static final int Right = j(4);
    private static final int Up = j(5);
    private static final int Down = j(6);
    private static final int In = j(7);
    private static final int Out = j(8);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return FocusDirection.Down;
        }

        public final int b() {
            return FocusDirection.In;
        }

        public final int c() {
            return FocusDirection.Left;
        }

        public final int d() {
            return FocusDirection.Next;
        }

        public final int e() {
            return FocusDirection.Out;
        }

        public final int f() {
            return FocusDirection.Previous;
        }

        public final int g() {
            return FocusDirection.Right;
        }

        public final int h() {
            return FocusDirection.Up;
        }
    }

    public static final /* synthetic */ FocusDirection i(int i10) {
        return new FocusDirection(i10);
    }

    public static int j(int i10) {
        return i10;
    }

    public static boolean k(int i10, Object obj) {
        return (obj instanceof FocusDirection) && i10 == ((FocusDirection) obj).o();
    }

    public static final boolean l(int i10, int i11) {
        return i10 == i11;
    }

    public static int m(int i10) {
        return i10;
    }

    public boolean equals(Object obj) {
        return k(this.value, obj);
    }

    public int hashCode() {
        return m(this.value);
    }

    public final /* synthetic */ int o() {
        return this.value;
    }

    @NotNull
    public static String n(int i10) {
        if (l(i10, Next)) {
            return "Next";
        }
        if (l(i10, Previous)) {
            return "Previous";
        }
        if (l(i10, Left)) {
            return "Left";
        }
        if (l(i10, Right)) {
            return "Right";
        }
        if (l(i10, Up)) {
            return "Up";
        }
        if (l(i10, Down)) {
            return "Down";
        }
        if (l(i10, In)) {
            return "In";
        }
        return l(i10, Out) ? "Out" : "Invalid FocusDirection";
    }

    @NotNull
    public String toString() {
        return n(this.value);
    }

    private /* synthetic */ FocusDirection(int i10) {
        this.value = i10;
    }
}
