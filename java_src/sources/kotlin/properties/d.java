package kotlin.properties;

import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface d<T, V> {
    V getValue(T t5, @NotNull KProperty<?> kProperty);
}
