package io.ktor.http;

import com.narvii.chat.input.MentionedEditText;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class k0 {

    @NotNull
    private static final List<String> ROOT_PATH = kotlin.collections.u.e("");

    static final class a extends kotlin.jvm.internal.v implements e8.p<String, List<? extends String>, w7.l0> {
        final /* synthetic */ f0 $this_parseQuery;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(f0 f0Var) {
            super(2);
            this.$this_parseQuery = f0Var;
        }

        public final void a(@NotNull String key, @NotNull List<String> values) {
            kotlin.jvm.internal.t.j(key, "key");
            kotlin.jvm.internal.t.j(values, "values");
            this.$this_parseQuery.e().d(key, values);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ w7.l0 invoke(String str, List<? extends String> list) {
            a(str, list);
            return w7.l0.INSTANCE;
        }
    }

    private static final int a(String str, int i10, int i11, char c7) {
        int i12 = 0;
        while (true) {
            int i13 = i10 + i12;
            if (i13 >= i11 || str.charAt(i13) != c7) {
                break;
            }
            i12++;
        }
        return i12;
    }

    @NotNull
    public static final List<String> d() {
        return ROOT_PATH;
    }

    private static final int e(String str, int i10, int i11) {
        boolean z6 = false;
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '[') {
                z6 = true;
            } else if (cCharAt == ']') {
                z6 = false;
            } else if (cCharAt == ':' && !z6) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private static final void f(f0 f0Var, String str, int i10, int i11, int i12) {
        if (i12 != 2) {
            if (i12 != 3) {
                throw new IllegalArgumentException("Invalid file url: " + str);
            }
            f0Var.w("");
            StringBuilder sb = new StringBuilder();
            sb.append('/');
            String strSubstring = str.substring(i10, i11);
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            h0.i(f0Var, sb.toString());
            return;
        }
        int iB0 = kotlin.text.u.b0(str, '/', i10, false, 4, null);
        if (iB0 == -1 || iB0 == i11) {
            String strSubstring2 = str.substring(i10, i11);
            kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            f0Var.w(strSubstring2);
        } else {
            String strSubstring3 = str.substring(i10, iB0);
            kotlin.jvm.internal.t.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
            f0Var.w(strSubstring3);
            String strSubstring4 = str.substring(iB0, i11);
            kotlin.jvm.internal.t.i(strSubstring4, "this as java.lang.String…ing(startIndex, endIndex)");
            h0.i(f0Var, strSubstring4);
        }
    }

    private static final int i(f0 f0Var, String str, int i10, int i11) {
        int i12 = i10 + 1;
        if (i12 == i11) {
            f0Var.z(true);
            return i11;
        }
        Integer numValueOf = Integer.valueOf(kotlin.text.u.b0(str, '#', i12, false, 4, null));
        if (numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            i11 = numValueOf.intValue();
        }
        String strSubstring = str.substring(i12, i11);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        e0.d(strSubstring, 0, 0, false, 6, null).d(new a(f0Var));
        return i11;
    }

    private static final void g(f0 f0Var, String str, int i10, int i11) {
        if (i10 >= i11 || str.charAt(i10) != '#') {
            return;
        }
        String strSubstring = str.substring(i10 + 1, i11);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        f0Var.r(strSubstring);
    }

    private static final void h(f0 f0Var, String str, int i10, int i11) {
        int iC0 = kotlin.text.u.c0(str, MentionedEditText.DEFAULT_METION_TAG, i10, false, 4, null);
        if (iC0 == -1) {
            throw new IllegalArgumentException("Invalid mailto url: " + str + ", it should contain '@'.");
        }
        String strSubstring = str.substring(i10, iC0);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        f0Var.A(b.i(strSubstring, 0, 0, null, 7, null));
        String strSubstring2 = str.substring(iC0 + 1, i11);
        kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        f0Var.w(strSubstring2);
    }

    @NotNull
    public static final f0 j(@NotNull f0 f0Var, @NotNull String urlString) {
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        kotlin.jvm.internal.t.j(urlString, "urlString");
        if (kotlin.text.t.z(urlString)) {
            return f0Var;
        }
        try {
            return k(f0Var, urlString);
        } catch (Throwable th) {
            throw new j0(urlString, th);
        }
    }

    @NotNull
    public static final f0 k(@NotNull f0 f0Var, @NotNull String urlString) {
        int i10;
        int i11;
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        kotlin.jvm.internal.t.j(urlString, "urlString");
        int length = urlString.length();
        int i12 = 0;
        while (true) {
            if (i12 >= length) {
                i12 = -1;
                break;
            }
            if (!kotlin.text.b.c(urlString.charAt(i12))) {
                break;
            }
            i12++;
        }
        int length2 = urlString.length() - 1;
        if (length2 < 0) {
            i10 = -1;
            break;
        }
        while (true) {
            int i13 = length2 - 1;
            if (!kotlin.text.b.c(urlString.charAt(length2))) {
                i10 = length2;
                break;
            }
            if (i13 < 0) {
                i10 = -1;
                break;
            }
            length2 = i13;
        }
        int i14 = i10 + 1;
        int iC = c(urlString, i12, i14);
        if (iC > 0) {
            String strSubstring = urlString.substring(i12, i12 + iC);
            kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            f0Var.y(l0.Companion.a(strSubstring));
            i12 += iC + 1;
        }
        int iA = a(urlString, i12, i14, '/');
        int iIntValue = i12 + iA;
        if (kotlin.jvm.internal.t.e(f0Var.o().d(), "file")) {
            f(f0Var, urlString, iIntValue, i14, iA);
            return f0Var;
        }
        if (kotlin.jvm.internal.t.e(f0Var.o().d(), "mailto")) {
            if (iA != 0) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            h(f0Var, urlString, iIntValue, i14);
            return f0Var;
        }
        if (iA >= 2) {
            int i15 = iIntValue;
            while (true) {
                i11 = i15;
                Integer numValueOf = Integer.valueOf(kotlin.text.u.e0(urlString, io.ktor.util.i.b("@/\\?#"), i15, false, 4, null));
                if (numValueOf.intValue() <= 0) {
                    numValueOf = null;
                }
                iIntValue = numValueOf != null ? numValueOf.intValue() : i14;
                if (iIntValue >= i14 || urlString.charAt(iIntValue) != '@') {
                    break;
                }
                int iE = e(urlString, i11, iIntValue);
                if (iE != -1) {
                    String strSubstring2 = urlString.substring(i11, iE);
                    kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    f0Var.v(strSubstring2);
                    String strSubstring3 = urlString.substring(iE + 1, iIntValue);
                    kotlin.jvm.internal.t.i(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    f0Var.t(strSubstring3);
                } else {
                    String strSubstring4 = urlString.substring(i11, iIntValue);
                    kotlin.jvm.internal.t.i(strSubstring4, "this as java.lang.String…ing(startIndex, endIndex)");
                    f0Var.v(strSubstring4);
                }
                i15 = iIntValue + 1;
            }
            b(f0Var, urlString, i11, iIntValue);
        }
        int i16 = iIntValue;
        if (i16 >= i14) {
            f0Var.u(urlString.charAt(i10) == '/' ? ROOT_PATH : kotlin.collections.v.m());
            return f0Var;
        }
        f0Var.u(iA == 0 ? kotlin.collections.d0.c0(f0Var.g(), 1) : kotlin.collections.v.m());
        Integer numValueOf2 = Integer.valueOf(kotlin.text.u.e0(urlString, io.ktor.util.i.b("?#"), i16, false, 4, null));
        Integer num = numValueOf2.intValue() > 0 ? numValueOf2 : null;
        int iIntValue2 = num != null ? num.intValue() : i14;
        if (iIntValue2 > i16) {
            String strSubstring5 = urlString.substring(i16, iIntValue2);
            kotlin.jvm.internal.t.i(strSubstring5, "this as java.lang.String…ing(startIndex, endIndex)");
            f0Var.u(kotlin.collections.d0.D0((f0Var.g().size() == 1 && ((CharSequence) kotlin.collections.d0.j0(f0Var.g())).length() == 0) ? kotlin.collections.v.m() : f0Var.g(), kotlin.collections.d0.D0(iA == 1 ? ROOT_PATH : kotlin.collections.v.m(), kotlin.jvm.internal.t.e(strSubstring5, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING) ? ROOT_PATH : kotlin.text.u.B0(strSubstring5, new char[]{'/'}, false, 0, 6, null))));
            i16 = iIntValue2;
        }
        if (i16 < i14 && urlString.charAt(i16) == '?') {
            i16 = i(f0Var, urlString, i16, i14);
        }
        g(f0Var, urlString, i16, i14);
        return f0Var;
    }

    private static final void b(f0 f0Var, String str, int i10, int i11) {
        int iIntValue;
        Integer numValueOf = Integer.valueOf(e(str, i10, i11));
        if (numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            iIntValue = numValueOf.intValue();
        } else {
            iIntValue = i11;
        }
        String strSubstring = str.substring(i10, iIntValue);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        f0Var.w(strSubstring);
        int i12 = iIntValue + 1;
        if (i12 < i11) {
            String strSubstring2 = str.substring(i12, i11);
            kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            f0Var.x(Integer.parseInt(strSubstring2));
            return;
        }
        f0Var.x(0);
    }

    private static final int c(String str, int i10, int i11) {
        int i12;
        int i13;
        char cCharAt = str.charAt(i10);
        if (('a' <= cCharAt && cCharAt < '{') || ('A' <= cCharAt && cCharAt < '[')) {
            i12 = i10;
            i13 = -1;
        } else {
            i12 = i10;
            i13 = i12;
        }
        while (i12 < i11) {
            char cCharAt2 = str.charAt(i12);
            if (cCharAt2 == ':') {
                if (i13 == -1) {
                    return i12 - i10;
                }
                throw new IllegalArgumentException("Illegal character in scheme at position " + i13);
            }
            if (cCharAt2 == '/' || cCharAt2 == '?' || cCharAt2 == '#') {
                break;
            }
            if (i13 == -1 && (('a' > cCharAt2 || cCharAt2 >= '{') && (('A' > cCharAt2 || cCharAt2 >= '[') && (('0' > cCharAt2 || cCharAt2 >= ':') && cCharAt2 != '.' && cCharAt2 != '+' && cCharAt2 != '-')))) {
                i13 = i12;
            }
            i12++;
        }
        return -1;
    }
}
