package kotlin.text;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class c extends b {
    public static final boolean h(char c7, char c10, boolean z6) {
        if (c7 == c10) {
            return true;
        }
        if (!z6) {
            return false;
        }
        char upperCase = Character.toUpperCase(c7);
        char upperCase2 = Character.toUpperCase(c10);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static int g(char c7) {
        int iB = b.b(c7, 10);
        if (iB >= 0) {
            return iB;
        }
        throw new IllegalArgumentException("Char " + c7 + " is not a decimal digit");
    }

    public static boolean i(char c7) {
        return new j8.c((char) 55296, (char) 57343).j(c7);
    }

    @NotNull
    public static String j(char c7) {
        return b0.a(c7);
    }
}
