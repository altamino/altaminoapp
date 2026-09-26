package k7;

import io.ktor.utils.io.g;
import io.ktor.utils.io.j;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    @Nullable
    private io.ktor.util.b extensionProperties;

    public static abstract class a extends b {
        public a() {
            super(null);
        }

        @NotNull
        public abstract byte[] d();
    }

    /* JADX INFO: renamed from: k7.b$b, reason: collision with other inner class name */
    public static abstract class AbstractC0421b extends b {
        public AbstractC0421b() {
            super(null);
        }
    }

    public static abstract class c extends b {
        public c() {
            super(null);
        }
    }

    public static abstract class d extends b {
        public d() {
            super(null);
        }

        @NotNull
        public abstract g d();
    }

    public static abstract class e extends b {
        public e() {
            super(null);
        }

        @Nullable
        public abstract Object d(@NotNull j jVar, @NotNull kotlin.coroutines.d<? super l0> dVar);
    }

    public /* synthetic */ b(k kVar) {
        this();
    }

    @Nullable
    public Long a() {
        return null;
    }

    @Nullable
    public io.ktor.http.c b() {
        return null;
    }

    private b() {
    }

    @NotNull
    public io.ktor.http.k c() {
        return io.ktor.http.k.Companion.a();
    }
}
