package kotlinx.coroutines.internal;

import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class o<E> {

    @Nullable
    private final Object holder;

    @NotNull
    public static <E> Object a(@Nullable Object obj) {
        return obj;
    }

    public static boolean c(Object obj, Object obj2) {
        return (obj2 instanceof o) && kotlin.jvm.internal.t.e(obj, ((o) obj2).g());
    }

    public static int d(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static String f(Object obj) {
        return "InlineList(holder=" + obj + ')';
    }

    public boolean equals(Object obj) {
        return c(this.holder, obj);
    }

    public final /* synthetic */ Object g() {
        return this.holder;
    }

    public int hashCode() {
        return d(this.holder);
    }

    public String toString() {
        return f(this.holder);
    }

    public static /* synthetic */ Object b(Object obj, int i10, kotlin.jvm.internal.k kVar) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        return a(obj);
    }

    @NotNull
    public static final Object e(Object obj, E e) {
        if (obj == null) {
            return a(e);
        }
        if (obj instanceof ArrayList) {
            kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ((ArrayList) obj).add(e);
            return a(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e);
        return a(arrayList);
    }
}
