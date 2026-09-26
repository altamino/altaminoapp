package com.google.protobuf;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class EnumKt {

    @NotNull
    public static final EnumKt INSTANCE = new EnumKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Enum.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Enum.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Enum.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class EnumvalueProxy extends DslProxy {
            private EnumvalueProxy() {
            }
        }

        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        private Dsl(Enum.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Enum _build() {
            Enum enumBuild = this._builder.build();
            kotlin.jvm.internal.t.i(enumBuild, "_builder.build()");
            return enumBuild;
        }

        public final /* synthetic */ void addAllEnumvalue(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllEnumvalue(values);
        }

        public final /* synthetic */ void addAllOptions(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllOptions(values);
        }

        public final /* synthetic */ void addEnumvalue(DslList dslList, EnumValue value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addEnumvalue(value);
        }

        public final /* synthetic */ void addOptions(DslList dslList, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addOptions(value);
        }

        public final /* synthetic */ void clearEnumvalue(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearEnumvalue();
        }

        public final void clearName() {
            this._builder.clearName();
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

        public final /* synthetic */ DslList getEnumvalue() {
            List<EnumValue> enumvalueList = this._builder.getEnumvalueList();
            kotlin.jvm.internal.t.i(enumvalueList, "_builder.getEnumvalueList()");
            return new DslList(enumvalueList);
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            kotlin.jvm.internal.t.i(name, "_builder.getName()");
            return name;
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

        public final /* synthetic */ void plusAssignAllEnumvalue(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllEnumvalue(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllOptions(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllOptions(dslList, values);
        }

        public final /* synthetic */ void plusAssignEnumvalue(DslList dslList, EnumValue value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addEnumvalue(dslList, value);
        }

        public final /* synthetic */ void plusAssignOptions(DslList dslList, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addOptions(dslList, value);
        }

        public final /* synthetic */ void setEnumvalue(DslList dslList, int i10, EnumValue value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setEnumvalue(i10, value);
        }

        public final void setName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setName(value);
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

    private EnumKt() {
    }
}
