package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class Int64ValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeint64Value, reason: not valid java name */
    public static final Int64Value m29initializeint64Value(@NotNull e8.l<? super Int64ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        Int64ValueKt.Dsl.Companion companion = Int64ValueKt.Dsl.Companion;
        Int64Value.Builder builderNewBuilder = Int64Value.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        Int64ValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Int64Value copy(@NotNull Int64Value int64Value, @NotNull e8.l<? super Int64ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(int64Value, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        Int64ValueKt.Dsl.Companion companion = Int64ValueKt.Dsl.Companion;
        Int64Value.Builder builder = int64Value.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        Int64ValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
