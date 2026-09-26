package kotlin.reflect;

import e8.q;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public interface KMutableProperty2<D, E, V> extends KProperty2<D, E, V>, KMutableProperty<V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getSetter$annotations() {
        }
    }

    public interface Setter<D, E, V> extends KMutableProperty.Setter<V>, q<D, E, V, l0> {
        @Override // e8.q
        /* synthetic */ l0 invoke(Object obj, Object obj2, Object obj3);
    }

    @Override // kotlin.reflect.KMutableProperty
    @NotNull
    Setter<D, E, V> getSetter();

    @Override // kotlin.reflect.KProperty2, e8.p
    /* synthetic */ Object invoke(Object obj, Object obj2);

    void set(D d, E e, V v5);
}
