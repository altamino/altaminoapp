package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class ListValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializelistValue, reason: not valid java name */
    public static final ListValue m30initializelistValue(@NotNull e8.l<? super ListValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        ListValueKt.Dsl.Companion companion = ListValueKt.Dsl.Companion;
        ListValue.Builder builderNewBuilder = ListValue.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        ListValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final ListValue copy(@NotNull ListValue listValue, @NotNull e8.l<? super ListValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(listValue, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        ListValueKt.Dsl.Companion companion = ListValueKt.Dsl.Companion;
        ListValue.Builder builder = listValue.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        ListValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
