package kotlin.text;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import kotlin.collections.m0;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class t extends s {
    public static boolean A(@NotNull String str, int i10, @NotNull String other, int i11, int i12, boolean z6) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        return !z6 ? str.regionMatches(i10, other, i11, i12) : str.regionMatches(z6, i10, other, i11, i12);
    }

    public static /* synthetic */ boolean B(String str, int i10, String str2, int i11, int i12, boolean z6, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z6 = false;
        }
        return A(str, i10, str2, i11, i12, z6);
    }

    @NotNull
    public static String C(@NotNull CharSequence charSequence, int i10) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
        }
        if (i10 == 0) {
            return "";
        }
        if (i10 == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                cArr[i11] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i10);
        m0 m0VarJ = new j8.i(1, i10).iterator();
        while (m0VarJ.hasNext()) {
            m0VarJ.nextInt();
            sb.append(charSequence);
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.g(string);
        return string;
    }

    @NotNull
    public static final String D(@NotNull String str, char c7, char c10, boolean z6) {
        kotlin.jvm.internal.t.j(str, "<this>");
        if (!z6) {
            String strReplace = str.replace(c7, c10);
            kotlin.jvm.internal.t.i(strReplace, "replace(...)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (c.h(cCharAt, c7, z6)) {
                cCharAt = c10;
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    @NotNull
    public static String E(@NotNull String str, @NotNull String oldValue, @NotNull String newValue, boolean z6) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(oldValue, "oldValue");
        kotlin.jvm.internal.t.j(newValue, "newValue");
        int i10 = 0;
        int iY = u.Y(str, oldValue, 0, z6);
        if (iY < 0) {
            return str;
        }
        int length = oldValue.length();
        int iE = j8.o.e(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i10, iY);
            sb.append(newValue);
            i10 = iY + length;
            if (iY >= str.length()) {
                break;
            }
            iY = u.Y(str, oldValue, iY + iE, z6);
        } while (iY > 0);
        sb.append((CharSequence) str, i10, str.length());
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String F(String str, char c7, char c10, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        return D(str, c7, c10, z6);
    }

    public static /* synthetic */ String G(String str, String str2, String str3, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        return E(str, str2, str3, z6);
    }

    public static boolean H(@NotNull String str, @NotNull String prefix, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        return !z6 ? str.startsWith(prefix, i10) : A(str, i10, prefix, 0, prefix.length(), z6);
    }

    public static boolean I(@NotNull String str, @NotNull String prefix, boolean z6) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        return !z6 ? str.startsWith(prefix) : A(str, 0, prefix, 0, prefix.length(), z6);
    }

    public static /* synthetic */ boolean J(String str, String str2, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        return H(str, str2, i10, z6);
    }

    public static /* synthetic */ boolean K(String str, String str2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return I(str, str2, z6);
    }

    @NotNull
    public static String q(@NotNull char[] cArr) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        return new String(cArr);
    }

    @NotNull
    public static String r(@NotNull char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        kotlin.collections.c.Companion.a(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    @NotNull
    public static String s(@NotNull byte[] bArr) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        return new String(bArr, d.UTF_8);
    }

    @NotNull
    public static byte[] t(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        byte[] bytes = str.getBytes(d.UTF_8);
        kotlin.jvm.internal.t.i(bytes, "getBytes(...)");
        return bytes;
    }

    public static boolean u(@NotNull String str, @NotNull String suffix, boolean z6) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(suffix, "suffix");
        return !z6 ? str.endsWith(suffix) : A(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean v(String str, String str2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return u(str, str2, z6);
    }

    public static boolean w(@Nullable String str, @Nullable String str2, boolean z6) {
        if (str == null) {
            return str2 == null;
        }
        return !z6 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static /* synthetic */ boolean x(String str, String str2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return w(str, str2, z6);
    }

    @NotNull
    public static Comparator<String> y(@NotNull u0 u0Var) {
        kotlin.jvm.internal.t.j(u0Var, "<this>");
        Comparator<String> CASE_INSENSITIVE_ORDER = String.CASE_INSENSITIVE_ORDER;
        kotlin.jvm.internal.t.i(CASE_INSENSITIVE_ORDER, "CASE_INSENSITIVE_ORDER");
        return CASE_INSENSITIVE_ORDER;
    }

    public static boolean z(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        if (charSequence.length() != 0) {
            Iterable iterableV = u.V(charSequence);
            if (!(iterableV instanceof Collection) || !((Collection) iterableV).isEmpty()) {
                Iterator it = iterableV.iterator();
                while (it.hasNext()) {
                    if (!b.c(charSequence.charAt(((m0) it).nextInt()))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
