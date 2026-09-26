package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class Int32ValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeint32Value, reason: not valid java name */
    public static final Int32Value m28initializeint32Value(@NotNull e8.l<? super Int32ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        Int32ValueKt.Dsl.Companion companion = Int32ValueKt.Dsl.Companion;
        Int32Value.Builder builderNewBuilder = Int32Value.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        Int32ValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Int32Value copy(@NotNull Int32Value int32Value, @NotNull e8.l<? super Int32ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(int32Value, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        Int32ValueKt.Dsl.Companion companion = Int32ValueKt.Dsl.Companion;
        Int32Value.Builder builder = int32Value.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        Int32ValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
