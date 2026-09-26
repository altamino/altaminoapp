package com.google.protobuf;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class FieldMaskKt {

    @NotNull
    public static final FieldMaskKt INSTANCE = new FieldMaskKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final FieldMask.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(FieldMask.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(FieldMask.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class PathsProxy extends DslProxy {
            private PathsProxy() {
            }
        }

        private Dsl(FieldMask.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ FieldMask _build() {
            FieldMask fieldMaskBuild = this._builder.build();
            kotlin.jvm.internal.t.i(fieldMaskBuild, "_builder.build()");
            return fieldMaskBuild;
        }

        public final /* synthetic */ void addAllPaths(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            this._builder.addAllPaths(values);
        }

        public final /* synthetic */ void addPaths(DslList dslList, String value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.addPaths(value);
        }

        public final /* synthetic */ void clearPaths(DslList dslList) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            this._builder.clearPaths();
        }

        @NotNull
        public final DslList<String, PathsProxy> getPaths() {
            List<String> pathsList = this._builder.getPathsList();
            kotlin.jvm.internal.t.i(pathsList, "_builder.getPathsList()");
            return new DslList<>(pathsList);
        }

        public final /* synthetic */ void plusAssignAllPaths(DslList dslList, Iterable values) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(values, "values");
            addAllPaths(dslList, values);
        }

        public final /* synthetic */ void plusAssignPaths(DslList dslList, String value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            addPaths(dslList, value);
        }

        public final /* synthetic */ void setPaths(DslList dslList, int i10, String value) {
            kotlin.jvm.internal.t.j(dslList, "<this>");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setPaths(i10, value);
        }
    }

    private FieldMaskKt() {
    }
}
