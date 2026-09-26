package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class SourceContextKt {

    @NotNull
    public static final SourceContextKt INSTANCE = new SourceContextKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final SourceContext.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(SourceContext.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(SourceContext.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(SourceContext.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ SourceContext _build() {
            SourceContext sourceContextBuild = this._builder.build();
            kotlin.jvm.internal.t.i(sourceContextBuild, "_builder.build()");
            return sourceContextBuild;
        }

        public final void clearFileName() {
            this._builder.clearFileName();
        }

        @NotNull
        public final String getFileName() {
            String fileName = this._builder.getFileName();
            kotlin.jvm.internal.t.i(fileName, "_builder.getFileName()");
            return fileName;
        }

        public final void setFileName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setFileName(value);
        }
    }

    private SourceContextKt() {
    }
}
