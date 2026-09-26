package io.ktor.utils.io;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    private static final int BYTE_BUFFER_CAPACITY = 4088;

    @NotNull
    public static final String DEFAULT_CLOSE_MESSAGE = "Byte channel was closed";

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void b(Throwable th) throws Throwable {
        Throwable thE;
        try {
            thE = r.e(th, th);
        } catch (Throwable unused) {
            thE = null;
        }
        if (thE == null) {
            throw th;
        }
        throw thE;
    }
}
