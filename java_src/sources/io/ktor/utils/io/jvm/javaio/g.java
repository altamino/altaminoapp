package io.ktor.utils.io.jvm.javaio;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class g implements e<Thread> {

    @NotNull
    public static final g INSTANCE = new g();

    private final Void c() {
        throw new UnsupportedOperationException("Parking is prohibited on this thread. Most likely you are using blocking operation on the wrong thread/dispatcher that doesn't allow blocking. Consider wrapping you blocking code withContext(Dispatchers.IO) {...}.");
    }

    @Override // io.ktor.utils.io.jvm.javaio.e
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void b(@NotNull Thread token) {
        t.j(token, "token");
        c.INSTANCE.b(token);
    }

    private g() {
    }

    @Override // io.ktor.utils.io.jvm.javaio.e
    public void a(long j6) {
        c();
        throw new w7.i();
    }
}
