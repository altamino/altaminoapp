package z7;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class c<T extends Enum<T>> extends kotlin.collections.c<T> implements a<T>, Serializable {

    @NotNull
    private final T[] entries;

    public c(@NotNull T[] entries) {
        t.j(entries, "entries");
        this.entries = entries;
    }

    private final Object writeReplace() {
        return new d(this.entries);
    }

    public boolean a(@NotNull T element) {
        t.j(element, "element");
        return ((Enum) p.S(this.entries, element.ordinal())) == element;
    }

    @Override // kotlin.collections.c, java.util.List
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public T get(int i10) {
        kotlin.collections.c.Companion.b(i10, this.entries.length);
        return this.entries[i10];
    }

    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Enum) {
            return a((Enum) obj);
        }
        return false;
    }

    public int e(@NotNull T element) {
        t.j(element, "element");
        int iOrdinal = element.ordinal();
        if (((Enum) p.S(this.entries, iOrdinal)) == element) {
            return iOrdinal;
        }
        return -1;
    }

    public int f(@NotNull T element) {
        t.j(element, "element");
        return indexOf(element);
    }

    @Override // kotlin.collections.c, kotlin.collections.a
    public int getSize() {
        return this.entries.length;
    }

    @Override // kotlin.collections.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Enum) {
            return e((Enum) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Enum) {
            return f((Enum) obj);
        }
        return -1;
    }
}
