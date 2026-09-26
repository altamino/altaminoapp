package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class BytesValueKt {

    @NotNull
    public static final BytesValueKt INSTANCE = new BytesValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final BytesValue.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(BytesValue.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(BytesValue.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(BytesValue.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ BytesValue _build() {
            BytesValue bytesValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(bytesValueBuild, "_builder.build()");
            return bytesValueBuild;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final ByteString getValue() {
            ByteString value = this._builder.getValue();
            kotlin.jvm.internal.t.i(value, "_builder.getValue()");
            return value;
        }

        public final void setValue(@NotNull ByteString value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setValue(value);
        }
    }

    private BytesValueKt() {
    }
}
