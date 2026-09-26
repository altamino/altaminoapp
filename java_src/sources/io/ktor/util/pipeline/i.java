package io.ktor.util.pipeline;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class i {

    public static final class a extends i {

        @NotNull
        private final h relativeTo;

        @NotNull
        public final h a() {
            return this.relativeTo;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull h relativeTo) {
            super(null);
            t.j(relativeTo, "relativeTo");
            this.relativeTo = relativeTo;
        }
    }

    public static final class b extends i {

        @NotNull
        private final h relativeTo;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull h relativeTo) {
            super(null);
            t.j(relativeTo, "relativeTo");
            this.relativeTo = relativeTo;
        }
    }

    public static final class c extends i {

        @NotNull
        public static final c INSTANCE = new c();

        private c() {
            super(null);
        }
    }

    public /* synthetic */ i(kotlin.jvm.internal.k kVar) {
        this();
    }

    private i() {
    }
}
