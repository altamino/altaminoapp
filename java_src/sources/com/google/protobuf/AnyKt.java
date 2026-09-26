package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class AnyKt {

    @NotNull
    public static final AnyKt INSTANCE = new AnyKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Any.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Any.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Any.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Any.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Any _build() {
            Any anyBuild = this._builder.build();
            kotlin.jvm.internal.t.i(anyBuild, "_builder.build()");
            return anyBuild;
        }

        public final void clearTypeUrl() {
            this._builder.clearTypeUrl();
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getTypeUrl() {
            String typeUrl = this._builder.getTypeUrl();
            kotlin.jvm.internal.t.i(typeUrl, "_builder.getTypeUrl()");
            return typeUrl;
        }

        @NotNull
        public final ByteString getValue() {
            ByteString value = this._builder.getValue();
            kotlin.jvm.internal.t.i(value, "_builder.getValue()");
            return value;
        }

        public final void setTypeUrl(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setTypeUrl(value);
        }

        public final void setValue(@NotNull ByteString value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setValue(value);
        }
    }

    private AnyKt() {
    }
}
