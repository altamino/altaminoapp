package okhttp3;

import e8.l;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface Interceptor {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public interface Chain {
        @NotNull
        Call call();

        int connectTimeoutMillis();

        @Nullable
        Connection connection();

        @NotNull
        Response proceed(@NotNull Request request) throws IOException;

        int readTimeoutMillis();

        @NotNull
        Request request();

        @NotNull
        Chain withConnectTimeout(int i10, @NotNull TimeUnit timeUnit);

        @NotNull
        Chain withReadTimeout(int i10, @NotNull TimeUnit timeUnit);

        @NotNull
        Chain withWriteTimeout(int i10, @NotNull TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public final Interceptor invoke(@NotNull final l<? super Chain, Response> block) {
            t.j(block, "block");
            return new Interceptor() { // from class: okhttp3.Interceptor$Companion$invoke$1
                @Override // okhttp3.Interceptor
                @NotNull
                public final Response intercept(@NotNull Interceptor.Chain it) {
                    t.j(it, "it");
                    return block.invoke(it);
                }
            };
        }

        private Companion() {
        }
    }

    @NotNull
    Response intercept(@NotNull Chain chain) throws IOException;
}
