package h7;

import io.ktor.utils.io.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class b {
    @NotNull
    public static final io.ktor.client.call.b a(@NotNull io.ktor.client.call.b bVar, @NotNull g content) {
        t.j(bVar, "<this>");
        t.j(content, "content");
        return new a(bVar.c(), content, bVar);
    }
}
