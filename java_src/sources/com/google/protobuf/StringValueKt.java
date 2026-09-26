package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class StringValueKt {

    @NotNull
    public static final StringValueKt INSTANCE = new StringValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final StringValue.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(StringValue.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(StringValue.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(StringValue.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ StringValue _build() {
            StringValue stringValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(stringValueBuild, "_builder.build()");
            return stringValueBuild;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getValue() {
            String value = this._builder.getValue();
            kotlin.jvm.internal.t.i(value, "_builder.getValue()");
            return value;
        }

        public final void setValue(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setValue(value);
        }
    }

    private StringValueKt() {
    }
}
