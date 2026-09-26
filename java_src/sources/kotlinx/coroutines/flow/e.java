package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
class e<T> extends kotlinx.coroutines.flow.internal.e<T> {

    @NotNull
    private final e8.p<kotlinx.coroutines.channels.r<? super T>, kotlin.coroutines.d<? super w7.l0>, Object> block;

    public /* synthetic */ e(e8.p pVar, kotlin.coroutines.g gVar, int i10, kotlinx.coroutines.channels.a aVar, int i11, kotlin.jvm.internal.k kVar) {
        this(pVar, (i11 & 2) != 0 ? kotlin.coroutines.h.INSTANCE : gVar, (i11 & 4) != 0 ? -2 : i10, (i11 & 8) != 0 ? kotlinx.coroutines.channels.a.SUSPEND : aVar);
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @Nullable
    protected Object h(@NotNull kotlinx.coroutines.channels.r<? super T> rVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return n(this, rVar, dVar);
    }

    static /* synthetic */ <T> Object n(e<T> eVar, kotlinx.coroutines.channels.r<? super T> rVar, kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objInvoke = ((e) eVar).block.invoke(rVar, dVar);
        return objInvoke == kotlin.coroutines.intrinsics.d.e() ? objInvoke : w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @NotNull
    protected kotlinx.coroutines.flow.internal.e<T> i(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return new e(this.block, gVar, i10, aVar);
    }

    @Override // kotlinx.coroutines.flow.internal.e
    @NotNull
    public String toString() {
        return "block[" + this.block + "] -> " + super.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull e8.p<? super kotlinx.coroutines.channels.r<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar, @NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        super(gVar, i10, aVar);
        this.block = pVar;
    }
}
