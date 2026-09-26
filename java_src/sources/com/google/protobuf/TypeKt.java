package com.google.protobuf;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeKt {

    @NotNull
    public static final TypeKt INSTANCE = new TypeKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Type.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Type.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Type.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class FieldsProxy extends DslProxy {
            private FieldsProxy() {
            }
        }

        public static final class OneofsProxy extends DslProxy {
            private OneofsProxy() {
            }
        }

        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        private Dsl(Type.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Type _build() {
            Type typeBuild = this._builder.build();
            kotlin.jvm.internal.t.i(typeBuild, "_builder.build()");
            return typeBuild;
        }

        public final /* synthetic */ void addAllFields(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllFields(values);
        }

        public final /* synthetic */ void addAllOneofs(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllOneofs(values);
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addFields(DslList dslList, Field value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addFields(value);
        }

        public final /* synthetic */ void addOneofs(DslList dslList, String value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addOneofs(value);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addOptions(value);
        }

        public final /* synthetic */ void clearFields(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearFields();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final /* synthetic */ void clearOneofs(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearOneofs();
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final void clearSourceContext() {
            this._builder.clearSourceContext();
        }

        public final void clearSyntax() {
            this._builder.clearSyntax();
        }

        public final /* synthetic */ DslList getFields() {
            List<Field> fieldsList = this._builder.getFieldsList();
            kotlin.jvm.internal.t.i(fieldsList, "_builder.getFieldsList()");
            return new DslList(fieldsList);
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            kotlin.jvm.internal.t.i(name, "_builder.getName()");
            return name;
        }

        @NotNull
        public final DslList<String, OneofsProxy> getOneofs() {
            List<String> oneofsList = this._builder.getOneofsList();
            kotlin.jvm.internal.t.i(oneofsList, "_builder.getOneofsList()");
            return new DslList<>(oneofsList);
        }

        public final /* synthetic */ DslList getOptions() {
            List<Option> optionsList = this._builder.getOptionsList();
            kotlin.jvm.internal.t.i(optionsList, "_builder.getOptionsList()");
            return new DslList(optionsList);
        }

        @NotNull
        public final SourceContext getSourceContext() {
            SourceContext sourceContext = this._builder.getSourceContext();
            kotlin.jvm.internal.t.i(sourceContext, "_builder.getSourceContext()");
            return sourceContext;
        }

        @NotNull
        public final Syntax getSyntax() {
            Syntax syntax = this._builder.getSyntax();
            kotlin.jvm.internal.t.i(syntax, "_builder.getSyntax()");
            return syntax;
        }

        public final boolean hasSourceContext() {
            return this._builder.hasSourceContext();
        }

        public final /* synthetic */ void plusAssignAllFields(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllFields(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllOneofs(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllOneofs(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignFields(DslList dslList, Field value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addFields(dslList, value);
        }

        public final /* synthetic */ void plusAssignOneofs(DslList dslList, String value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addOneofs(dslList, value);
        }

        public final /* synthetic */ void plusAssignOptions(DslList dslList, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addOptions(dslList, value);
        }

        public final /* synthetic */ void setFields(DslList dslList, int i10, Field value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setFields(i10, value);
        }

        public final void setName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setName(value);
        }

        public final /* synthetic */ void setOneofs(DslList dslList, int i10, String value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setOneofs(i10, value);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setOptions(i10, value);
        }

        public final void setSourceContext(@NotNull SourceContext value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setSourceContext(value);
        }

        public final void setSyntax(@NotNull Syntax value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setSyntax(value);
        }
    }

    private TypeKt() {
    }
}
