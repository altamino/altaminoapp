package kotlin.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class m extends l {

    static final class a extends kotlin.jvm.internal.v implements e8.l<String, String> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final String invoke(@NotNull String line) {
            kotlin.jvm.internal.t.j(line, "line");
            return line;
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.l<String, String> {
        final /* synthetic */ String $indent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.$indent = str;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final String invoke(@NotNull String line) {
            kotlin.jvm.internal.t.j(line, "line");
            return this.$indent + line;
        }
    }

    @NotNull
    public static final String d(@NotNull String str, @NotNull String newIndent) {
        String strInvoke;
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(newIndent, "newIndent");
        List<String> listL0 = u.l0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listL0) {
            if (!t.z((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(c((String) it.next())));
        }
        Integer num = (Integer) d0.z0(arrayList2);
        int i10 = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (newIndent.length() * listL0.size());
        e8.l<String, String> lVarB = b(newIndent);
        int iO = kotlin.collections.v.o(listL0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listL0) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            String str2 = (String) obj2;
            if ((i10 == 0 || i10 == iO) && t.z(str2)) {
                str2 = null;
            } else {
                String strE1 = w.e1(str2, iIntValue);
                if (strE1 != null && (strInvoke = lVarB.invoke(strE1)) != null) {
                    str2 = strInvoke;
                }
            }
            if (str2 != null) {
                arrayList3.add(str2);
            }
            i10 = i11;
        }
        String string = ((StringBuilder) d0.q0(arrayList3, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    @NotNull
    public static final String e(@NotNull String str, @NotNull String newIndent, @NotNull String marginPrefix) {
        int i10;
        String strInvoke;
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(newIndent, "newIndent");
        kotlin.jvm.internal.t.j(marginPrefix, "marginPrefix");
        if (!(!t.z(marginPrefix))) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
        }
        List<String> listL0 = u.l0(str);
        int length = str.length() + (newIndent.length() * listL0.size());
        e8.l<String, String> lVarB = b(newIndent);
        int iO = kotlin.collections.v.o(listL0);
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (Object obj : listL0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                kotlin.collections.v.w();
            }
            String str2 = (String) obj;
            String strSubstring = null;
            if ((i11 == 0 || i11 == iO) && t.z(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i13 = 0;
                while (true) {
                    if (i13 >= length2) {
                        i10 = -1;
                        break;
                    }
                    if (!kotlin.text.b.c(str2.charAt(i13))) {
                        i10 = i13;
                        break;
                    }
                    i13++;
                }
                if (i10 != -1) {
                    int i14 = i10;
                    if (t.J(str2, marginPrefix, i10, false, 4, null)) {
                        int length3 = i14 + marginPrefix.length();
                        kotlin.jvm.internal.t.h(str2, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = str2.substring(length3);
                        kotlin.jvm.internal.t.i(strSubstring, "substring(...)");
                    }
                }
                if (strSubstring != null && (strInvoke = lVarB.invoke(strSubstring)) != null) {
                    str2 = strInvoke;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i11 = i12;
        }
        String string = ((StringBuilder) d0.q0(arrayList, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    @NotNull
    public static String f(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        return d(str, "");
    }

    @NotNull
    public static final String g(@NotNull String str, @NotNull String marginPrefix) {
        kotlin.jvm.internal.t.j(str, "<this>");
        kotlin.jvm.internal.t.j(marginPrefix, "marginPrefix");
        return e(str, "", marginPrefix);
    }

    public static /* synthetic */ String h(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "|";
        }
        return g(str, str2);
    }

    private static final e8.l<String, String> b(String str) {
        if (str.length() == 0) {
            return a.INSTANCE;
        }
        return new b(str);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    private static final int c(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (!(!kotlin.text.b.c(str.charAt(i10)))) {
                i10++;
            } else {
                if (i10 == -1) {
                    return str.length();
                }
                return i10;
            }
        }
        i10 = -1;
        if (i10 == -1) {
            return str.length();
        }
        return i10;
    }
}
