package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class ValueElement {
    public static final int $stable = 8;

    @NotNull
    private final String name;

    @Nullable
    private final Object value;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ValueElement)) {
            return false;
        }
        ValueElement valueElement = (ValueElement) obj;
        return kotlin.jvm.internal.t.e(this.name, valueElement.name) && kotlin.jvm.internal.t.e(this.value, valueElement.value);
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode() * 31;
        Object obj = this.value;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    @NotNull
    public String toString() {
        return "ValueElement(name=" + this.name + ", value=" + this.value + ')';
    }

    public ValueElement(@NotNull String name, @Nullable Object obj) {
        kotlin.jvm.internal.t.j(name, "name");
        this.name = name;
        this.value = obj;
    }
}
