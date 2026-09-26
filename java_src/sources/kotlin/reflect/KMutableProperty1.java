package kotlin.reflect;

import e8.p;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public interface KMutableProperty1<T, V> extends KProperty1<T, V>, KMutableProperty<V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getSetter$annotations() {
        }
    }

    public interface Setter<T, V> extends KMutableProperty.Setter<V>, p<T, V, l0> {
        @Override // e8.p
        /* synthetic */ l0 invoke(Object obj, Object obj2);
    }

    @Override // kotlin.reflect.KMutableProperty
    @NotNull
    Setter<T, V> getSetter();

    @Override // kotlin.reflect.KProperty1, e8.l
    /* synthetic */ Object invoke(Object obj);

    void set(T t5, V v5);
}
