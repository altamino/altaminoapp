package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _ArraysJvm.kt */
/* loaded from: classes4.dex */
public class ArraysKt___ArraysJvmKt extends ArraysKt__ArraysKt {
    public static <T> List<T> asList(T[] asList) {
        Intrinsics.checkParameterIsNotNull(asList, "$this$asList");
        List<T> listAsList = ArraysUtilJVM.asList(asList);
        Intrinsics.checkExpressionValueIsNotNull(listAsList, "ArraysUtilJVM.asList(this)");
        return listAsList;
    }

    public static final <T> void sortWith(T[] sortWith, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(sortWith, "$this$sortWith");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        if (sortWith.length > 1) {
            Arrays.sort(sortWith, comparator);
        }
    }
}
