package kotlin.io;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class c {
    public static final void a(@Nullable Closeable closeable, @Nullable Throwable th) throws IOException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                w7.f.a(th, th2);
            }
        }
    }
}
