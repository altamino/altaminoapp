package com.google.protobuf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class TypeKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializetype, reason: not valid java name */
    public static final Type m38initializetype(@NotNull e8.l<? super TypeKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        TypeKt.Dsl.Companion companion = TypeKt.Dsl.Companion;
        Type.Builder builderNewBuilder = Type.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        TypeKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Type copy(@NotNull Type type, @NotNull e8.l<? super TypeKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(type, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        TypeKt.Dsl.Companion companion = TypeKt.Dsl.Companion;
        Type.Builder builder = type.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        TypeKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @Nullable
    public static final SourceContext getSourceContextOrNull(@NotNull TypeOrBuilder typeOrBuilder) {
        kotlin.jvm.internal.t.j(typeOrBuilder, "<this>");
        if (typeOrBuilder.hasSourceContext()) {
            return typeOrBuilder.getSourceContext();
        }
        return null;
    }
}
