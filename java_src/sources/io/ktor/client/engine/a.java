package io.ktor.client.engine;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends IllegalStateException {

    @Nullable
    private final Throwable cause;

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // java.lang.Throwable
    @Nullable
    public Throwable getCause() {
        return this.cause;
    }

    public /* synthetic */ a(Throwable th, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? null : th);
    }

    public a(@Nullable Throwable th) {
        super("Client already closed");
        this.cause = th;
    }
}
