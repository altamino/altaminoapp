package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class Int32ValueKt {

    @NotNull
    public static final Int32ValueKt INSTANCE = new Int32ValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Int32Value.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Int32Value.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Int32Value.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Int32Value.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Int32Value _build() {
            Int32Value int32ValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(int32ValueBuild, "_builder.build()");
            return int32ValueBuild;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        public final int getValue() {
            return this._builder.getValue();
        }

        public final void setValue(int i10) {
            this._builder.setValue(i10);
        }
    }

    private Int32ValueKt() {
    }
}
