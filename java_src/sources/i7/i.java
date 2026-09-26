package i7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends io.ktor.util.pipeline.d<Object, d> {
    private final boolean developmentMode;

    @NotNull
    public static final a Phases = new a(null);

    @NotNull
    private static final io.ktor.util.pipeline.h Before = new io.ktor.util.pipeline.h("Before");

    @NotNull
    private static final io.ktor.util.pipeline.h State = new io.ktor.util.pipeline.h("State");

    @NotNull
    private static final io.ktor.util.pipeline.h Monitoring = new io.ktor.util.pipeline.h("Monitoring");

    @NotNull
    private static final io.ktor.util.pipeline.h Engine = new io.ktor.util.pipeline.h("Engine");

    @NotNull
    private static final io.ktor.util.pipeline.h Receive = new io.ktor.util.pipeline.h("Receive");

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final io.ktor.util.pipeline.h a() {
            return i.Engine;
        }

        @NotNull
        public final io.ktor.util.pipeline.h b() {
            return i.Receive;
        }
    }

    public i() {
        this(false, 1, null);
    }

    @Override // io.ktor.util.pipeline.d
    public boolean g() {
        return this.developmentMode;
    }

    public /* synthetic */ i(boolean z6, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? false : z6);
    }

    public i(boolean z6) {
        super(Before, State, Monitoring, Engine, Receive);
        this.developmentMode = z6;
    }
}
