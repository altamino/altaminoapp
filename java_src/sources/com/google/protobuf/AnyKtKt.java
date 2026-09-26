package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class AnyKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeany, reason: not valid java name */
    public static final Any m15initializeany(@NotNull e8.l<? super AnyKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        AnyKt.Dsl.Companion companion = AnyKt.Dsl.Companion;
        Any.Builder builderNewBuilder = Any.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        AnyKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Any copy(@NotNull Any any, @NotNull e8.l<? super AnyKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(any, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        AnyKt.Dsl.Companion companion = AnyKt.Dsl.Companion;
        Any.Builder builder = any.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        AnyKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
