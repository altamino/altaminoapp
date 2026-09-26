package io.ktor.client.statement;

import io.ktor.http.q;
import io.ktor.http.u;
import io.ktor.http.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class c implements q, o0 {
    @NotNull
    public abstract io.ktor.utils.io.g a();

    @NotNull
    public abstract m7.b b();

    @NotNull
    public abstract m7.b c();

    @NotNull
    public abstract v e();

    @NotNull
    public abstract u f();

    @NotNull
    public abstract io.ktor.client.call.b y0();

    @NotNull
    public String toString() {
        return "HttpResponse[" + e.e(this).getUrl() + ", " + e() + kotlinx.serialization.json.internal.b.END_LIST;
    }
}
