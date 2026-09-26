package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.p1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class l {
    public static final void a(@NotNull t<?> tVar, @Nullable Throwable th) {
        CancellationException cancellationExceptionA = null;
        if (th != null) {
            cancellationExceptionA = th instanceof CancellationException ? (CancellationException) th : null;
            if (cancellationExceptionA == null) {
                cancellationExceptionA = p1.a("Channel was consumed, consumer had failed", th);
            }
        }
        tVar.b(cancellationExceptionA);
    }
}
