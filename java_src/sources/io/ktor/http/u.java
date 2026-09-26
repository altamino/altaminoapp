package io.ktor.http;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class u {
    private final int major;
    private final int minor;

    @NotNull
    private final String name;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final u HTTP_2_0 = new u("HTTP", 2, 0);

    @NotNull
    private static final u HTTP_1_1 = new u("HTTP", 1, 1);

    @NotNull
    private static final u HTTP_1_0 = new u("HTTP", 1, 0);

    @NotNull
    private static final u SPDY_3 = new u("SPDY", 3, 0);

    @NotNull
    private static final u QUIC = new u("QUIC", 1, 0);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final u a() {
            return u.HTTP_1_1;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return kotlin.jvm.internal.t.e(this.name, uVar.name) && this.major == uVar.major && this.minor == uVar.minor;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + this.major) * 31) + this.minor;
    }

    public u(@NotNull String name, int i10, int i11) {
        kotlin.jvm.internal.t.j(name, "name");
        this.name = name;
        this.major = i10;
        this.minor = i11;
    }

    @NotNull
    public String toString() {
        return this.name + '/' + this.major + '.' + this.minor;
    }
}
