package kotlin.collections;

import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _CollectionsJvm.kt */
/* loaded from: classes4.dex */
public class CollectionsKt___CollectionsJvmKt extends CollectionsKt__ReversedViewsKt {
    public static <T> void reverse(List<T> reverse) {
        Intrinsics.checkParameterIsNotNull(reverse, "$this$reverse");
        Collections.reverse(reverse);
    }
}
