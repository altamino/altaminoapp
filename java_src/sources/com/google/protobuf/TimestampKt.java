package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class TimestampKt {

    @NotNull
    public static final TimestampKt INSTANCE = new TimestampKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Timestamp.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Timestamp.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Timestamp.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Timestamp.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Timestamp _build() {
            Timestamp timestampBuild = this._builder.build();
            kotlin.jvm.internal.t.i(timestampBuild, "_builder.build()");
            return timestampBuild;
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

    private TimestampKt() {
    }
}
