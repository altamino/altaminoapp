package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class ValueKt {

    @NotNull
    public static final ValueKt INSTANCE = new ValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Value.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Value.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Value.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Value.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Value _build() {
            Value valueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(valueBuild, "_builder.build()");
            return valueBuild;
        }

        public final void clearBoolValue() {
            this._builder.clearBoolValue();
        }

        public final void clearKind() {
            this._builder.clearKind();
        }

        public final void clearListValue() {
            this._builder.clearListValue();
        }

        public final void clearNullValue() {
            this._builder.clearNullValue();
        }

        public final void clearNumberValue() {
            this._builder.clearNumberValue();
        }

        public final void clearStringValue() {
            this._builder.clearStringValue();
        }

        public final void clearStructValue() {
            this._builder.clearStructValue();
        }

        public final boolean getBoolValue() {
            return this._builder.getBoolValue();
        }

        @NotNull
        public final Value.KindCase getKindCase() {
            Value.KindCase kindCase = this._builder.getKindCase();
            kotlin.jvm.internal.t.i(kindCase, "_builder.getKindCase()");
            return kindCase;
        }

        @NotNull
        public final ListValue getListValue() {
            ListValue listValue = this._builder.getListValue();
            kotlin.jvm.internal.t.i(listValue, "_builder.getListValue()");
            return listValue;
        }

        @NotNull
        public final NullValue getNullValue() {
            NullValue nullValue = this._builder.getNullValue();
            kotlin.jvm.internal.t.i(nullValue, "_builder.getNullValue()");
            return nullValue;
        }

        public final double getNumberValue() {
            return this._builder.getNumberValue();
        }

        @NotNull
        public final String getStringValue() {
            String stringValue = this._builder.getStringValue();
            kotlin.jvm.internal.t.i(stringValue, "_builder.getStringValue()");
            return stringValue;
        }

        @NotNull
        public final Struct getStructValue() {
            Struct structValue = this._builder.getStructValue();
            kotlin.jvm.internal.t.i(structValue, "_builder.getStructValue()");
            return structValue;
        }

        public final boolean hasBoolValue() {
            return this._builder.hasBoolValue();
        }

        public final boolean hasListValue() {
            return this._builder.hasListValue();
        }

        public final boolean hasNullValue() {
            return this._builder.hasNullValue();
        }

        public final boolean hasNumberValue() {
            return this._builder.hasNumberValue();
        }

        public final boolean hasStringValue() {
            return this._builder.hasStringValue();
        }

        public final boolean hasStructValue() {
            return this._builder.hasStructValue();
        }

        public final void setBoolValue(boolean z6) {
            this._builder.setBoolValue(z6);
        }

        public final void setListValue(@NotNull ListValue value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setListValue(value);
        }

        public final void setNullValue(@NotNull NullValue value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setNullValue(value);
        }

        public final void setNumberValue(double d) {
            this._builder.setNumberValue(d);
        }

        public final void setStringValue(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setStringValue(value);
        }

        public final void setStructValue(@NotNull Struct value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setStructValue(value);
        }
    }

    private ValueKt() {
    }
}
