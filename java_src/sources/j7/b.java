package j7;

import e8.l;
import io.ktor.util.internal.c;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import kotlinx.coroutines.g1;
import org.jetbrains.annotations.NotNull;
import w7.f;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    @NotNull
    private final l7.a<j7.a<?>, io.ktor.util.internal.a> handlers = new l7.a<>();

    private static final class a extends c implements g1 {

        @NotNull
        private final l<?, l0> handler;

        @NotNull
        public final l<?, l0> k() {
            return this.handler;
        }

        public a(@NotNull l<?, l0> handler) {
            t.j(handler, "handler");
            this.handler = handler;
        }

        @Override // kotlinx.coroutines.g1
        public void t() {
            i();
        }
    }

    public final <T> void a(@NotNull j7.a<T> definition, T t5) {
        l0 l0Var;
        t.j(definition, "definition");
        io.ktor.util.internal.a aVarA = this.handlers.a(definition);
        Throwable th = null;
        if (aVarA != null) {
            Object objE = aVarA.e();
            t.h(objE, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }");
            Throwable th2 = null;
            for (c cVarF = (c) objE; !t.e(cVarF, aVarA); cVarF = cVarF.f()) {
                if (cVarF instanceof a) {
                    try {
                        l<?, l0> lVarK = ((a) cVarF).k();
                        t.h(lVarK, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise$lambda$2, kotlin.Unit>{ io.ktor.events.EventsKt.EventHandler<T of io.ktor.events.Events.raise$lambda$2> }");
                        ((l) v0.e(lVarK, 1)).invoke(t5);
                    } catch (Throwable th3) {
                        if (th2 != null) {
                            f.a(th2, th3);
                            l0Var = l0.INSTANCE;
                        } else {
                            l0Var = null;
                        }
                        if (l0Var == null) {
                            th2 = th3;
                        }
                    }
                }
            }
            th = th2;
        }
        if (th != null) {
            throw th;
        }
    }
}
