package com.google.protobuf;

import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class StructKt {

    @NotNull
    public static final StructKt INSTANCE = new StructKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Struct.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Struct.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Struct.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        public static final class FieldsProxy extends DslProxy {
            private FieldsProxy() {
            }
        }

        private Dsl(Struct.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Struct _build() {
            Struct structBuild = this._builder.build();
            kotlin.jvm.internal.t.i(structBuild, "_builder.build()");
            return structBuild;
        }

        public final /* synthetic */ void clearFields(DslMap dslMap) {
            kotlin.jvm.internal.t.j(dslMap, "<this>");
            this._builder.clearFields();
        }

        public final /* synthetic */ DslMap getFieldsMap() {
            Map<String, Value> fieldsMap = this._builder.getFieldsMap();
            kotlin.jvm.internal.t.i(fieldsMap, "_builder.getFieldsMap()");
            return new DslMap(fieldsMap);
        }

        public final /* synthetic */ void putAllFields(DslMap dslMap, Map map) {
            kotlin.jvm.internal.t.j(dslMap, "<this>");
            kotlin.jvm.internal.t.j(map, "map");
            this._builder.putAllFields(map);
        }

        public final void putFields(@NotNull DslMap<String, Value, FieldsProxy> dslMap, @NotNull String key, @NotNull Value value) {
            kotlin.jvm.internal.t.j(dslMap, "<this>");
            kotlin.jvm.internal.t.j(key, "key");
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.putFields(key, value);
        }

        public final /* synthetic */ void removeFields(DslMap dslMap, String key) {
            kotlin.jvm.internal.t.j(dslMap, "<this>");
            kotlin.jvm.internal.t.j(key, "key");
            this._builder.removeFields(key);
        }

        public final /* synthetic */ void setFields(DslMap dslMap, String key, Value value) {
            kotlin.jvm.internal.t.j(dslMap, "<this>");
            kotlin.jvm.internal.t.j(key, "key");
            kotlin.jvm.internal.t.j(value, "value");
            putFields(dslMap, key, value);
        }
    }

    private StructKt() {
    }
}
