package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class i<E> extends kotlin.collections.a<E> implements Set<E> {

    @NotNull
    public static final a Companion = new a(null);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        public final boolean a(@NotNull Set<?> c7, @NotNull Set<?> other) {
            kotlin.jvm.internal.t.j(c7, "c");
            kotlin.jvm.internal.t.j(other, "other");
            if (c7.size() != other.size()) {
                return false;
            }
            return c7.containsAll(other);
        }

        public final int b(@NotNull Collection<?> c7) {
            kotlin.jvm.internal.t.j(c7, "c");
            Iterator<?> it = c7.iterator();
            int iHashCode = 0;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode += next != null ? next.hashCode() : 0;
            }
            return iHashCode;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            return Companion.a(this, (Set) obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Companion.b(this);
    }

    protected i() {
    }
}
