package io.ktor.utils.io;

import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class m implements u, w, o0 {
    private final /* synthetic */ o0 $$delegate_0;

    @NotNull
    private final c channel;

    @Override // io.ktor.utils.io.w
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c mo1642d() {
        return this.channel;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    public m(@NotNull o0 delegate, @NotNull c channel) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(channel, "channel");
        this.channel = channel;
        this.$$delegate_0 = delegate;
    }
}
