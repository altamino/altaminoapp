package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes7.dex */
public final class LazyValueHolder<T> implements State<T> {

    @NotNull
    private final m current$delegate;

    public LazyValueHolder(@NotNull e8.a<? extends T> valueProducer) {
        t.j(valueProducer, "valueProducer");
        this.current$delegate = o.a(valueProducer);
    }

    private final T a() {
        return (T) this.current$delegate.getValue();
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        return a();
    }
}
