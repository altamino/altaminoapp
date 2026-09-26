package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.collection.MutableVector;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class SnapshotStateObserver$readObserver$1 extends v implements l<Object, l0> {
    final /* synthetic */ SnapshotStateObserver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnapshotStateObserver$readObserver$1(SnapshotStateObserver snapshotStateObserver) {
        super(1);
        this.this$0 = snapshotStateObserver;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object state) {
        t.j(state, "state");
        if (this.this$0.isPaused) {
            return;
        }
        MutableVector mutableVector = this.this$0.applyMaps;
        SnapshotStateObserver snapshotStateObserver = this.this$0;
        synchronized (mutableVector) {
            SnapshotStateObserver.ApplyMap applyMap = snapshotStateObserver.currentMap;
            t.g(applyMap);
            applyMap.a(state);
            l0 l0Var = l0.INSTANCE;
        }
    }
}
