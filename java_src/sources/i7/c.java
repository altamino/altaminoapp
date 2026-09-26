package i7;

import io.ktor.http.p0;
import io.ktor.http.q;
import io.ktor.http.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface c extends q, o0 {
    @NotNull
    io.ktor.util.b L();

    @NotNull
    kotlin.coroutines.g getCoroutineContext();

    @NotNull
    t getMethod();

    @NotNull
    p0 getUrl();

    @NotNull
    io.ktor.client.call.b y0();

    public static final class a {
        @NotNull
        public static kotlin.coroutines.g a(@NotNull c cVar) {
            return cVar.y0().getCoroutineContext();
        }
    }
}
