package io.ktor.http;

import java.io.IOException;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class h0 {
    public static final int DEFAULT_PORT = 0;

    private static final void b(Appendable appendable, String str, String str2) throws IOException {
        appendable.append("://");
        appendable.append(str);
        if (!kotlin.text.u.H0(str2, '/', false, 2, null)) {
            appendable.append('/');
        }
        appendable.append(str2);
    }

    private static final void c(Appendable appendable, String str, String str2) throws IOException {
        appendable.append(":");
        appendable.append(str);
        appendable.append(str2);
    }

    @NotNull
    public static final String e(@NotNull f0 f0Var) {
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        StringBuilder sb = new StringBuilder();
        sb.append(g(f0Var));
        sb.append(f0Var.j());
        if (f0Var.n() != 0 && f0Var.n() != f0Var.o().c()) {
            sb.append(":");
            sb.append(String.valueOf(f0Var.n()));
        }
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @NotNull
    public static final String f(@NotNull f0 f0Var) {
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        return h(f0Var.g());
    }

    @NotNull
    public static final String g(@NotNull f0 f0Var) {
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        StringBuilder sb = new StringBuilder();
        n0.e(sb, f0Var.h(), f0Var.f());
        String string = sb.toString();
        kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final void i(@NotNull f0 f0Var, @NotNull String value) {
        List<String> listD;
        kotlin.jvm.internal.t.j(f0Var, "<this>");
        kotlin.jvm.internal.t.j(value, "value");
        if (kotlin.text.t.z(value)) {
            listD = kotlin.collections.v.m();
        } else {
            listD = kotlin.jvm.internal.t.e(value, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING) ? k0.d() : kotlin.collections.d0.W0(kotlin.text.u.B0(value, new char[]{'/'}, false, 0, 6, null));
        }
        f0Var.u(listD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <A extends Appendable> A d(f0 f0Var, A a7) throws IOException {
        a7.append(f0Var.o().d());
        String strD = f0Var.o().d();
        if (kotlin.jvm.internal.t.e(strD, "file")) {
            b(a7, f0Var.j(), f(f0Var));
            return a7;
        }
        if (kotlin.jvm.internal.t.e(strD, "mailto")) {
            c(a7, g(f0Var), f0Var.j());
            return a7;
        }
        a7.append("://");
        a7.append(e(f0Var));
        n0.d(a7, f(f0Var), f0Var.e(), f0Var.p());
        if (f0Var.d().length() > 0) {
            a7.append('#');
            a7.append(f0Var.d());
        }
        return a7;
    }

    private static final String h(List<String> list) {
        if (list.isEmpty()) {
            return "";
        }
        if (list.size() != 1) {
            return kotlin.collections.d0.t0(list, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, null, null, 0, null, null, 62, null);
        }
        if (((CharSequence) kotlin.collections.d0.j0(list)).length() == 0) {
            return com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING;
        }
        return (String) kotlin.collections.d0.j0(list);
    }
}
