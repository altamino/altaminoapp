package androidx.compose.runtime;

import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class Stack<T> {

    @NotNull
    private final ArrayList<T> backing = new ArrayList<>();

    public final void a() {
        this.backing.clear();
    }

    public final int b() {
        return this.backing.size();
    }

    public final boolean c() {
        return this.backing.isEmpty();
    }

    public final T e() {
        return this.backing.get(b() - 1);
    }

    public final T f(int i10) {
        return this.backing.get(i10);
    }

    public final T g() {
        return this.backing.remove(b() - 1);
    }

    public final boolean h(T t5) {
        return this.backing.add(t5);
    }

    @NotNull
    public final T[] i() {
        int size = this.backing.size();
        T[] tArr = (T[]) new Object[size];
        for (int i10 = 0; i10 < size; i10++) {
            tArr[i10] = this.backing.get(i10);
        }
        return tArr;
    }

    public final boolean d() {
        return !c();
    }
}
