package androidx.lifecycle;

import e8.p;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public abstract class LifecycleCoroutineScope implements o0 {
    @NotNull
    public abstract Lifecycle a();

    @NotNull
    public final b2 b(@NotNull p<? super o0, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(block, "block");
        return k.d(this, null, null, new LifecycleCoroutineScope$launchWhenResumed$1(this, block, null), 3, null);
    }
}
