package io.ktor.client.call;

import io.ktor.http.k;
import io.ktor.http.o;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import kotlin.text.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class c extends UnsupportedOperationException {

    @Nullable
    private final String message;

    @Override // java.lang.Throwable
    @Nullable
    public String getMessage() {
        return this.message;
    }

    public c(@NotNull io.ktor.client.statement.c response, @NotNull KClass<?> from, @NotNull KClass<?> to) {
        t.j(response, "response");
        t.j(from, "from");
        t.j(to, "to");
        StringBuilder sb = new StringBuilder();
        sb.append("\n        Expected response body of the type '");
        sb.append(to);
        sb.append("' but was '");
        sb.append(from);
        sb.append("'\n        In response from `");
        sb.append(io.ktor.client.statement.e.e(response).getUrl());
        sb.append("`\n        Response status `");
        sb.append(response.e());
        sb.append("`\n        Response header `ContentType: ");
        k headers = response.getHeaders();
        o oVar = o.INSTANCE;
        sb.append(headers.get(oVar.i()));
        sb.append("` \n        Request header `Accept: ");
        sb.append(io.ktor.client.statement.e.e(response).getHeaders().get(oVar.c()));
        sb.append("`\n        \n        You can read how to resolve NoTransformationFoundException at FAQ: \n        https://ktor.io/docs/faq.html#no-transformation-found-exception\n    ");
        this.message = m.f(sb.toString());
    }
}
