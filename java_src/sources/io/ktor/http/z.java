package io.ktor.http;

import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public interface z extends io.ktor.util.t {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class b {
        public static void a(@NotNull z zVar, @NotNull e8.p<? super String, ? super List<String>, w7.l0> body) {
            kotlin.jvm.internal.t.j(body, "body");
            io.ktor.util.t.b.a(zVar, body);
        }
    }

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        private static final z Empty = f.INSTANCE;

        @NotNull
        public final z a() {
            return Empty;
        }

        private a() {
        }
    }
}
