package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class u extends t {

    static final class a extends kotlin.jvm.internal.v implements e8.p<CharSequence, Integer, w7.u<? extends Integer, ? extends Integer>> {
        final /* synthetic */ char[] $delimiters;
        final /* synthetic */ boolean $ignoreCase;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(char[] cArr, boolean z6) {
            super(2);
            this.$delimiters = cArr;
            this.$ignoreCase = z6;
        }

        @Nullable
        public final w7.u<Integer, Integer> a(@NotNull CharSequence $receiver, int i10) {
            kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
            int iD0 = u.d0($receiver, this.$delimiters, i10, this.$ignoreCase);
            if (iD0 < 0) {
                return null;
            }
            return w7.a0.a(Integer.valueOf(iD0), 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ w7.u<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return a(charSequence, num.intValue());
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.p<CharSequence, Integer, w7.u<? extends Integer, ? extends Integer>> {
        final /* synthetic */ List<String> $delimitersList;
        final /* synthetic */ boolean $ignoreCase;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<String> list, boolean z6) {
            super(2);
            this.$delimitersList = list;
            this.$ignoreCase = z6;
        }

        @Nullable
        public final w7.u<Integer, Integer> a(@NotNull CharSequence $receiver, int i10) {
            kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
            w7.u uVarU = u.U($receiver, this.$delimitersList, i10, this.$ignoreCase, false);
            if (uVarU != null) {
                return w7.a0.a(uVarU.c(), Integer.valueOf(((String) uVarU.d()).length()));
            }
            return null;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ w7.u<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return a(charSequence, num.intValue());
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.l<j8.i, String> {
        final /* synthetic */ CharSequence $this_splitToSequence;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CharSequence charSequence) {
            super(1);
            this.$this_splitToSequence = charSequence;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(@NotNull j8.i it) {
            kotlin.jvm.internal.t.j(it, "it");
            return u.J0(this.$this_splitToSequence, it);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final w7.u<Integer, String> U(CharSequence charSequence, Collection<String> collection, int i10, boolean z6, boolean z10) {
        Object next;
        String str;
        Object next2;
        String str2;
        if (!z6 && collection.size() == 1) {
            String str3 = (String) d0.H0(collection);
            int iC0 = !z10 ? c0(charSequence, str3, i10, false, 4, null) : i0(charSequence, str3, i10, false, 4, null);
            if (iC0 < 0) {
                return null;
            }
            return w7.a0.a(Integer.valueOf(iC0), str3);
        }
        j8.g iVar = !z10 ? new j8.i(j8.o.e(i10, 0), charSequence.length()) : j8.o.r(j8.o.j(i10, W(charSequence)), 0);
        if (charSequence instanceof String) {
            int iE = iVar.e();
            int iF = iVar.f();
            int iG = iVar.g();
            if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
                while (true) {
                    Iterator<T> it = collection.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        str2 = (String) next2;
                    } while (!t.A(str2, 0, (String) charSequence, iE, str2.length(), z6));
                    String str4 = (String) next2;
                    if (str4 != null) {
                        return w7.a0.a(Integer.valueOf(iE), str4);
                    }
                    if (iE != iF) {
                        iE += iG;
                    }
                }
            }
        } else {
            int iE2 = iVar.e();
            int iF2 = iVar.f();
            int iG2 = iVar.g();
            if ((iG2 > 0 && iE2 <= iF2) || (iG2 < 0 && iF2 <= iE2)) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        str = (String) next;
                    } while (!s0(str, 0, charSequence, iE2, str.length(), z6));
                    String str5 = (String) next;
                    if (str5 != null) {
                        return w7.a0.a(Integer.valueOf(iE2), str5);
                    }
                    if (iE2 != iF2) {
                        iE2 += iG2;
                    }
                }
            }
        }
        return null;
    }

    private static final int Z(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z6, boolean z10) {
        j8.g iVar = !z10 ? new j8.i(j8.o.e(i10, 0), j8.o.j(i11, charSequence.length())) : j8.o.r(j8.o.j(i10, W(charSequence)), j8.o.e(i11, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iE = iVar.e();
            int iF = iVar.f();
            int iG = iVar.g();
            if ((iG <= 0 || iE > iF) && (iG >= 0 || iF > iE)) {
                return -1;
            }
            while (!t.A((String) charSequence2, 0, (String) charSequence, iE, charSequence2.length(), z6)) {
                if (iE == iF) {
                    return -1;
                }
                iE += iG;
            }
            return iE;
        }
        int iE2 = iVar.e();
        int iF2 = iVar.f();
        int iG2 = iVar.g();
        if ((iG2 <= 0 || iE2 > iF2) && (iG2 >= 0 || iF2 > iE2)) {
            return -1;
        }
        while (!s0(charSequence2, 0, charSequence, iE2, charSequence2.length(), z6)) {
            if (iE2 == iF2) {
                return -1;
            }
            iE2 += iG2;
        }
        return iE2;
    }

    public static /* synthetic */ List B0(CharSequence charSequence, char[] cArr, boolean z6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return y0(charSequence, cArr, z6, i10);
    }

    public static /* synthetic */ List C0(CharSequence charSequence, String[] strArr, boolean z6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return z0(charSequence, strArr, z6, i10);
    }

    @NotNull
    public static final kotlin.sequences.g<String> D0(@NotNull CharSequence charSequence, @NotNull String[] delimiters, boolean z6, int i10) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(delimiters, "delimiters");
        return kotlin.sequences.o.u(r0(charSequence, delimiters, 0, z6, i10, 2, null), new c(charSequence));
    }

    public static /* synthetic */ kotlin.sequences.g E0(CharSequence charSequence, String[] strArr, boolean z6, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z6 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return D0(charSequence, strArr, z6, i10);
    }

    public static final boolean F0(@NotNull CharSequence charSequence, char c7, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return charSequence.length() > 0 && kotlin.text.c.h(charSequence.charAt(0), c7, z6);
    }

    public static final boolean G0(@NotNull CharSequence charSequence, @NotNull CharSequence prefix, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        return (!z6 && (charSequence instanceof String) && (prefix instanceof String)) ? t.K((String) charSequence, (String) prefix, false, 2, null) : s0(charSequence, 0, prefix, 0, prefix.length(), z6);
    }

    public static /* synthetic */ boolean H0(CharSequence charSequence, char c7, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return F0(charSequence, c7, z6);
    }

    public static /* synthetic */ boolean I0(CharSequence charSequence, CharSequence charSequence2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return G0(charSequence, charSequence2, z6);
    }

    @NotNull
    public static final String J0(@NotNull CharSequence charSequence, @NotNull j8.i range) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(range, "range");
        return charSequence.subSequence(range.getStart().intValue(), range.c().intValue() + 1).toString();
    }

    @NotNull
    public static final String K0(@NotNull String str, char c7, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iB0 = b0(str, c7, 0, false, 6, null);
        if (iB0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iB0 + 1, str.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static final String L0(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(delimiter, "delimiter");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iC0 = c0(str, delimiter, 0, false, 6, null);
        if (iC0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iC0 + delimiter.length(), str.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean M(@NotNull CharSequence charSequence, char c7, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return b0(charSequence, c7, 0, z6, 2, null) >= 0;
    }

    public static /* synthetic */ String M0(String str, char c7, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return K0(str, c7, str2);
    }

    public static boolean N(@NotNull CharSequence charSequence, @NotNull CharSequence other, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        if (other instanceof String) {
            if (c0(charSequence, (String) other, 0, z6, 2, null) < 0) {
                return false;
            }
        } else if (a0(charSequence, other, 0, charSequence.length(), z6, false, 16, null) < 0) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ String N0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return L0(str, str2, str3);
    }

    public static /* synthetic */ boolean O(CharSequence charSequence, char c7, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return M(charSequence, c7, z6);
    }

    @NotNull
    public static String O0(@NotNull String str, char c7, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iH0 = h0(str, c7, 0, false, 6, null);
        if (iH0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iH0 + 1, str.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ boolean P(CharSequence charSequence, CharSequence charSequence2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return N(charSequence, charSequence2, z6);
    }

    @NotNull
    public static final String P0(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(delimiter, "delimiter");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iI0 = i0(str, delimiter, 0, false, 6, null);
        if (iI0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iI0 + delimiter.length(), str.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean Q(@NotNull CharSequence charSequence, char c7, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return charSequence.length() > 0 && kotlin.text.c.h(charSequence.charAt(W(charSequence)), c7, z6);
    }

    public static /* synthetic */ String Q0(String str, char c7, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return O0(str, c7, str2);
    }

    public static final boolean R(@NotNull CharSequence charSequence, @NotNull CharSequence suffix, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(suffix, "suffix");
        return (!z6 && (charSequence instanceof String) && (suffix instanceof String)) ? t.v((String) charSequence, (String) suffix, false, 2, null) : s0(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z6);
    }

    public static /* synthetic */ String R0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return P0(str, str2, str3);
    }

    public static /* synthetic */ boolean S(CharSequence charSequence, char c7, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return Q(charSequence, c7, z6);
    }

    @NotNull
    public static final String S0(@NotNull String str, char c7, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iB0 = b0(str, c7, 0, false, 6, null);
        if (iB0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iB0);
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ boolean T(CharSequence charSequence, CharSequence charSequence2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return R(charSequence, charSequence2, z6);
    }

    @NotNull
    public static final String T0(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(delimiter, "delimiter");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iC0 = c0(str, delimiter, 0, false, 6, null);
        if (iC0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iC0);
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static /* synthetic */ String U0(String str, char c7, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return S0(str, c7, str2);
    }

    @NotNull
    public static j8.i V(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return new j8.i(0, charSequence.length() - 1);
    }

    public static /* synthetic */ String V0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return T0(str, str2, str3);
    }

    public static int W(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    @NotNull
    public static final String W0(@NotNull String str, char c7, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iH0 = h0(str, c7, 0, false, 6, null);
        if (iH0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iH0);
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final int X(@NotNull CharSequence charSequence, char c7, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return (z6 || !(charSequence instanceof String)) ? d0(charSequence, new char[]{c7}, i10, z6) : ((String) charSequence).indexOf(c7, i10);
    }

    @NotNull
    public static final String X0(@NotNull String str, @NotNull String delimiter, @NotNull String missingDelimiterValue) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(delimiter, "delimiter");
        kotlin.jvm.internal.t.j(missingDelimiterValue, "missingDelimiterValue");
        int iI0 = i0(str, delimiter, 0, false, 6, null);
        if (iI0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iI0);
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static int Y(@NotNull CharSequence charSequence, @NotNull String string, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(string, "string");
        return (z6 || !(charSequence instanceof String)) ? a0(charSequence, string, i10, charSequence.length(), z6, false, 16, null) : ((String) charSequence).indexOf(string, i10);
    }

    public static /* synthetic */ String Y0(String str, char c7, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return W0(str, c7, str2);
    }

    public static /* synthetic */ String Z0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return X0(str, str2, str3);
    }

    static /* synthetic */ int a0(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z6, boolean z10, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            z10 = false;
        }
        return Z(charSequence, charSequence2, i10, i11, z6, z10);
    }

    @Nullable
    public static Boolean a1(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        if (kotlin.jvm.internal.t.e(str, "true")) {
            return Boolean.TRUE;
        }
        if (kotlin.jvm.internal.t.e(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static /* synthetic */ int b0(CharSequence charSequence, char c7, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        return X(charSequence, c7, i10, z6);
    }

    @NotNull
    public static CharSequence b1(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z6 = false;
        while (i10 <= length) {
            boolean zC = kotlin.text.b.c(charSequence.charAt(!z6 ? i10 : length));
            if (z6) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i10++;
            } else {
                z6 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    public static /* synthetic */ int c0(CharSequence charSequence, String str, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        return Y(charSequence, str, i10, z6);
    }

    @NotNull
    public static String c1(@NotNull String str, @NotNull char... chars) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(chars, "chars");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z6 = false;
        while (i10 <= length) {
            boolean zC = kotlin.collections.p.C(chars, str.charAt(!z6 ? i10 : length));
            if (z6) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i10++;
            } else {
                z6 = true;
            }
        }
        return str.subSequence(i10, length + 1).toString();
    }

    public static final int d0(@NotNull CharSequence charSequence, @NotNull char[] chars, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(chars, "chars");
        if (!z6 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(kotlin.collections.p.l0(chars), i10);
        }
        m0 m0VarJ = new j8.i(j8.o.e(i10, 0), W(charSequence)).iterator();
        while (m0VarJ.hasNext()) {
            int iNextInt = m0VarJ.nextInt();
            char cCharAt = charSequence.charAt(iNextInt);
            for (char c7 : chars) {
                if (kotlin.text.c.h(c7, cCharAt, z6)) {
                    return iNextInt;
                }
            }
        }
        return -1;
    }

    @NotNull
    public static CharSequence d1(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!kotlin.text.b.c(charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return "";
    }

    public static /* synthetic */ int e0(CharSequence charSequence, char[] cArr, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        return d0(charSequence, cArr, i10, z6);
    }

    public static final int f0(@NotNull CharSequence charSequence, char c7, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return (z6 || !(charSequence instanceof String)) ? j0(charSequence, new char[]{c7}, i10, z6) : ((String) charSequence).lastIndexOf(c7, i10);
    }

    public static final int g0(@NotNull CharSequence charSequence, @NotNull String string, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(string, "string");
        return (z6 || !(charSequence instanceof String)) ? Z(charSequence, string, i10, 0, z6, true) : ((String) charSequence).lastIndexOf(string, i10);
    }

    public static /* synthetic */ int h0(CharSequence charSequence, char c7, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = W(charSequence);
        }
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        return f0(charSequence, c7, i10, z6);
    }

    public static /* synthetic */ int i0(CharSequence charSequence, String str, int i10, boolean z6, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = W(charSequence);
        }
        if ((i11 & 4) != 0) {
            z6 = false;
        }
        return g0(charSequence, str, i10, z6);
    }

    public static final int j0(@NotNull CharSequence charSequence, @NotNull char[] chars, int i10, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(chars, "chars");
        if (!z6 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(kotlin.collections.p.l0(chars), i10);
        }
        for (int iJ = j8.o.j(i10, W(charSequence)); -1 < iJ; iJ--) {
            char cCharAt = charSequence.charAt(iJ);
            for (char c7 : chars) {
                if (kotlin.text.c.h(c7, cCharAt, z6)) {
                    return iJ;
                }
            }
        }
        return -1;
    }

    @NotNull
    public static kotlin.sequences.g<String> k0(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return E0(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    @NotNull
    public static final List<String> l0(@NotNull CharSequence charSequence) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        return kotlin.sequences.o.A(k0(charSequence));
    }

    @NotNull
    public static final CharSequence m0(@NotNull CharSequence charSequence, int i10, char c7) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
        }
        if (i10 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i10);
        m0 m0VarJ = new j8.i(1, i10 - charSequence.length()).iterator();
        while (m0VarJ.hasNext()) {
            m0VarJ.nextInt();
            sb.append(c7);
        }
        sb.append(charSequence);
        return sb;
    }

    @NotNull
    public static String n0(@NotNull String str, int i10, char c7) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return m0(str, i10, c7).toString();
    }

    static /* synthetic */ kotlin.sequences.g q0(CharSequence charSequence, char[] cArr, int i10, boolean z6, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z6 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return o0(charSequence, cArr, i10, z6, i11);
    }

    static /* synthetic */ kotlin.sequences.g r0(CharSequence charSequence, String[] strArr, int i10, boolean z6, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z6 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return p0(charSequence, strArr, i10, z6, i11);
    }

    public static final boolean s0(@NotNull CharSequence charSequence, int i10, @NotNull CharSequence other, int i11, int i12, boolean z6) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > other.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!kotlin.text.c.h(charSequence.charAt(i10 + i13), other.charAt(i11 + i13), z6)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static String t0(@NotNull String str, @NotNull CharSequence prefix) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        if (!I0(str, prefix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static String u0(@NotNull String str, @NotNull CharSequence suffix) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(suffix, "suffix");
        if (!T(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - suffix.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    @NotNull
    public static String v0(@NotNull String str, @NotNull CharSequence delimiter) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(delimiter, "delimiter");
        return w0(str, delimiter, delimiter);
    }

    @NotNull
    public static final String w0(@NotNull String str, @NotNull CharSequence prefix, @NotNull CharSequence suffix) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(suffix, "suffix");
        if (str.length() < prefix.length() + suffix.length() || !I0(str, prefix, false, 2, null) || !T(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length(), str.length() - suffix.length());
        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void x0(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    @NotNull
    public static final List<String> y0(@NotNull CharSequence charSequence, @NotNull char[] delimiters, boolean z6, int i10) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return A0(charSequence, String.valueOf(delimiters[0]), z6, i10);
        }
        Iterable iterableH = kotlin.sequences.o.h(q0(charSequence, delimiters, 0, z6, i10, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(iterableH, 10));
        Iterator it = iterableH.iterator();
        while (it.hasNext()) {
            arrayList.add(J0(charSequence, (j8.i) it.next()));
        }
        return arrayList;
    }

    @NotNull
    public static final List<String> z0(@NotNull CharSequence charSequence, @NotNull String[] delimiters, boolean z6, int i10) {
        kotlin.jvm.internal.t.j(charSequence, "<this>");
        kotlin.jvm.internal.t.j(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                return A0(charSequence, str, z6, i10);
            }
        }
        Iterable iterableH = kotlin.sequences.o.h(r0(charSequence, delimiters, 0, z6, i10, 2, null));
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(iterableH, 10));
        Iterator it = iterableH.iterator();
        while (it.hasNext()) {
            arrayList.add(J0(charSequence, (j8.i) it.next()));
        }
        return arrayList;
    }

    private static final List<String> A0(CharSequence charSequence, String str, boolean z6, int i10) {
        boolean z10;
        x0(i10);
        int length = 0;
        int iY = Y(charSequence, str, 0, z6);
        if (iY == -1 || i10 == 1) {
            return kotlin.collections.u.e(charSequence.toString());
        }
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        int iJ = 10;
        if (z10) {
            iJ = j8.o.j(i10, 10);
        }
        ArrayList arrayList = new ArrayList(iJ);
        do {
            arrayList.add(charSequence.subSequence(length, iY).toString());
            length = str.length() + iY;
            if (z10 && arrayList.size() == i10 - 1) {
                break;
            }
            iY = Y(charSequence, str, length, z6);
        } while (iY != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    private static final kotlin.sequences.g<j8.i> o0(CharSequence charSequence, char[] cArr, int i10, boolean z6, int i11) {
        x0(i11);
        return new e(charSequence, i10, i11, new a(cArr, z6));
    }

    private static final kotlin.sequences.g<j8.i> p0(CharSequence charSequence, String[] strArr, int i10, boolean z6, int i11) {
        x0(i11);
        return new e(charSequence, i10, i11, new b(kotlin.collections.o.c(strArr), z6));
    }
}
