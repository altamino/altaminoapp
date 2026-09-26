package io.ktor.utils.io.jvm.javaio;

import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class c implements e<Thread> {

    @NotNull
    public static final c INSTANCE = new c();

    @Override // io.ktor.utils.io.jvm.javaio.e
    public void a(long j6) {
        if (j6 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        LockSupport.parkNanos(j6);
    }

    @Override // io.ktor.utils.io.jvm.javaio.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(@NotNull Thread token) {
        t.j(token, "token");
        LockSupport.unpark(token);
    }

    private c() {
    }
}
