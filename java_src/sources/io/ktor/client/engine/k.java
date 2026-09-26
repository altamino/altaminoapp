package io.ktor.client.engine;

import kotlin.jvm.internal.v;
import kotlinx.coroutines.g1;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class k extends v implements e8.l<Throwable, l0> {
    final /* synthetic */ g1 $cleanupHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g1 g1Var) {
        super(1);
        this.$cleanupHandler = g1Var;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        this.$cleanupHandler.t();
    }
}
