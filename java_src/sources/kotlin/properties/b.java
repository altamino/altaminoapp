package kotlin.properties;

import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class b<T> implements e<Object, T> {

    @Nullable
    private T value;

    @Override // kotlin.properties.e
    public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, @NotNull T value) {
        t.j(property, "property");
        t.j(value, "value");
        this.value = value;
    }

    @Override // kotlin.properties.e, kotlin.properties.d
    @NotNull
    public T getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
        t.j(property, "property");
        T t5 = this.value;
        if (t5 != null) {
            return t5;
        }
        throw new IllegalStateException("Property " + property.getName() + " should be initialized before get.");
    }

    @NotNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("NotNullProperty(");
        if (this.value != null) {
            str = "value=" + this.value;
        } else {
            str = "value not initialized yet";
        }
        sb.append(str);
        sb.append(')');
        return sb.toString();
    }
}
