package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public interface SubcomposeSlotReusePolicy {

    @StabilityInferred
    public static final class SlotIdsSet implements Collection<Object>, f8.a {
        public static final int $stable = 8;

        @NotNull
        private final Set<Object> set;

        /* JADX WARN: Multi-variable type inference failed */
        public SlotIdsSet() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public int c() {
            return this.set.size();
        }

        @Override // java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return this.set.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            return this.set.containsAll(elements);
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return this.set.isEmpty();
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super Object> predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return j.a(this);
        }

        public SlotIdsSet(@NotNull Set<Object> set) {
            t.j(set, "set");
            this.set = set;
        }

        @Override // java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean add(@Nullable Object obj) {
            return this.set.add(obj);
        }

        @Override // java.util.Collection
        public final void clear() {
            this.set.clear();
        }

        @Override // java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<Object> iterator() {
            return this.set.iterator();
        }

        @Override // java.util.Collection
        public final boolean remove(@Nullable Object obj) {
            return this.set.remove(obj);
        }

        @Override // java.util.Collection
        public final boolean removeAll(@NotNull Collection<? extends Object> slotIds) {
            t.j(slotIds, "slotIds");
            return this.set.remove(slotIds);
        }

        @Override // java.util.Collection
        public final boolean retainAll(@NotNull Collection<? extends Object> slotIds) {
            t.j(slotIds, "slotIds");
            return this.set.retainAll(slotIds);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] array) {
            t.j(array, "array");
            return (T[]) j.b(this, array);
        }

        public /* synthetic */ SlotIdsSet(Set set, int i10, k kVar) {
            this((i10 & 1) != 0 ? new LinkedHashSet() : set);
        }

        @Override // java.util.Collection
        public final /* bridge */ int size() {
            return c();
        }
    }

    void a(@NotNull SlotIdsSet slotIdsSet);

    boolean b(@Nullable Object obj, @Nullable Object obj2);
}
