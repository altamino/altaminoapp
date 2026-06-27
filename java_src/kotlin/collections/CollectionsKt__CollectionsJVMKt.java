package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CollectionsJVM.kt */
/* loaded from: classes4.dex */
public class CollectionsKt__CollectionsJVMKt {
    public static <T> List<T> listOf(T t) {
        List<T> listSingletonList = Collections.singletonList(t);
        Intrinsics.checkExpressionValueIsNotNull(listSingletonList, "java.util.Collections.singletonList(element)");
        return listSingletonList;
    }

    public static final <T> Object[] copyToArrayOfAny(T[] copyToArrayOfAny, boolean z) {
        Intrinsics.checkParameterIsNotNull(copyToArrayOfAny, "$this$copyToArrayOfAny");
        if (z && Intrinsics.areEqual(copyToArrayOfAny.getClass(), Object[].class)) {
            return copyToArrayOfAny;
        }
        Object[] objArrCopyOf = Arrays.copyOf(copyToArrayOfAny, copyToArrayOfAny.length, Object[].class);
        Intrinsics.checkExpressionValueIsNotNull(objArrCopyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
        return objArrCopyOf;
    }
}
