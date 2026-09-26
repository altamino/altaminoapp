package io.ktor.http;

import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class n {

    static final class a extends kotlin.jvm.internal.v implements e8.a<ArrayList<g>> {
        public static final a INSTANCE = new a();

        a() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final ArrayList<g> invoke() {
            return new ArrayList<>();
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.a<ArrayList<h>> {
        public static final b INSTANCE = new b();

        b() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        public final ArrayList<h> invoke() {
            return new ArrayList<>();
        }
    }

    private static final boolean a(String str, int i10) {
        int i11 = i10 + 1;
        while (i11 < str.length() && str.charAt(i11) == ' ') {
            i11++;
        }
        return i11 == str.length() || str.charAt(i11) == ';';
    }

    @NotNull
    public static final List<g> b(@Nullable String str) {
        return c(str, false);
    }

    private static final int e(String str, int i10, w7.m<? extends ArrayList<h>> mVar) {
        int i11 = i10;
        while (i11 <= kotlin.text.u.W(str)) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == '=') {
                w7.u<Integer, String> uVarG = g(str, i11 + 1);
                int iIntValue = uVarG.a().intValue();
                f(mVar, str, i10, i11, uVarG.b());
                return iIntValue;
            }
            if (cCharAt == ';' || cCharAt == ',') {
                f(mVar, str, i10, i11, "");
                return i11;
            }
            i11++;
        }
        f(mVar, str, i10, i11, "");
        return i11;
    }

    @NotNull
    public static final List<g> c(@Nullable String str, boolean z6) {
        if (str == null) {
            return kotlin.collections.v.m();
        }
        w7.m mVarB = w7.o.b(w7.q.NONE, a.INSTANCE);
        int iD = 0;
        while (iD <= kotlin.text.u.W(str)) {
            iD = d(str, iD, mVarB, z6);
        }
        return j(mVarB);
    }

    private static final int d(String str, int i10, w7.m<? extends ArrayList<g>> mVar, boolean z6) {
        w7.m mVarB = w7.o.b(w7.q.NONE, b.INSTANCE);
        Integer numValueOf = z6 ? Integer.valueOf(i10) : null;
        int iE = i10;
        while (iE <= kotlin.text.u.W(str)) {
            char cCharAt = str.charAt(iE);
            if (cCharAt == ',') {
                mVar.getValue().add(new g(i(str, i10, numValueOf != null ? numValueOf.intValue() : iE), j(mVarB)));
                return iE + 1;
            }
            if (cCharAt == ';') {
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(iE);
                }
                iE = e(str, iE + 1, mVarB);
            } else {
                iE = z6 ? e(str, iE, mVarB) : iE + 1;
            }
        }
        mVar.getValue().add(new g(i(str, i10, numValueOf != null ? numValueOf.intValue() : iE), j(mVarB)));
        return iE;
    }

    private static final w7.u<Integer, String> h(String str, int i10) {
        StringBuilder sb = new StringBuilder();
        while (i10 <= kotlin.text.u.W(str)) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\"' && a(str, i10)) {
                Integer numValueOf = Integer.valueOf(i10 + 1);
                String string = sb.toString();
                kotlin.jvm.internal.t.i(string, "builder.toString()");
                return w7.a0.a(numValueOf, string);
            }
            if (cCharAt != '\\' || i10 >= kotlin.text.u.W(str) - 2) {
                sb.append(cCharAt);
                i10++;
            } else {
                sb.append(str.charAt(i10 + 1));
                i10 += 2;
            }
        }
        Integer numValueOf2 = Integer.valueOf(i10);
        String string2 = sb.toString();
        kotlin.jvm.internal.t.i(string2, "builder.toString()");
        return w7.a0.a(numValueOf2, kotlinx.serialization.json.internal.b.STRING + string2);
    }

    private static final void f(w7.m<? extends ArrayList<h>> mVar, String str, int i10, int i11, String str2) {
        String strI = i(str, i10, i11);
        if (strI.length() == 0) {
            return;
        }
        mVar.getValue().add(new h(strI, str2));
    }

    private static final w7.u<Integer, String> g(String str, int i10) {
        if (str.length() == i10) {
            return w7.a0.a(Integer.valueOf(i10), "");
        }
        if (str.charAt(i10) == '\"') {
            return h(str, i10 + 1);
        }
        int i11 = i10;
        while (i11 <= kotlin.text.u.W(str)) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == ';' || cCharAt == ',') {
                return w7.a0.a(Integer.valueOf(i11), i(str, i10, i11));
            }
            i11++;
        }
        return w7.a0.a(Integer.valueOf(i11), i(str, i10, i11));
    }

    private static final String i(String str, int i10, int i11) {
        String strSubstring = str.substring(i10, i11);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return kotlin.text.u.b1(strSubstring).toString();
    }

    private static final <T> List<T> j(w7.m<? extends List<? extends T>> mVar) {
        if (!mVar.isInitialized()) {
            return kotlin.collections.v.m();
        }
        return mVar.getValue();
    }
}
