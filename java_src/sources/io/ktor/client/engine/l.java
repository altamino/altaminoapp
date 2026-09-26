package io.ktor.client.engine;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class l extends v implements e8.l<Throwable, l0> {
    final /* synthetic */ b2 $callJob;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(b2 b2Var) {
        super(1);
        this.$callJob = b2Var;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        if (th == null) {
            return;
        }
        this.$callJob.b(new CancellationException(th.getMessage()));
    }
}
