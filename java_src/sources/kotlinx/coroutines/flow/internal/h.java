package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class h<T> extends g<T, T> {
    public /* synthetic */ h(kotlinx.coroutines.flow.g gVar, kotlin.coroutines.g gVar2, int i10, kotlinx.coroutines.channels.a aVar, int i11, kotlin.jvm.internal.k kVar) {
        this(gVar, (i11 & 2) != 0 ? kotlin.coroutines.h.INSTANCE : gVar2, (i11 & 4) != 0 ? -3 : i10, (i11 & 8) != 0 ? kotlinx.coroutines.channels.a.SUSPEND : aVar);
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @NotNull
    public kotlinx.coroutines.flow.g<T> j() {
        return (kotlinx.coroutines.flow.g<T>) this.flow;
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @NotNull
    protected e<T> i(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return new h(this.flow, gVar, i10, aVar);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlinx.coroutines.flow.internal.g
    @Nullable
    protected Object q(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objCollect = this.flow.collect((kotlinx.coroutines.flow.h<? super S>) hVar, dVar);
        return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
    }

    public h(@NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull kotlin.coroutines.g gVar2, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        super(gVar, gVar2, i10, aVar);
    }
}
