package io.ktor.http;

import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface k extends io.ktor.util.t {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class b {
        public static void a(@NotNull k kVar, @NotNull e8.p<? super String, ? super List<String>, w7.l0> body) {
            kotlin.jvm.internal.t.j(body, "body");
            io.ktor.util.t.b.a(kVar, body);
        }

        @Nullable
        public static String b(@NotNull k kVar, @NotNull String name) {
            kotlin.jvm.internal.t.j(name, "name");
            return io.ktor.util.t.b.b(kVar, name);
        }
    }

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        private static final k Empty = e.INSTANCE;

        @NotNull
        public final k a() {
            return Empty;
        }

        private a() {
        }
    }
}
