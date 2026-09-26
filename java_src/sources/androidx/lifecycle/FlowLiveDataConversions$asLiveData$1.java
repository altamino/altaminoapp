package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1", f = "FlowLiveData.kt", l = {80}, m = "invokeSuspend")
final class FlowLiveDataConversions$asLiveData$1 extends l implements p<LiveDataScope<Object>, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ kotlinx.coroutines.flow.g<Object> $this_asLiveData;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowLiveDataConversions$asLiveData$1(kotlinx.coroutines.flow.g<Object> gVar, kotlin.coroutines.d<? super FlowLiveDataConversions$asLiveData$1> dVar) {
        super(2, dVar);
        this.$this_asLiveData = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        FlowLiveDataConversions$asLiveData$1 flowLiveDataConversions$asLiveData$1 = new FlowLiveDataConversions$asLiveData$1(this.$this_asLiveData, dVar);
        flowLiveDataConversions$asLiveData$1.L$0 = obj;
        return flowLiveDataConversions$asLiveData$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull LiveDataScope<Object> liveDataScope, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((FlowLiveDataConversions$asLiveData$1) create(liveDataScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            final LiveDataScope liveDataScope = (LiveDataScope) this.L$0;
            kotlinx.coroutines.flow.g<Object> gVar = this.$this_asLiveData;
            kotlinx.coroutines.flow.h<? super Object> hVar = new kotlinx.coroutines.flow.h() { // from class: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1.1
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
                    Object objEmit = liveDataScope.emit(t5, dVar);
                    return objEmit == kotlin.coroutines.intrinsics.d.e() ? objEmit : l0.INSTANCE;
                }
            };
            this.label = 1;
            if (gVar.collect(hVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
