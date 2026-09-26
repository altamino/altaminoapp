package io.ktor.client.statement;

import io.ktor.util.pipeline.h;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends io.ktor.util.pipeline.d<c, l0> {
    private final boolean developmentMode;

    @NotNull
    public static final a Phases = new a(null);

    @NotNull
    private static final h Before = new h("Before");

    @NotNull
    private static final h State = new h("State");

    @NotNull
    private static final h After = new h("After");

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final h a() {
            return b.After;
        }
    }

    public b() {
        this(false, 1, null);
    }

    @Override // io.ktor.util.pipeline.d
    public boolean g() {
        return this.developmentMode;
    }

    public /* synthetic */ b(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6);
    }

    public b(boolean z6) {
        super(Before, State, After);
        this.developmentMode = z6;
    }
}
