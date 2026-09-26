package kotlin.reflect;

import e8.l;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public interface KMutableProperty0<V> extends KProperty0<V>, KMutableProperty<V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getSetter$annotations() {
        }
    }

    public interface Setter<V> extends KMutableProperty.Setter<V>, l<V, l0> {
        @Override // e8.l
        /* synthetic */ l0 invoke(Object obj);
    }

    @Override // kotlin.reflect.KMutableProperty
    @NotNull
    Setter<V> getSetter();

    @Override // kotlin.reflect.KProperty0, e8.a
    /* synthetic */ Object invoke();

    void set(V v5);
}
