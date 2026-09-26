package kotlin.text;

import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class w extends v {
    @NotNull
    public static String e1(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(j8.o.j(i10, str.length()));
            kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static String f1(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        if (i10 >= 0) {
            return k1(str, j8.o.e(str.length() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static char g1(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(0);
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static char h1(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        if (charSequence.length() != 0) {
            return charSequence.charAt(u.W(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    @NotNull
    public static CharSequence i1(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        StringBuilder sbReverse = new StringBuilder(charSequence).reverse();
        kotlin.jvm.internal.t.i(sbReverse, "reverse(...)");
        return sbReverse;
    }

    public static char j1(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        int length = charSequence.length();
        if (length == 0) {
            throw new NoSuchElementException("Char sequence is empty.");
        }
        if (length == 1) {
            return charSequence.charAt(0);
        }
        throw new IllegalArgumentException("Char sequence has more than one element.");
    }

    @NotNull
    public static String k1(@NotNull String str, int i10) {
        kotlin.jvm.internal.t.j(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(0, j8.o.j(i10, str.length()));
            kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }
}
