package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.internal.e0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class m<T> extends e0<T> {
    @Override // kotlinx.coroutines.j2
    public boolean W(@NotNull Throwable th) {
        if (th instanceof j) {
            return true;
        }
        return H(th);
    }

    public m(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        super(gVar, dVar);
    }
}
