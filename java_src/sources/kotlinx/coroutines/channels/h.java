package kotlinx.coroutines.channels;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class h<T> {

    @NotNull
    public static final b Companion = new b(null);

    @NotNull
    private static final c failed = new c();

    @Nullable
    private final Object holder;

    public static final class a extends c {

        @Nullable
        public final Throwable cause;

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof a) && kotlin.jvm.internal.t.e(this.cause, ((a) obj).cause);
        }

        public int hashCode() {
            Throwable th = this.cause;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.h.c
        @NotNull
        public String toString() {
            return "Closed(" + this.cause + ')';
        }

        public a(@Nullable Throwable th) {
            this.cause = th;
        }
    }

    public static final class b {
        public /* synthetic */ b(kotlin.jvm.internal.k kVar) {
            this();
        }

        private b() {
        }

        @NotNull
        public final <E> Object a(@Nullable Throwable th) {
            return h.c(new a(th));
        }

        @NotNull
        public final <E> Object b() {
            return h.c(h.failed);
        }

        @NotNull
        public final <E> Object c(E e) {
            return h.c(e);
        }
    }

    public static class c {
        @NotNull
        public String toString() {
            return "Failed";
        }
    }

    public static final /* synthetic */ h b(Object obj) {
        return new h(obj);
    }

    @NotNull
    public static <T> Object c(@Nullable Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof h) && kotlin.jvm.internal.t.e(obj, ((h) obj2).k());
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        return d(this.holder, obj);
    }

    public int hashCode() {
        return g(this.holder);
    }

    public final /* synthetic */ Object k() {
        return this.holder;
    }

    @Nullable
    public static final Throwable e(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.cause;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final T f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static final boolean h(Object obj) {
        return obj instanceof a;
    }

    public static final boolean i(Object obj) {
        return !(obj instanceof c);
    }

    @NotNull
    public static String j(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    @NotNull
    public String toString() {
        return j(this.holder);
    }

    private /* synthetic */ h(Object obj) {
        this.holder = obj;
    }
}
