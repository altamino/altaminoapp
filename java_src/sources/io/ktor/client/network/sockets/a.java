package io.ktor.client.network.sockets;

import java.net.ConnectException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class a extends ConnectException {

    @Nullable
    private final Throwable cause;

    public /* synthetic */ a(String str, Throwable th, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? null : th);
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.cause;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull String message, @Nullable Throwable th) {
        super(message);
        t.j(message, "message");
        this.cause = th;
    }
}
