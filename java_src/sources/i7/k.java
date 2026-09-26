package i7;

import io.ktor.http.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class k {
    public static final void a(@NotNull r rVar, @NotNull String key, @Nullable Object obj) {
        t.j(rVar, "<this>");
        t.j(key, "key");
        if (obj != null) {
            rVar.getHeaders().f(key, obj.toString());
            l0 l0Var = l0.INSTANCE;
        }
    }
}
