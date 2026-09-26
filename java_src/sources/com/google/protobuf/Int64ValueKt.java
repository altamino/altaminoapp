package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class Int64ValueKt {

    @NotNull
    public static final Int64ValueKt INSTANCE = new Int64ValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Int64Value.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Int64Value.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Int64Value.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Int64Value.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Int64Value _build() {
            Int64Value int64ValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(int64ValueBuild, "_builder.build()");
            return int64ValueBuild;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        public final long getValue() {
            return this._builder.getValue();
        }

        public final void setValue(long j6) {
            this._builder.setValue(j6);
        }
    }

    private Int64ValueKt() {
    }
}
