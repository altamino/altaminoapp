package androidx.compose.runtime;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$doCompose$2$3 extends v implements l<State<?>, l0> {
    final /* synthetic */ ComposerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$doCompose$2$3(ComposerImpl composerImpl) {
        super(1);
        this.this$0 = composerImpl;
    }

    public final void a(@NotNull State<?> it) {
        t.j(it, "it");
        this.this$0.childrenComposing++;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(State<?> state) {
        a(state);
        return l0.INSTANCE;
    }
}
