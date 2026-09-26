package androidx.compose.ui.semantics;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class Role {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Button = h(0);
    private static final int Checkbox = h(1);
    private static final int Switch = h(2);
    private static final int RadioButton = h(3);
    private static final int Tab = h(4);
    private static final int Image = h(5);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return Role.Button;
        }

        public final int b() {
            return Role.Checkbox;
        }

        public final int c() {
            return Role.Image;
        }

        public final int d() {
            return Role.RadioButton;
        }

        public final int e() {
            return Role.Switch;
        }

        public final int f() {
            return Role.Tab;
        }
    }

    public static final /* synthetic */ Role g(int i10) {
        return new Role(i10);
    }

    private static int h(int i10) {
        return i10;
    }

    public static boolean i(int i10, Object obj) {
        return (obj instanceof Role) && i10 == ((Role) obj).m();
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
        if (j(i10, Button)) {
            return "Button";
        }
        if (j(i10, Checkbox)) {
            return "Checkbox";
        }
        if (j(i10, Switch)) {
            return "Switch";
        }
        if (j(i10, RadioButton)) {
            return "RadioButton";
        }
        if (j(i10, Tab)) {
            return "Tab";
        }
        return j(i10, Image) ? "Image" : "Unknown";
    }

    @NotNull
    public String toString() {
        return l(this.value);
    }

    private /* synthetic */ Role(int i10) {
        this.value = i10;
    }
}
