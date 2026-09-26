package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class w<T> implements kotlinx.coroutines.flow.h<T> {

    @NotNull
    private final kotlinx.coroutines.channels.u<T> channel;

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objW = this.channel.w(t5, dVar);
        return objW == kotlin.coroutines.intrinsics.d.e() ? objW : l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public w(@NotNull kotlinx.coroutines.channels.u<? super T> uVar) {
        this.channel = uVar;
    }
}
