package androidx.lifecycle;

import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class CoroutineLiveData<T> extends MediatorLiveData<T> {

    @Nullable
    private BlockRunner<T> blockRunner;

    @Nullable
    private EmittedSource emittedSource;

    /* JADX INFO: renamed from: androidx.lifecycle.CoroutineLiveData$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        final /* synthetic */ CoroutineLiveData<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CoroutineLiveData<T> coroutineLiveData) {
            super(0);
            this.this$0 = coroutineLiveData;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((CoroutineLiveData) this.this$0).blockRunner = null;
        }
    }

    public /* synthetic */ CoroutineLiveData(kotlin.coroutines.g gVar, long j6, p pVar, int i10, k kVar) {
        this((i10 & 1) != 0 ? kotlin.coroutines.h.INSTANCE : gVar, (i10 & 2) != 0 ? 5000L : j6, pVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object t(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        CoroutineLiveData$clearSource$1 coroutineLiveData$clearSource$1;
        CoroutineLiveData<T> coroutineLiveData;
        if (dVar instanceof CoroutineLiveData$clearSource$1) {
            coroutineLiveData$clearSource$1 = (CoroutineLiveData$clearSource$1) dVar;
            int i10 = coroutineLiveData$clearSource$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                coroutineLiveData$clearSource$1.label = i10 - Integer.MIN_VALUE;
            } else {
                coroutineLiveData$clearSource$1 = new CoroutineLiveData$clearSource$1(this, dVar);
            }
        } else {
            coroutineLiveData$clearSource$1 = new CoroutineLiveData$clearSource$1(this, dVar);
        }
        Object obj = coroutineLiveData$clearSource$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = coroutineLiveData$clearSource$1.label;
        if (i11 == 0) {
            w.b(obj);
            EmittedSource emittedSource = this.emittedSource;
            if (emittedSource != null) {
                coroutineLiveData$clearSource$1.L$0 = this;
                coroutineLiveData$clearSource$1.label = 1;
                if (emittedSource.c(coroutineLiveData$clearSource$1) == objE) {
                    return objE;
                }
            }
            coroutineLiveData = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            coroutineLiveData = (CoroutineLiveData) coroutineLiveData$clearSource$1.L$0;
            w.b(obj);
        }
        coroutineLiveData.emittedSource = null;
        return l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object u(@NotNull LiveData<T> liveData, @NotNull kotlin.coroutines.d<? super g1> dVar) {
        CoroutineLiveData$emitSource$1 coroutineLiveData$emitSource$1;
        LiveData<T> liveData2;
        CoroutineLiveData coroutineLiveData;
        CoroutineLiveData coroutineLiveData2;
        if (dVar instanceof CoroutineLiveData$emitSource$1) {
            coroutineLiveData$emitSource$1 = (CoroutineLiveData$emitSource$1) dVar;
            int i10 = coroutineLiveData$emitSource$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                coroutineLiveData$emitSource$1.label = i10 - Integer.MIN_VALUE;
            } else {
                coroutineLiveData$emitSource$1 = new CoroutineLiveData$emitSource$1(this, dVar);
            }
        } else {
            coroutineLiveData$emitSource$1 = new CoroutineLiveData$emitSource$1(this, dVar);
        }
        Object objA = coroutineLiveData$emitSource$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = coroutineLiveData$emitSource$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                LiveData<T> liveData3 = (LiveData) coroutineLiveData$emitSource$1.L$1;
                CoroutineLiveData coroutineLiveData3 = (CoroutineLiveData) coroutineLiveData$emitSource$1.L$0;
                w.b(objA);
                liveData2 = liveData3;
                coroutineLiveData = coroutineLiveData3;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                CoroutineLiveData coroutineLiveData4 = (CoroutineLiveData) coroutineLiveData$emitSource$1.L$0;
                w.b(objA);
                coroutineLiveData2 = coroutineLiveData4;
            }
            EmittedSource emittedSource = (EmittedSource) objA;
            coroutineLiveData2.emittedSource = emittedSource;
            return emittedSource;
        }
        w.b(objA);
        coroutineLiveData$emitSource$1.L$0 = this;
        coroutineLiveData$emitSource$1.L$1 = liveData;
        coroutineLiveData$emitSource$1.label = 1;
        if (t(coroutineLiveData$emitSource$1) == objE) {
            return objE;
        }
        liveData2 = liveData;
        coroutineLiveData = this;
        coroutineLiveData$emitSource$1.L$0 = coroutineLiveData;
        coroutineLiveData$emitSource$1.L$1 = null;
        coroutineLiveData$emitSource$1.label = 2;
        objA = CoroutineLiveDataKt.a(coroutineLiveData, liveData2, coroutineLiveData$emitSource$1);
        coroutineLiveData2 = coroutineLiveData;
        if (objA == objE) {
            return objE;
        }
        EmittedSource emittedSource2 = (EmittedSource) objA;
        coroutineLiveData2.emittedSource = emittedSource2;
        return emittedSource2;
    }

    public CoroutineLiveData(@NotNull kotlin.coroutines.g context, long j6, @NotNull p<? super LiveDataScope<T>, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block) {
        t.j(context, "context");
        t.j(block, "block");
        this.blockRunner = new BlockRunner<>(this, block, j6, p0.a(e1.c().getImmediate().plus(context).plus(y2.a((b2) context.get(b2.Key)))), new AnonymousClass1(this));
    }

    @Override // androidx.lifecycle.MediatorLiveData, androidx.lifecycle.LiveData
    protected void k() {
        super.k();
        BlockRunner<T> blockRunner = this.blockRunner;
        if (blockRunner != null) {
            blockRunner.h();
        }
    }

    @Override // androidx.lifecycle.MediatorLiveData, androidx.lifecycle.LiveData
    protected void l() {
        super.l();
        BlockRunner<T> blockRunner = this.blockRunner;
        if (blockRunner != null) {
            blockRunner.g();
        }
    }
}
