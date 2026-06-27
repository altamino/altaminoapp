package kotlin.collections;

import java.util.Collections;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SetsJVM.kt */
/* loaded from: classes4.dex */
public class SetsKt__SetsJVMKt {
    public static <T> Set<T> setOf(T t) {
        Set<T> setSingleton = Collections.singleton(t);
        Intrinsics.checkExpressionValueIsNotNull(setSingleton, "java.util.Collections.singleton(element)");
        return setSingleton;
    }
}
