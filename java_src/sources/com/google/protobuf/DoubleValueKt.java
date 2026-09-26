package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class DoubleValueKt {

    @NotNull
    public static final DoubleValueKt INSTANCE = new DoubleValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final DoubleValue.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(DoubleValue.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(DoubleValue.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(DoubleValue.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ DoubleValue _build() {
            DoubleValue doubleValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(doubleValueBuild, "_builder.build()");
            return doubleValueBuild;
        }

        public final void clearValue() {
            this._builder.clearValue();
        }

        public final double getValue() {
            return this._builder.getValue();
        }

        public final void setValue(double d) {
            this._builder.setValue(d);
        }
    }

    private DoubleValueKt() {
    }
}
