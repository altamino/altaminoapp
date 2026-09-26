package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class DurationKt {

    @NotNull
    public static final DurationKt INSTANCE = new DurationKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Duration.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Duration.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Duration.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Duration.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Duration _build() {
            Duration durationBuild = this._builder.build();
            kotlin.jvm.internal.t.i(durationBuild, "_builder.build()");
            return durationBuild;
        }

        public final void clearNanos() {
            this._builder.clearNanos();
        }

        public final void clearSeconds() {
            this._builder.clearSeconds();
        }

        public final int getNanos() {
            return this._builder.getNanos();
        }

        public final long getSeconds() {
            return this._builder.getSeconds();
        }

        public final void setNanos(int i10) {
            this._builder.setNanos(i10);
        }

        public final void setSeconds(long j6) {
            this._builder.setSeconds(j6);
        }
    }

    private DurationKt() {
    }
}
