package i7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends io.ktor.util.pipeline.d<Object, d> {
    private final boolean developmentMode;

    @NotNull
    public static final a Phases = new a(null);

    @NotNull
    private static final io.ktor.util.pipeline.h Before = new io.ktor.util.pipeline.h("Before");

    @NotNull
    private static final io.ktor.util.pipeline.h State = new io.ktor.util.pipeline.h("State");

    @NotNull
    private static final io.ktor.util.pipeline.h Transform = new io.ktor.util.pipeline.h("Transform");

    @NotNull
    private static final io.ktor.util.pipeline.h Render = new io.ktor.util.pipeline.h("Render");

    @NotNull
    private static final io.ktor.util.pipeline.h Send = new io.ktor.util.pipeline.h("Send");

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final io.ktor.util.pipeline.h a() {
            return g.Before;
        }

        @NotNull
        public final io.ktor.util.pipeline.h b() {
            return g.Render;
        }

        @NotNull
        public final io.ktor.util.pipeline.h c() {
            return g.Send;
        }

        @NotNull
        public final io.ktor.util.pipeline.h d() {
            return g.State;
        }
    }

    public g() {
        this(false, 1, null);
    }

    @Override // io.ktor.util.pipeline.d
    public boolean g() {
        return this.developmentMode;
    }

    public /* synthetic */ g(boolean z6, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? false : z6);
    }

    public g(boolean z6) {
        super(Before, State, Transform, Render, Send);
        this.developmentMode = z6;
    }
}
