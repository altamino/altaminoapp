package androidx.lifecycle;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class LifecycleOwnerKt {
    @NotNull
    public static final LifecycleCoroutineScope a(@NotNull LifecycleOwner lifecycleOwner) {
        t.j(lifecycleOwner, "<this>");
        return LifecycleKt.a(lifecycleOwner.getLifecycle());
    }
}
