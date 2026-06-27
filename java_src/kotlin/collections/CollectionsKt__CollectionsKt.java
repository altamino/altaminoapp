package kotlin.collections;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Collections.kt */
/* loaded from: classes4.dex */
public class CollectionsKt__CollectionsKt extends CollectionsKt__CollectionsJVMKt {
    public static <T> List<T> emptyList() {
        return EmptyList.INSTANCE;
    }

    public static <T> List<T> listOf(T... elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return elements.length > 0 ? ArraysKt___ArraysJvmKt.asList(elements) : emptyList();
    }

    public static <T> List<T> mutableListOf(T... elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return elements.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(elements, true));
    }

    public static <T> ArrayList<T> arrayListOf(T... elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return elements.length == 0 ? new ArrayList<>() : new ArrayList<>(new ArrayAsCollection(elements, true));
    }

    public static final <T> int getLastIndex(List<? extends T> lastIndex) {
        Intrinsics.checkParameterIsNotNull(lastIndex, "$this$lastIndex");
        return lastIndex.size() - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> optimizeReadOnlyList(List<? extends T> optimizeReadOnlyList) {
        Intrinsics.checkParameterIsNotNull(optimizeReadOnlyList, "$this$optimizeReadOnlyList");
        int size = optimizeReadOnlyList.size();
        if (size != 0) {
            return size != 1 ? optimizeReadOnlyList : CollectionsKt__CollectionsJVMKt.listOf(optimizeReadOnlyList.get(0));
        }
        return emptyList();
    }

    public static void throwIndexOverflow() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
