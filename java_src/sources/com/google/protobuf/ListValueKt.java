package com.google.protobuf;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class ListValueKt {

    @NotNull
    public static final ListValueKt INSTANCE = new ListValueKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final ListValue.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(ListValue.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(ListValue.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class ValuesProxy extends DslProxy {
            private ValuesProxy() {
            }
        }

        private Dsl(ListValue.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ ListValue _build() {
            ListValue listValueBuild = this._builder.build();
            kotlin.jvm.internal.t.i(listValueBuild, "_builder.build()");
            return listValueBuild;
        }

        public final /* synthetic */ void addAllValues(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllValues(values);
        }

        public final /* synthetic */ void addValues(DslList dslList, Value value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addValues(value);
        }

        public final /* synthetic */ void clearValues(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearValues();
        }

        public final /* synthetic */ DslList getValues() {
            List<Value> valuesList = this._builder.getValuesList();
            kotlin.jvm.internal.t.i(valuesList, "_builder.getValuesList()");
            return new DslList(valuesList);
        }

        public final /* synthetic */ void plusAssignAllValues(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllValues(dslList, values);
        }

        public final /* synthetic */ void plusAssignValues(DslList dslList, Value value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addValues(dslList, value);
        }

        public final /* synthetic */ void setValues(DslList dslList, int i10, Value value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setValues(i10, value);
        }
    }

    private ListValueKt() {
    }
}
