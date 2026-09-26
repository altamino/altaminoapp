package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class NavArgument {

    @Nullable
    private final Object defaultValue;
    private final boolean isDefaultValuePresent;
    private final boolean isNullable;

    @NotNull
    private final NavType<Object> type;

    public static final class Builder {

        @Nullable
        private Object defaultValue;
        private boolean defaultValuePresent;
        private boolean isNullable;

        @Nullable
        private NavType<Object> type;

        @NotNull
        public final Builder b(@Nullable Object obj) {
            this.defaultValue = obj;
            this.defaultValuePresent = true;
            return this;
        }

        @NotNull
        public final Builder c(boolean z6) {
            this.isNullable = z6;
            return this;
        }

        @NotNull
        public final <T> Builder d(@NotNull NavType<T> type) {
            t.j(type, "type");
            this.type = type;
            return this;
        }

        @NotNull
        public final NavArgument a() {
            NavType<Object> navTypeC = this.type;
            if (navTypeC == null) {
                navTypeC = NavType.Companion.c(this.defaultValue);
            }
            return new NavArgument(navTypeC, this.isNullable, this.defaultValue, this.defaultValuePresent);
        }
    }

    @NotNull
    public final NavType<Object> a() {
        return this.type;
    }

    public final boolean b() {
        return this.isDefaultValuePresent;
    }

    public final boolean c() {
        return this.isNullable;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(NavArgument.class, obj.getClass())) {
            return false;
        }
        NavArgument navArgument = (NavArgument) obj;
        if (this.isNullable != navArgument.isNullable || this.isDefaultValuePresent != navArgument.isDefaultValuePresent || !t.e(this.type, navArgument.type)) {
            return false;
        }
        Object obj2 = this.defaultValue;
        if (obj2 != null) {
            return t.e(obj2, navArgument.defaultValue);
        }
        return navArgument.defaultValue == null;
    }

    @RestrictTo
    public final void d(@NotNull String name, @NotNull Bundle bundle) {
        t.j(name, "name");
        t.j(bundle, "bundle");
        if (this.isDefaultValuePresent) {
            this.type.f(bundle, name, this.defaultValue);
        }
    }

    @RestrictTo
    public final boolean e(@NotNull String name, @NotNull Bundle bundle) {
        t.j(name, "name");
        t.j(bundle, "bundle");
        if (!this.isNullable && bundle.containsKey(name) && bundle.get(name) == null) {
            return false;
        }
        try {
            this.type.a(bundle, name);
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        int iHashCode = ((((this.type.hashCode() * 31) + (this.isNullable ? 1 : 0)) * 31) + (this.isDefaultValuePresent ? 1 : 0)) * 31;
        Object obj = this.defaultValue;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(NavArgument.class.getSimpleName());
        sb.append(" Type: " + this.type);
        sb.append(" Nullable: " + this.isNullable);
        if (this.isDefaultValuePresent) {
            sb.append(" DefaultValue: " + this.defaultValue);
        }
        String string = sb.toString();
        t.i(string, "sb.toString()");
        return string;
    }

    public NavArgument(@NotNull NavType<Object> type, boolean z6, @Nullable Object obj, boolean z10) {
        t.j(type, "type");
        if (!type.c() && z6) {
            throw new IllegalArgumentException((type.b() + " does not allow nullable values").toString());
        }
        if (!z6 && z10 && obj == null) {
            throw new IllegalArgumentException(("Argument with type " + type.b() + " has null value but is not nullable.").toString());
        }
        this.type = type;
        this.isNullable = z6;
        this.defaultValue = obj;
        this.isDefaultValuePresent = z10;
    }
}
