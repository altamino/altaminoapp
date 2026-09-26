package w7;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class v<T> implements Serializable {

    @NotNull
    public static final a Companion = new a(null);

    @Nullable
    private final Object value;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements Serializable {

        @NotNull
        public final Throwable exception;

        public b(@NotNull Throwable exception) {
            kotlin.jvm.internal.t.j(exception, "exception");
            this.exception = exception;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof b) && kotlin.jvm.internal.t.e(this.exception, ((b) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        @NotNull
        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    public static final /* synthetic */ v a(Object obj) {
        return new v(obj);
    }

    @NotNull
    public static <T> Object b(@Nullable Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof v) && kotlin.jvm.internal.t.e(obj, ((v) obj2).j());
    }

    public static final boolean d(Object obj, Object obj2) {
        return kotlin.jvm.internal.t.e(obj, obj2);
    }

    public static int f(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        return c(this.value, obj);
    }

    public int hashCode() {
        return f(this.value);
    }

    public final /* synthetic */ Object j() {
        return this.value;
    }

    @Nullable
    public static final Throwable e(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).exception;
        }
        return null;
    }

    public static final boolean g(Object obj) {
        return obj instanceof b;
    }

    public static final boolean h(Object obj) {
        return !(obj instanceof b);
    }

    @NotNull
    public static String i(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).toString();
        }
        return "Success(" + obj + ')';
    }

    @NotNull
    public String toString() {
        return i(this.value);
    }

    private /* synthetic */ v(Object obj) {
        this.value = obj;
    }
}
