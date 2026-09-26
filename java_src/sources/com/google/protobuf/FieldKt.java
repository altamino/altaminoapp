package com.google.protobuf;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class FieldKt {

    @NotNull
    public static final FieldKt INSTANCE = new FieldKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Field.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Field.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Field.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        private Dsl(Field.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Field _build() {
            Field fieldBuild = this._builder.build();
            kotlin.jvm.internal.t.i(fieldBuild, "_builder.build()");
            return fieldBuild;
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addOptions(value);
        }

        public final void clearCardinality() {
            this._builder.clearCardinality();
        }

        public final void clearDefaultValue() {
            this._builder.clearDefaultValue();
        }

        public final void clearJsonName() {
            this._builder.clearJsonName();
        }

        public final void clearKind() {
            this._builder.clearKind();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final void clearNumber() {
            this._builder.clearNumber();
        }

        public final void clearOneofIndex() {
            this._builder.clearOneofIndex();
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final void clearPacked() {
            this._builder.clearPacked();
        }

        public final void clearTypeUrl() {
            this._builder.clearTypeUrl();
        }

        @NotNull
        public final Field.Cardinality getCardinality() {
            Field.Cardinality cardinality = this._builder.getCardinality();
            kotlin.jvm.internal.t.i(cardinality, "_builder.getCardinality()");
            return cardinality;
        }

        @NotNull
        public final String getDefaultValue() {
            String defaultValue = this._builder.getDefaultValue();
            kotlin.jvm.internal.t.i(defaultValue, "_builder.getDefaultValue()");
            return defaultValue;
        }

        @NotNull
        public final String getJsonName() {
            String jsonName = this._builder.getJsonName();
            kotlin.jvm.internal.t.i(jsonName, "_builder.getJsonName()");
            return jsonName;
        }

        @NotNull
        public final Field.Kind getKind() {
            Field.Kind kind = this._builder.getKind();
            kotlin.jvm.internal.t.i(kind, "_builder.getKind()");
            return kind;
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            kotlin.jvm.internal.t.i(name, "_builder.getName()");
            return name;
        }

        public final int getNumber() {
            return this._builder.getNumber();
        }

        public final int getOneofIndex() {
            return this._builder.getOneofIndex();
        }

        public final /* synthetic */ DslList getOptions() {
            List<Option> optionsList = this._builder.getOptionsList();
            kotlin.jvm.internal.t.i(optionsList, "_builder.getOptionsList()");
            return new DslList(optionsList);
        }

        public final boolean getPacked() {
            return this._builder.getPacked();
        }

        @NotNull
        public final String getTypeUrl() {
            String typeUrl = this._builder.getTypeUrl();
            kotlin.jvm.internal.t.i(typeUrl, "_builder.getTypeUrl()");
            return typeUrl;
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignOptions(DslList dslList, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addOptions(dslList, value);
        }

        public final void setCardinality(@NotNull Field.Cardinality value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setCardinality(value);
        }

        public final void setDefaultValue(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setDefaultValue(value);
        }

        public final void setJsonName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setJsonName(value);
        }

        public final void setKind(@NotNull Field.Kind value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setKind(value);
        }

        public final void setName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setName(value);
        }

        public final void setNumber(int i10) {
            this._builder.setNumber(i10);
        }

        public final void setOneofIndex(int i10) {
            this._builder.setOneofIndex(i10);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setOptions(i10, value);
        }

        public final void setPacked(boolean z6) {
            this._builder.setPacked(z6);
        }

        public final void setTypeUrl(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setTypeUrl(value);
        }
    }

    private FieldKt() {
    }
}
