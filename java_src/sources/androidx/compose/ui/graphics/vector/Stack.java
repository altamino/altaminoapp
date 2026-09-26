package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class Stack<T> {

    @NotNull
    private final ArrayList<T> backing;

    @NotNull
    public static <T> ArrayList<T> a(@NotNull ArrayList<T> backing) {
        t.j(backing, "backing");
        return backing;
    }

    public static boolean c(ArrayList<T> arrayList, Object obj) {
        return (obj instanceof Stack) && t.e(arrayList, ((Stack) obj).j());
    }

    public static int e(ArrayList<T> arrayList) {
        return arrayList.hashCode();
    }

    public static String i(ArrayList<T> arrayList) {
        return "Stack(backing=" + arrayList + ')';
    }

    public boolean equals(Object obj) {
        return c(this.backing, obj);
    }

    public int hashCode() {
        return e(this.backing);
    }

    public final /* synthetic */ ArrayList j() {
        return this.backing;
    }

    public String toString() {
        return i(this.backing);
    }

    public static /* synthetic */ ArrayList b(ArrayList arrayList, int i10, k kVar) {
        if ((i10 & 1) != 0) {
            arrayList = new ArrayList();
        }
        return a(arrayList);
    }

    public static final int d(ArrayList<T> arrayList) {
        return arrayList.size();
    }

    public static final T f(ArrayList<T> arrayList) {
        return arrayList.get(d(arrayList) - 1);
    }

    public static final T g(ArrayList<T> arrayList) {
        return arrayList.remove(d(arrayList) - 1);
    }

    public static final boolean h(ArrayList<T> arrayList, T t5) {
        return arrayList.add(t5);
    }
}
