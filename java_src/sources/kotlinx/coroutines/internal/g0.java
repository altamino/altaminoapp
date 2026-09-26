package kotlinx.coroutines.internal;

import kotlinx.coroutines.internal.f0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class g0<S extends f0<S>> {

    @Nullable
    private final Object value;

    @NotNull
    public static <S extends f0<S>> Object a(@Nullable Object obj) {
        return obj;
    }

    public static boolean b(Object obj, Object obj2) {
        return (obj2 instanceof g0) && kotlin.jvm.internal.t.e(obj, ((g0) obj2).g());
    }

    public static int d(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static String f(Object obj) {
        return "SegmentOrClosed(value=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return b(this.value, obj);
    }

    public final /* synthetic */ Object g() {
        return this.value;
    }

    public int hashCode() {
        return d(this.value);
    }

    public String toString() {
        return f(this.value);
    }

    @NotNull
    public static final S c(Object obj) {
        if (obj != d.CLOSED) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
            return (S) obj;
        }
        throw new IllegalStateException("Does not contain segment".toString());
    }

    public static final boolean e(Object obj) {
        if (obj == d.CLOSED) {
            return true;
        }
        return false;
    }
}
