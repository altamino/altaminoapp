package com.google.protobuf;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class MethodKt {

    @NotNull
    public static final MethodKt INSTANCE = new MethodKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Method.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Method.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Method.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class OptionsProxy extends DslProxy {
            private OptionsProxy() {
            }
        }

        private Dsl(Method.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Method _build() {
            Method methodBuild = this._builder.build();
            kotlin.jvm.internal.t.i(methodBuild, "_builder.build()");
            return methodBuild;
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

        public final void clearName() {
            this._builder.clearName();
        }

        public final /* synthetic */ void clearOptions(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearOptions();
        }

        public final void clearRequestStreaming() {
            this._builder.clearRequestStreaming();
        }

        public final void clearRequestTypeUrl() {
            this._builder.clearRequestTypeUrl();
        }

        public final void clearResponseStreaming() {
            this._builder.clearResponseStreaming();
        }

        public final void clearResponseTypeUrl() {
            this._builder.clearResponseTypeUrl();
        }

        public final void clearSyntax() {
            this._builder.clearSyntax();
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

        public final boolean getRequestStreaming() {
            return this._builder.getRequestStreaming();
        }

        @NotNull
        public final String getRequestTypeUrl() {
            String requestTypeUrl = this._builder.getRequestTypeUrl();
            kotlin.jvm.internal.t.i(requestTypeUrl, "_builder.getRequestTypeUrl()");
            return requestTypeUrl;
        }

        public final boolean getResponseStreaming() {
            return this._builder.getResponseStreaming();
        }

        @NotNull
        public final String getResponseTypeUrl() {
            String responseTypeUrl = this._builder.getResponseTypeUrl();
            kotlin.jvm.internal.t.i(responseTypeUrl, "_builder.getResponseTypeUrl()");
            return responseTypeUrl;
        }

        @NotNull
        public final Syntax getSyntax() {
            Syntax syntax = this._builder.getSyntax();
            kotlin.jvm.internal.t.i(syntax, "_builder.getSyntax()");
            return syntax;
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

        public final void setName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setName(value);
        }

        public final /* synthetic */ void setOptions(DslList dslList, int i10, Option value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setOptions(i10, value);
        }

        public final void setRequestStreaming(boolean z6) {
            this._builder.setRequestStreaming(z6);
        }

        public final void setRequestTypeUrl(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setRequestTypeUrl(value);
        }

        public final void setResponseStreaming(boolean z6) {
            this._builder.setResponseStreaming(z6);
        }

        public final void setResponseTypeUrl(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setResponseTypeUrl(value);
        }

        public final void setSyntax(@NotNull Syntax value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setSyntax(value);
        }
    }

    private MethodKt() {
    }
}
