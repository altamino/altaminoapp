package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Collections.kt */
/* loaded from: classes4.dex */
public class CollectionsKt___CollectionsKt extends CollectionsKt___CollectionsJvmKt {
    public static <T> boolean contains(Iterable<? extends T> contains, T t) {
        Intrinsics.checkParameterIsNotNull(contains, "$this$contains");
        if (contains instanceof Collection) {
            return ((Collection) contains).contains(t);
        }
        return indexOf(contains, t) >= 0;
    }

    public static <T> T first(List<? extends T> first) {
        Intrinsics.checkParameterIsNotNull(first, "$this$first");
        if (first.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return first.get(0);
    }

    public static final <T> int indexOf(Iterable<? extends T> indexOf, T t) {
        Intrinsics.checkParameterIsNotNull(indexOf, "$this$indexOf");
        if (indexOf instanceof List) {
            return ((List) indexOf).indexOf(t);
        }
        int i = 0;
        for (T t2 : indexOf) {
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
            if (Intrinsics.areEqual(t, t2)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static <T> int indexOf(List<? extends T> indexOf, T t) {
        Intrinsics.checkParameterIsNotNull(indexOf, "$this$indexOf");
        return indexOf.indexOf(t);
    }

    public static <T> T last(List<? extends T> last) {
        Intrinsics.checkParameterIsNotNull(last, "$this$last");
        if (last.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return last.get(CollectionsKt__CollectionsKt.getLastIndex(last));
    }

    public static <T> T single(Iterable<? extends T> single) {
        Intrinsics.checkParameterIsNotNull(single, "$this$single");
        if (single instanceof List) {
            return (T) single((List) single);
        }
        Iterator<? extends T> it = single.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final <T> T single(List<? extends T> single) {
        Intrinsics.checkParameterIsNotNull(single, "$this$single");
        int size = single.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return single.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    public static <T> List<T> filterNotNull(Iterable<? extends T> filterNotNull) {
        Intrinsics.checkParameterIsNotNull(filterNotNull, "$this$filterNotNull");
        ArrayList arrayList = new ArrayList();
        filterNotNullTo(filterNotNull, arrayList);
        return arrayList;
    }

    public static final <C extends Collection<? super T>, T> C filterNotNullTo(Iterable<? extends T> filterNotNullTo, C destination) {
        Intrinsics.checkParameterIsNotNull(filterNotNullTo, "$this$filterNotNullTo");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        for (T t : filterNotNullTo) {
            if (t != null) {
                destination.add(t);
            }
        }
        return destination;
    }

    public static <T> List<T> reversed(Iterable<? extends T> reversed) {
        Intrinsics.checkParameterIsNotNull(reversed, "$this$reversed");
        if ((reversed instanceof Collection) && ((Collection) reversed).size() <= 1) {
            return toList(reversed);
        }
        List<T> mutableList = toMutableList(reversed);
        CollectionsKt___CollectionsJvmKt.reverse(mutableList);
        return mutableList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> sortedWith(Iterable<? extends T> sortedWith, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(sortedWith, "$this$sortedWith");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        if (sortedWith instanceof Collection) {
            Collection collection = (Collection) sortedWith;
            if (collection.size() <= 1) {
                return toList(sortedWith);
            }
            Object[] array = collection.toArray(new Object[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            if (array != null) {
                ArraysKt___ArraysJvmKt.sortWith(array, comparator);
                return ArraysKt___ArraysJvmKt.asList(array);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        List<T> mutableList = toMutableList(sortedWith);
        CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, comparator);
        return mutableList;
    }

    public static <T, C extends Collection<? super T>> C toCollection(Iterable<? extends T> toCollection, C destination) {
        Intrinsics.checkParameterIsNotNull(toCollection, "$this$toCollection");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Iterator<? extends T> it = toCollection.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    public static <T> List<T> toList(Iterable<? extends T> toList) {
        Intrinsics.checkParameterIsNotNull(toList, "$this$toList");
        if (toList instanceof Collection) {
            Collection collection = (Collection) toList;
            int size = collection.size();
            if (size == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            if (size != 1) {
                return toMutableList((Collection) collection);
            }
            return CollectionsKt__CollectionsJVMKt.listOf(toList instanceof List ? ((List) toList).get(0) : toList.iterator().next());
        }
        return CollectionsKt__CollectionsKt.optimizeReadOnlyList(toMutableList(toList));
    }

    public static final <T> List<T> toMutableList(Iterable<? extends T> toMutableList) {
        Intrinsics.checkParameterIsNotNull(toMutableList, "$this$toMutableList");
        if (toMutableList instanceof Collection) {
            return toMutableList((Collection) ((Collection) toMutableList));
        }
        ArrayList arrayList = new ArrayList();
        CollectionsKt.toCollection(toMutableList, arrayList);
        return arrayList;
    }

    public static <T> List<T> toMutableList(Collection<? extends T> toMutableList) {
        Intrinsics.checkParameterIsNotNull(toMutableList, "$this$toMutableList");
        return new ArrayList(toMutableList);
    }

    public static <T> Set<T> toSet(Iterable<? extends T> toSet) {
        Intrinsics.checkParameterIsNotNull(toSet, "$this$toSet");
        if (toSet instanceof Collection) {
            Collection collection = (Collection) toSet;
            int size = collection.size();
            if (size == 0) {
                return SetsKt__SetsKt.emptySet();
            }
            if (size == 1) {
                return SetsKt__SetsJVMKt.setOf(toSet instanceof List ? ((List) toSet).get(0) : toSet.iterator().next());
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(collection.size()));
            CollectionsKt.toCollection(toSet, linkedHashSet);
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        CollectionsKt.toCollection(toSet, linkedHashSet2);
        return SetsKt__SetsKt.optimizeReadOnlySet(linkedHashSet2);
    }

    public static final <T> Set<T> toMutableSet(Iterable<? extends T> toMutableSet) {
        Intrinsics.checkParameterIsNotNull(toMutableSet, "$this$toMutableSet");
        if (toMutableSet instanceof Collection) {
            return new LinkedHashSet((Collection) toMutableSet);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        CollectionsKt.toCollection(toMutableSet, linkedHashSet);
        return linkedHashSet;
    }

    public static <T> Set<T> union(Iterable<? extends T> union, Iterable<? extends T> other) {
        Intrinsics.checkParameterIsNotNull(union, "$this$union");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Set<T> mutableSet = toMutableSet(union);
        CollectionsKt__MutableCollectionsKt.addAll(mutableSet, other);
        return mutableSet;
    }

    public static Float max(Iterable<Float> max) {
        Intrinsics.checkParameterIsNotNull(max, "$this$max");
        Iterator<Float> it = max.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float fFloatValue = it.next().floatValue();
        if (Float.isNaN(fFloatValue)) {
            return Float.valueOf(fFloatValue);
        }
        while (it.hasNext()) {
            float fFloatValue2 = it.next().floatValue();
            if (Float.isNaN(fFloatValue2)) {
                return Float.valueOf(fFloatValue2);
            }
            if (fFloatValue < fFloatValue2) {
                fFloatValue = fFloatValue2;
            }
        }
        return Float.valueOf(fFloatValue);
    }

    public static <T> List<T> plus(Collection<? extends T> plus, Iterable<? extends T> elements) {
        Intrinsics.checkParameterIsNotNull(plus, "$this$plus");
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        if (elements instanceof Collection) {
            Collection collection = (Collection) elements;
            ArrayList arrayList = new ArrayList(plus.size() + collection.size());
            arrayList.addAll(plus);
            arrayList.addAll(collection);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(plus);
        CollectionsKt__MutableCollectionsKt.addAll(arrayList2, elements);
        return arrayList2;
    }

    public static <T> Sequence<T> asSequence(final Iterable<? extends T> asSequence) {
        Intrinsics.checkParameterIsNotNull(asSequence, "$this$asSequence");
        return new Sequence<T>() { // from class: kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<T> iterator() {
                return asSequence.iterator();
            }
        };
    }

    public static int sumOfInt(Iterable<Integer> sum) {
        Intrinsics.checkParameterIsNotNull(sum, "$this$sum");
        Iterator<Integer> it = sum.iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += it.next().intValue();
        }
        return iIntValue;
    }
}
