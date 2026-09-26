package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class OptionKt {

    @NotNull
    public static final OptionKt INSTANCE = new OptionKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Option.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Option.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Option.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Option.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Option _build() {
            Option optionBuild = this._builder.build();
            kotlin.jvm.internal.t.i(optionBuild, "_builder.build()");
            return optionBuild;
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            kotlin.jvm.internal.t.i(name, "_builder.getName()");
            return name;
        }

        @NotNull
        public final Any getValue() {
            Any value = this._builder.getValue();
            kotlin.jvm.internal.t.i(value, "_builder.getValue()");
            return value;
        }

        public final boolean hasValue() {
            return this._builder.hasValue();
        }

        public final void setName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setName(value);
        }

        public final void setValue(@NotNull Any value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setValue(value);
        }
    }

    private OptionKt() {
    }
}
