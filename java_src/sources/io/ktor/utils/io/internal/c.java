package io.ktor.utils.io.internal;

import io.ktor.utils.io.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final c EmptyCause = new c(null);

    @Nullable
    private final Throwable cause;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final c a() {
            return c.EmptyCause;
        }
    }

    @Nullable
    public final Throwable b() {
        return this.cause;
    }

    @NotNull
    public final Throwable c() {
        Throwable th = this.cause;
        return th == null ? new p("The channel was closed") : th;
    }

    @NotNull
    public String toString() {
        return "Closed[" + c() + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public c(@Nullable Throwable th) {
        this.cause = th;
    }
}
