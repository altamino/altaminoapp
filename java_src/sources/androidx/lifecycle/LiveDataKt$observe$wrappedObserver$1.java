package androidx.lifecycle;

import e8.l;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class LiveDataKt$observe$wrappedObserver$1<T> implements Observer {
    final /* synthetic */ l<T, l0> $onChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public LiveDataKt$observe$wrappedObserver$1(l<? super T, l0> lVar) {
        this.$onChanged = lVar;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(T t5) {
        this.$onChanged.invoke(t5);
    }
}
