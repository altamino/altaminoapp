package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class EmptyKt {

    @NotNull
    public static final EmptyKt INSTANCE = new EmptyKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Empty.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Empty.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Empty.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Empty.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Empty _build() {
            Empty emptyBuild = this._builder.build();
            kotlin.jvm.internal.t.i(emptyBuild, "_builder.build()");
            return emptyBuild;
        }
    }

    private EmptyKt() {
    }
}
