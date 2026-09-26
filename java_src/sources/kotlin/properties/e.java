package kotlin.properties;

import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface e<T, V> extends d<T, V> {
    @Override // kotlin.properties.d
    V getValue(T t5, @NotNull KProperty<?> kProperty);

    void setValue(T t5, @NotNull KProperty<?> kProperty, V v5);
}
