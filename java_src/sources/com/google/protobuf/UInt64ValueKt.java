package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class UInt64ValueKt {

    @NotNull
    public static final UInt64ValueKt INSTANCE = new UInt64ValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final UInt64Value.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(UInt64Value.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(UInt64Value.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(UInt64Value.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ UInt64Value _build() {
            UInt64Value uInt64ValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(uInt64ValueBuild, "_builder.build()");
            return uInt64ValueBuild;
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

    private UInt64ValueKt() {
    }
}
