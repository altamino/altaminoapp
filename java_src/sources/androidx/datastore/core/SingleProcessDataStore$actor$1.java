package androidx.datastore.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SingleProcessDataStore$actor$1 extends v implements l<Throwable, l0> {
    final /* synthetic */ SingleProcessDataStore<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SingleProcessDataStore$actor$1(SingleProcessDataStore<T> singleProcessDataStore) {
        super(1);
        this.this$0 = singleProcessDataStore;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        if (th != null) {
            ((SingleProcessDataStore) this.this$0).downstreamFlow.setValue(new Final(th));
        }
        SingleProcessDataStore.Companion companion = SingleProcessDataStore.Companion;
        Object objB = companion.b();
        SingleProcessDataStore<T> singleProcessDataStore = this.this$0;
        synchronized (objB) {
            companion.a().remove(singleProcessDataStore.q().getAbsolutePath());
            l0 l0Var = l0.INSTANCE;
        }
    }
}
