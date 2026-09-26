package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class v {

    @NotNull
    private final Map<SerialDescriptor, Map<a<Object>, Object>> map = u.a(1);

    public static final class a<T> {
    }

    @Nullable
    public final <T> T a(@NotNull SerialDescriptor descriptor, @NotNull a<T> key) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(key, "key");
        Map<a<Object>, Object> map = this.map.get(descriptor);
        Object obj = map != null ? map.get(key) : null;
        if (obj == null) {
            return null;
        }
        return (T) obj;
    }

    @NotNull
    public final <T> T b(@NotNull SerialDescriptor descriptor, @NotNull a<T> key, @NotNull e8.a<? extends T> defaultValue) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(defaultValue, "defaultValue");
        T t5 = (T) a(descriptor, key);
        if (t5 != null) {
            return t5;
        }
        T tInvoke = defaultValue.invoke();
        c(descriptor, key, tInvoke);
        return tInvoke;
    }

    public final <T> void c(@NotNull SerialDescriptor descriptor, @NotNull a<T> key, @NotNull T value) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(value, "value");
        Map<SerialDescriptor, Map<a<Object>, Object>> map = this.map;
        Map<a<Object>, Object> mapA = map.get(descriptor);
        if (mapA == null) {
            mapA = u.a(1);
            map.put(descriptor, mapA);
        }
        mapA.put(key, value);
    }
}
