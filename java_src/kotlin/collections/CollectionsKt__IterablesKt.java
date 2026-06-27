package kotlin.collections;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Iterables.kt */
/* loaded from: classes4.dex */
public class CollectionsKt__IterablesKt extends CollectionsKt__CollectionsKt {
    public static <T> int collectionSizeOrDefault(Iterable<? extends T> collectionSizeOrDefault, int i) {
        Intrinsics.checkParameterIsNotNull(collectionSizeOrDefault, "$this$collectionSizeOrDefault");
        return collectionSizeOrDefault instanceof Collection ? ((Collection) collectionSizeOrDefault).size() : i;
    }
}
