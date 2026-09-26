package kotlin.reflect;

import e8.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface KProperty1<T, V> extends KProperty<V>, l<T, V> {

    public static final class DefaultImpls {
        public static /* synthetic */ void getGetter$annotations() {
        }
    }

    public interface Getter<T, V> extends KProperty.Getter<V>, l<T, V> {
        @Override // e8.l
        /* synthetic */ Object invoke(Object obj);
    }

    V get(T t5);

    @Nullable
    Object getDelegate(T t5);

    @Override // kotlin.reflect.KProperty
    @NotNull
    Getter<T, V> getGetter();

    /* synthetic */ Object invoke(Object obj);
}
