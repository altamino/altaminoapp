package io.ktor.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class a<T> {

    @NotNull
    private final String name;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && a.class == obj.getClass() && kotlin.jvm.internal.t.e(this.name, ((a) obj).name);
    }

    public a(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        this.name = name;
        if (name.length() == 0) {
            throw new IllegalStateException("Name can't be blank");
        }
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    @NotNull
    public String toString() {
        return "AttributeKey: " + this.name;
    }
}
