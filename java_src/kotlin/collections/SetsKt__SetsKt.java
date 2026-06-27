package kotlin.collections;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sets.kt */
/* loaded from: classes4.dex */
public class SetsKt__SetsKt extends SetsKt__SetsJVMKt {
    public static final <T> Set<T> emptySet() {
        return EmptySet.INSTANCE;
    }

    public static <T> Set<T> setOf(T... elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return elements.length > 0 ? ArraysKt___ArraysKt.toSet(elements) : emptySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Set<T> optimizeReadOnlySet(Set<? extends T> optimizeReadOnlySet) {
        Intrinsics.checkParameterIsNotNull(optimizeReadOnlySet, "$this$optimizeReadOnlySet");
        int size = optimizeReadOnlySet.size();
        if (size != 0) {
            return size != 1 ? optimizeReadOnlySet : SetsKt__SetsJVMKt.setOf(optimizeReadOnlySet.iterator().next());
        }
        return emptySet();
    }
}
