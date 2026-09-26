package coil.request;

import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    public static final q EMPTY = new q(s0.h());

    @NotNull
    private final Map<Class<?>, Object> tags;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final q a(@NotNull Map<Class<?>, ? extends Object> map) {
            return new q(coil.util.c.b(map), null);
        }
    }

    public /* synthetic */ q(Map map, kotlin.jvm.internal.k kVar) {
        this(map);
    }

    @NotNull
    public final Map<Class<?>, Object> a() {
        return this.tags;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q) && t.e(this.tags, ((q) obj).tags);
    }

    private q(Map<Class<?>, ? extends Object> map) {
        this.tags = map;
    }

    public int hashCode() {
        return this.tags.hashCode();
    }

    @NotNull
    public String toString() {
        return "Tags(tags=" + this.tags + ')';
    }
}
