package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class StructKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializestruct, reason: not valid java name */
    public static final Struct m36initializestruct(@NotNull e8.l<? super StructKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        StructKt.Dsl.Companion companion = StructKt.Dsl.Companion;
        Struct.Builder builderNewBuilder = Struct.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        StructKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Struct copy(@NotNull Struct struct, @NotNull e8.l<? super StructKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(struct, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        StructKt.Dsl.Companion companion = StructKt.Dsl.Companion;
        Struct.Builder builder = struct.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        StructKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
