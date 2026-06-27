package kotlin.collections;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Arrays.kt */
/* loaded from: classes4.dex */
public class ArraysKt___ArraysKt extends ArraysKt___ArraysJvmKt {
    public static final <T> boolean contains(T[] contains, T t) {
        Intrinsics.checkParameterIsNotNull(contains, "$this$contains");
        return indexOf(contains, t) >= 0;
    }

    public static final <T> int indexOf(T[] indexOf, T t) {
        Intrinsics.checkParameterIsNotNull(indexOf, "$this$indexOf");
        int i = 0;
        if (t == null) {
            int length = indexOf.length;
            while (i < length) {
                if (indexOf[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int length2 = indexOf.length;
        while (i < length2) {
            if (Intrinsics.areEqual(t, indexOf[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int indexOf(long[] indexOf, long j) {
        Intrinsics.checkParameterIsNotNull(indexOf, "$this$indexOf");
        int length = indexOf.length;
        for (int i = 0; i < length; i++) {
            if (j == indexOf[i]) {
                return i;
            }
        }
        return -1;
    }

    public static char single(char[] single) {
        Intrinsics.checkParameterIsNotNull(single, "$this$single");
        int length = single.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return single[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static <T> T singleOrNull(T[] singleOrNull) {
        Intrinsics.checkParameterIsNotNull(singleOrNull, "$this$singleOrNull");
        if (singleOrNull.length == 1) {
            return singleOrNull[0];
        }
        return null;
    }

    public static final int getLastIndex(long[] lastIndex) {
        Intrinsics.checkParameterIsNotNull(lastIndex, "$this$lastIndex");
        return lastIndex.length - 1;
    }

    public static final <T, C extends Collection<? super T>> C toCollection(T[] toCollection, C destination) {
        Intrinsics.checkParameterIsNotNull(toCollection, "$this$toCollection");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        for (T t : toCollection) {
            destination.add(t);
        }
        return destination;
    }

    public static final <T> Set<T> toSet(T[] toSet) {
        Intrinsics.checkParameterIsNotNull(toSet, "$this$toSet");
        int length = toSet.length;
        if (length == 0) {
            return SetsKt__SetsKt.emptySet();
        }
        if (length == 1) {
            return SetsKt__SetsJVMKt.setOf(toSet[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(toSet.length));
        toCollection(toSet, linkedHashSet);
        return linkedHashSet;
    }

    public static Long max(long[] max) {
        Intrinsics.checkParameterIsNotNull(max, "$this$max");
        int i = 1;
        if (max.length == 0) {
            return null;
        }
        long j = max[0];
        int lastIndex = getLastIndex(max);
        if (1 <= lastIndex) {
            while (true) {
                long j2 = max[i];
                if (j < j2) {
                    j = j2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Long.valueOf(j);
    }

    public static Long min(long[] min) {
        Intrinsics.checkParameterIsNotNull(min, "$this$min");
        int i = 1;
        if (min.length == 0) {
            return null;
        }
        long j = min[0];
        int lastIndex = getLastIndex(min);
        if (1 <= lastIndex) {
            while (true) {
                long j2 = min[i];
                if (j > j2) {
                    j = j2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return Long.valueOf(j);
    }

    public static int sumOfInt(Integer[] sum) {
        Intrinsics.checkParameterIsNotNull(sum, "$this$sum");
        int iIntValue = 0;
        for (Integer num : sum) {
            iIntValue += num.intValue();
        }
        return iIntValue;
    }
}
