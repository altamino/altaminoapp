package androidx.compose.runtime;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.snapshots.Snapshot;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$runFrameLoop$2 extends v implements l<Long, o<? super l0>> {
    final /* synthetic */ ProduceFrameSignal $frameSignal;
    final /* synthetic */ List<ControlledComposition> $toApply;
    final /* synthetic */ List<ControlledComposition> $toRecompose;
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$runFrameLoop$2(Recomposer recomposer, List<ControlledComposition> list, List<ControlledComposition> list2, ProduceFrameSignal produceFrameSignal) {
        super(1);
        this.this$0 = recomposer;
        this.$toRecompose = list;
        this.$toApply = list2;
        this.$frameSignal = produceFrameSignal;
    }

    @Nullable
    public final o<l0> a(long j6) {
        int i10;
        o<l0> oVarB0;
        if (this.this$0.broadcastFrameClock.t()) {
            Recomposer recomposer = this.this$0;
            Trace trace = Trace.INSTANCE;
            Object objA = trace.a("Recomposer:animation");
            try {
                recomposer.broadcastFrameClock.u(j6);
                Snapshot.Companion.g();
                l0 l0Var = l0.INSTANCE;
                trace.b(objA);
            } catch (Throwable th) {
                Trace.INSTANCE.b(objA);
                throw th;
            }
        }
        Recomposer recomposer2 = this.this$0;
        List<ControlledComposition> list = this.$toRecompose;
        List<ControlledComposition> list2 = this.$toApply;
        ProduceFrameSignal produceFrameSignal = this.$frameSignal;
        Object objA2 = Trace.INSTANCE.a("Recomposer:recompose");
        try {
            synchronized (recomposer2.stateLock) {
                try {
                    recomposer2.q0();
                    List list3 = recomposer2.compositionsAwaitingApply;
                    int size = list3.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        list2.add((ControlledComposition) list3.get(i11));
                    }
                    recomposer2.compositionsAwaitingApply.clear();
                    List list4 = recomposer2.compositionInvalidations;
                    int size2 = list4.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        list.add((ControlledComposition) list4.get(i12));
                    }
                    recomposer2.compositionInvalidations.clear();
                    produceFrameSignal.e();
                    l0 l0Var2 = l0.INSTANCE;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            IdentityArraySet identityArraySet = new IdentityArraySet();
            try {
                int size3 = list.size();
                for (int i13 = 0; i13 < size3; i13++) {
                    ControlledComposition controlledCompositionN0 = recomposer2.n0(list.get(i13), identityArraySet);
                    if (controlledCompositionN0 != null) {
                        list2.add(controlledCompositionN0);
                    }
                }
                list.clear();
                if (!list2.isEmpty()) {
                    recomposer2.changeCount = recomposer2.d0() + 1;
                }
                try {
                    int size4 = list2.size();
                    for (i10 = 0; i10 < size4; i10++) {
                        list2.get(i10).l();
                    }
                    list2.clear();
                    synchronized (recomposer2.stateLock) {
                        oVarB0 = recomposer2.b0();
                    }
                    Trace.INSTANCE.b(objA2);
                    return oVarB0;
                } catch (Throwable th3) {
                    list2.clear();
                    throw th3;
                }
            } catch (Throwable th4) {
                list.clear();
                throw th4;
            }
        } catch (Throwable th5) {
            Trace.INSTANCE.b(objA2);
            throw th5;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ o<? super l0> invoke(Long l) {
        return a(l.longValue());
    }
}
