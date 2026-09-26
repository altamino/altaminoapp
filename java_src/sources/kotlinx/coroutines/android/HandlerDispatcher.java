package kotlinx.coroutines.android;

import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.k;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.n2;
import kotlinx.coroutines.o;
import kotlinx.coroutines.x0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public abstract class HandlerDispatcher extends n2 implements x0 {
    public /* synthetic */ HandlerDispatcher(k kVar) {
        this();
    }

    @Override // kotlinx.coroutines.n2
    @NotNull
    public abstract HandlerDispatcher getImmediate();

    public abstract /* synthetic */ void scheduleResumeAfterDelay(long j6, @NotNull o oVar);

    private HandlerDispatcher() {
    }

    @Nullable
    public Object delay(long j6, @NotNull d<? super l0> dVar) {
        return x0.a.a(this, j6, dVar);
    }

    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull g gVar) {
        return x0.a.b(this, j6, runnable, gVar);
    }
}
