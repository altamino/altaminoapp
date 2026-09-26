package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.collection.IdentityScopeMap;
import androidx.compose.runtime.collection.MutableVector;
import e8.p;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class SnapshotStateObserver$applyObserver$1 extends v implements p<Set<? extends Object>, Snapshot, l0> {
    final /* synthetic */ SnapshotStateObserver this$0;

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotStateObserver$applyObserver$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.a<l0> {
        final /* synthetic */ SnapshotStateObserver this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(SnapshotStateObserver snapshotStateObserver) {
            super(0);
            this.this$0 = snapshotStateObserver;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.this$0.f();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnapshotStateObserver$applyObserver$1(SnapshotStateObserver snapshotStateObserver) {
        super(2);
        this.this$0 = snapshotStateObserver;
    }

    public final void a(@NotNull Set<? extends Object> applied, @NotNull Snapshot snapshot) {
        int i10;
        t.j(applied, "applied");
        t.j(snapshot, "<anonymous parameter 1>");
        MutableVector mutableVector = this.this$0.applyMaps;
        SnapshotStateObserver snapshotStateObserver = this.this$0;
        synchronized (mutableVector) {
            try {
                MutableVector mutableVector2 = snapshotStateObserver.applyMaps;
                int iN = mutableVector2.n();
                i10 = 0;
                if (iN > 0) {
                    Object[] objArrM = mutableVector2.m();
                    int i11 = 0;
                    do {
                        SnapshotStateObserver.ApplyMap applyMap = (SnapshotStateObserver.ApplyMap) objArrM[i10];
                        HashSet<Object> hashSetD = applyMap.d();
                        IdentityScopeMap identityScopeMapE = applyMap.e();
                        Iterator<? extends Object> it = applied.iterator();
                        while (it.hasNext()) {
                            int iF = identityScopeMapE.f(it.next());
                            if (iF >= 0) {
                                Iterator<T> it2 = identityScopeMapE.o(iF).iterator();
                                while (it2.hasNext()) {
                                    hashSetD.add(it2.next());
                                    i11 = 1;
                                }
                            }
                        }
                        i10++;
                    } while (i10 < iN);
                    i10 = i11;
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i10 != 0) {
            this.this$0.onChangedExecutor.invoke(new AnonymousClass2(this.this$0));
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Set<? extends Object> set, Snapshot snapshot) {
        a(set, snapshot);
        return l0.INSTANCE;
    }
}
