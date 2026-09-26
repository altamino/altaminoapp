package io.ktor.client.statement;

import io.ktor.util.pipeline.h;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends io.ktor.util.pipeline.d<d, io.ktor.client.call.b> {
    private final boolean developmentMode;

    @NotNull
    public static final a Phases = new a(null);

    @NotNull
    private static final h Receive = new h("Receive");

    @NotNull
    private static final h Parse = new h("Parse");

    @NotNull
    private static final h Transform = new h("Transform");

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
            return f.Parse;
        }

        @NotNull
        public final h b() {
            return f.Receive;
        }

        @NotNull
        public final h c() {
            return f.Transform;
        }
    }

    public f() {
        this(false, 1, null);
    }

    @Override // io.ktor.util.pipeline.d
    public boolean g() {
        return this.developmentMode;
    }

    public /* synthetic */ f(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6);
    }

    public f(boolean z6) {
        super(Receive, Parse, Transform, State, After);
        this.developmentMode = z6;
    }
}
