package androidx.compose.ui.text.input;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyboardType {
    private final int value;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Text = j(1);
    private static final int Ascii = j(2);
    private static final int Number = j(3);
    private static final int Phone = j(4);
    private static final int Uri = j(5);
    private static final int Email = j(6);
    private static final int Password = j(7);
    private static final int NumberPassword = j(8);
    private static final int Decimal = j(9);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int a() {
            return KeyboardType.Ascii;
        }

        public final int b() {
            return KeyboardType.Decimal;
        }

        public final int c() {
            return KeyboardType.Email;
        }

        public final int d() {
            return KeyboardType.Number;
        }

        public final int e() {
            return KeyboardType.NumberPassword;
        }

        public final int f() {
            return KeyboardType.Password;
        }

        public final int g() {
            return KeyboardType.Phone;
        }

        public final int h() {
            return KeyboardType.Text;
        }

        public final int i() {
            return KeyboardType.Uri;
        }
    }

    public static int j(int i10) {
        return i10;
    }

    public static boolean k(int i10, Object obj) {
        return (obj instanceof KeyboardType) && i10 == ((KeyboardType) obj).o();
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
        if (l(i10, Text)) {
            return "Text";
        }
        if (l(i10, Ascii)) {
            return "Ascii";
        }
        if (l(i10, Number)) {
            return "Number";
        }
        if (l(i10, Phone)) {
            return "Phone";
        }
        if (l(i10, Uri)) {
            return "Uri";
        }
        if (l(i10, Email)) {
            return "Email";
        }
        if (l(i10, Password)) {
            return "Password";
        }
        if (l(i10, NumberPassword)) {
            return "NumberPassword";
        }
        return l(i10, Decimal) ? "Decimal" : "Invalid";
    }

    @NotNull
    public String toString() {
        return n(this.value);
    }
}
