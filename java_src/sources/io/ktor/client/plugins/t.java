package io.ktor.client.plugins;

import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.g1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class t {

    @NotNull
    private static final org.slf4j.a LOGGER = n7.a.a("io.ktor.client.plugins.HttpRequestLifecycle");

    static final class a extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
        final /* synthetic */ g1 $handler;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g1 g1Var) {
            super(1);
            this.$handler = g1Var;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            this.$handler.t();
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
        final /* synthetic */ kotlinx.coroutines.a0 $requestJob;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlinx.coroutines.a0 a0Var) {
            super(1);
            this.$requestJob = a0Var;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            if (th == null) {
                t.LOGGER.a("Cancelling request because engine Job completed");
                this.$requestJob.complete();
                return;
            }
            t.LOGGER.a("Cancelling request because engine Job failed with error: " + th);
            f2.d(this.$requestJob, "Engine failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(kotlinx.coroutines.a0 a0Var, b2 b2Var) {
        a0Var.U(new a(b2Var.U(new b(a0Var))));
    }
}
