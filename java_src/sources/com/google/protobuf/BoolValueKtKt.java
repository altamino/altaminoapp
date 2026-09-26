package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class BoolValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeboolValue, reason: not valid java name */
    public static final BoolValue m17initializeboolValue(@NotNull e8.l<? super BoolValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        BoolValueKt.Dsl.Companion companion = BoolValueKt.Dsl.Companion;
        BoolValue.Builder builderNewBuilder = BoolValue.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        BoolValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final BoolValue copy(@NotNull BoolValue boolValue, @NotNull e8.l<? super BoolValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(boolValue, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        BoolValueKt.Dsl.Companion companion = BoolValueKt.Dsl.Companion;
        BoolValue.Builder builder = boolValue.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        BoolValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
