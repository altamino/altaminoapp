package io.ktor.http;

import com.narvii.chat.input.MentionedEditText;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class n0 {

    static final class a extends kotlin.jvm.internal.v implements e8.l<w7.u<? extends String, ? extends String>, CharSequence> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(@NotNull w7.u<String, String> it) {
            kotlin.jvm.internal.t.j(it, "it");
            String strC = it.c();
            if (it.d() == null) {
                return strC;
            }
            return strC + '=' + String.valueOf(it.d());
        }
    }

    @NotNull
    public static final f0 a(@NotNull p0 url) {
        kotlin.jvm.internal.t.j(url, "url");
        return h(new f0(null, null, 0, null, null, null, null, null, false, 511, null), url);
    }

    @NotNull
    public static final f0 b(@NotNull String urlString) {
        kotlin.jvm.internal.t.j(urlString, "urlString");
        return k0.j(new f0(null, null, 0, null, null, null, null, null, false, 511, null), urlString);
    }

    @NotNull
    public static final p0 c(@NotNull String urlString) {
        kotlin.jvm.internal.t.j(urlString, "urlString");
        return b(urlString).b();
    }

    public static final void d(@NotNull Appendable appendable, @NotNull String encodedPath, @NotNull a0 encodedQueryParameters, boolean z6) {
        List listE;
        kotlin.jvm.internal.t.j(appendable, "<this>");
        kotlin.jvm.internal.t.j(encodedPath, "encodedPath");
        kotlin.jvm.internal.t.j(encodedQueryParameters, "encodedQueryParameters");
        if ((!kotlin.text.t.z(encodedPath)) && !kotlin.text.t.K(encodedPath, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, false, 2, null)) {
            appendable.append('/');
        }
        appendable.append(encodedPath);
        if (!encodedQueryParameters.isEmpty() || z6) {
            appendable.append("?");
        }
        Set<Map.Entry<String, List<String>>> setA = encodedQueryParameters.a();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setA.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (list.isEmpty()) {
                listE = kotlin.collections.u.e(w7.a0.a(str, null));
            } else {
                List list2 = list;
                ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(w7.a0.a(str, (String) it2.next()));
                }
                listE = arrayList2;
            }
            kotlin.collections.a0.D(arrayList, listE);
        }
        kotlin.collections.d0.q0(arrayList, appendable, (124 & 2) != 0 ? ", " : "&", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : a.INSTANCE);
    }

    public static final void e(@NotNull StringBuilder sb, @Nullable String str, @Nullable String str2) {
        kotlin.jvm.internal.t.j(sb, "<this>");
        if (str == null) {
            return;
        }
        sb.append(str);
        if (str2 != null) {
            sb.append(kotlinx.serialization.json.internal.b.COLON);
            sb.append(str2);
        }
        sb.append(MentionedEditText.DEFAULT_METION_TAG);
    }

    @NotNull
    public static final String f(@NotNull p0 p0Var) {
        kotlin.jvm.internal.t.j(p0Var, "<this>");
        return p0Var.g() + kotlinx.serialization.json.internal.b.COLON + p0Var.j();
    }

    @NotNull
    public static final f0 g(@NotNull f0 f0Var, @NotNull f0 url) {
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        kotlin.jvm.internal.t.j(url, "url");
        f0Var.y(url.o());
        f0Var.w(url.j());
        f0Var.x(url.n());
        f0Var.u(url.g());
        f0Var.v(url.h());
        f0Var.t(url.f());
        a0 a0VarB = d0.b(0, 1, null);
        io.ktor.util.x.c(a0VarB, url.e());
        f0Var.s(a0VarB);
        f0Var.r(url.d());
        f0Var.z(url.p());
        return f0Var;
    }

    @NotNull
    public static final f0 h(@NotNull f0 f0Var, @NotNull p0 url) {
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        kotlin.jvm.internal.t.j(url, "url");
        f0Var.y(url.k());
        f0Var.w(url.g());
        f0Var.x(url.j());
        h0.i(f0Var, url.d());
        f0Var.v(url.f());
        f0Var.t(url.c());
        a0 a0VarB = d0.b(0, 1, null);
        a0VarB.e(e0.d(url.e(), 0, 0, false, 6, null));
        f0Var.s(a0VarB);
        f0Var.r(url.b());
        f0Var.z(url.m());
        return f0Var;
    }
}
