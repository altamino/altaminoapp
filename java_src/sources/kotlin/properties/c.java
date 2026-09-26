package kotlin.properties;

import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class c<V> implements e<Object, V> {
    private V value;

    protected void afterChange(@NotNull KProperty<?> property, V v5, V v6) {
        t.j(property, "property");
    }

    protected boolean beforeChange(@NotNull KProperty<?> property, V v5, V v6) {
        t.j(property, "property");
        return true;
    }

    @Override // kotlin.properties.e, kotlin.properties.d
    public V getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
        t.j(property, "property");
        return this.value;
    }

    @Override // kotlin.properties.e
    public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, V v5) {
        t.j(property, "property");
        V v6 = this.value;
        if (beforeChange(property, v6, v5)) {
            this.value = v5;
            afterChange(property, v6, v5);
        }
    }

    @NotNull
    public String toString() {
        return "ObservableProperty(value=" + this.value + ')';
    }

    public c(V v5) {
        this.value = v5;
    }
}
