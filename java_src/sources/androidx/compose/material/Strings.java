package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class Strings {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int NavigationMenu = h(0);
    private static final int CloseDrawer = h(1);
    private static final int CloseSheet = h(2);
    private static final int DefaultErrorMessage = h(3);
    private static final int ExposedDropdownMenu = h(4);
    private static final int SliderRangeStart = h(5);
    private static final int SliderRangeEnd = h(6);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return Strings.CloseDrawer;
        }

        public final int b() {
            return Strings.CloseSheet;
        }

        public final int c() {
            return Strings.DefaultErrorMessage;
        }

        public final int d() {
            return Strings.ExposedDropdownMenu;
        }

        public final int e() {
            return Strings.NavigationMenu;
        }

        public final int f() {
            return Strings.SliderRangeEnd;
        }

        public final int g() {
            return Strings.SliderRangeStart;
        }
    }

    private static int h(int i10) {
        return i10;
    }

    public static boolean i(int i10, Object obj) {
        return (obj instanceof Strings) && i10 == ((Strings) obj).m();
    }

    public static final boolean j(int i10, int i11) {
        return i10 == i11;
    }

    public static int k(int i10) {
        return i10;
    }

    public static String l(int i10) {
        return "Strings(value=" + i10 + ')';
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

    public String toString() {
        return l(this.value);
    }
}
