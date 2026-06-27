package kotlin.collections;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MutableCollectionsJVM.kt */
/* loaded from: classes4.dex */
public class CollectionsKt__MutableCollectionsJVMKt extends CollectionsKt__IteratorsKt {
    public static <T> void sortWith(List<T> sortWith, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(sortWith, "$this$sortWith");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        if (sortWith.size() > 1) {
            Collections.sort(sortWith, comparator);
        }
    }
}
