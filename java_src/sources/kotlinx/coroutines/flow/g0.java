package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class g0<T> {

    @NotNull
    public final kotlin.coroutines.g context;
    public final int extraBufferCapacity;

    @NotNull
    public final kotlinx.coroutines.channels.a onBufferOverflow;

    @NotNull
    public final g<T> upstream;

    /* JADX WARN: Multi-variable type inference failed */
    public g0(@NotNull g<? extends T> gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar, @NotNull kotlin.coroutines.g gVar2) {
        this.upstream = gVar;
        this.extraBufferCapacity = i10;
        this.onBufferOverflow = aVar;
        this.context = gVar2;
    }
}
