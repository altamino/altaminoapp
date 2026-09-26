package kotlin.reflect;

import e8.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface KProperty2<D, E, V> extends KProperty<V>, p<D, E, V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }
    }

    public interface Getter<D, E, V> extends KProperty.Getter<V>, p<D, E, V> {
        @Override // e8.p
        /* synthetic */ Object invoke(Object obj, Object obj2);
    }

    V get(D d, E e);

    @Nullable
    Object getDelegate(D d, E e);

    @Override // kotlin.reflect.KProperty
    @NotNull
    Getter<D, E, V> getGetter();

    /* synthetic */ Object invoke(Object obj, Object obj2);
}
