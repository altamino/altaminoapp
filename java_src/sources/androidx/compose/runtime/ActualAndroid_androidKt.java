package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotMutableState;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes11.dex */
public final class ActualAndroid_androidKt {

    @NotNull
    private static final m DefaultMonotonicFrameClock$delegate = o.a(ActualAndroid_androidKt$DefaultMonotonicFrameClock$2.INSTANCE);
    private static final boolean DisallowDefaultMonotonicFrameClock = false;

    @NotNull
    public static final <T> SnapshotMutableState<T> a(T t5, @NotNull SnapshotMutationPolicy<T> policy) {
        t.j(policy, "policy");
        return new ParcelableSnapshotMutableState(t5, policy);
    }
}
