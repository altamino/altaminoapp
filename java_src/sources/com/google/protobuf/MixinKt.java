package com.google.protobuf;

import com.google.protobuf.kotlin.ProtoDslMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class MixinKt {

    @NotNull
    public static final MixinKt INSTANCE = new MixinKt();

    @ProtoDslMarker
    public static final class Dsl {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final Mixin.Builder _builder;

        public static final class Companion {
            public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(Mixin.Builder builder) {
                kotlin.jvm.internal.t.j(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public /* synthetic */ Dsl(Mixin.Builder builder, kotlin.jvm.internal.k kVar) {
            this(builder);
        }

        private Dsl(Mixin.Builder builder) {
            this._builder = builder;
        }

        public final /* synthetic */ Mixin _build() {
            Mixin mixinBuild = this._builder.build();
            kotlin.jvm.internal.t.i(mixinBuild, "_builder.build()");
            return mixinBuild;
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final void clearRoot() {
            this._builder.clearRoot();
        }

        @NotNull
        public final String getName() {
            String name = this._builder.getName();
            kotlin.jvm.internal.t.i(name, "_builder.getName()");
            return name;
        }

        @NotNull
        public final String getRoot() {
            String root = this._builder.getRoot();
            kotlin.jvm.internal.t.i(root, "_builder.getRoot()");
            return root;
        }

        public final void setName(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setName(value);
        }

        public final void setRoot(@NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            this._builder.setRoot(value);
        }
    }

    private MixinKt() {
    }
}
