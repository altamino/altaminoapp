package io.ktor.http;

import androidx.webkit.ProxyConfig;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class m0 {
    public static final boolean a(@NotNull l0 l0Var) {
        kotlin.jvm.internal.t.j(l0Var, "<this>");
        return kotlin.jvm.internal.t.e(l0Var.d(), ProxyConfig.MATCH_HTTPS) || kotlin.jvm.internal.t.e(l0Var.d(), "wss");
    }

    public static final boolean b(@NotNull l0 l0Var) {
        kotlin.jvm.internal.t.j(l0Var, "<this>");
        return kotlin.jvm.internal.t.e(l0Var.d(), "ws") || kotlin.jvm.internal.t.e(l0Var.d(), "wss");
    }
}
