package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class BytesValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializebytesValue, reason: not valid java name */
    public static final BytesValue m18initializebytesValue(@NotNull e8.l<? super BytesValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        BytesValueKt.Dsl.Companion companion = BytesValueKt.Dsl.Companion;
        BytesValue.Builder builderNewBuilder = BytesValue.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        BytesValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final BytesValue copy(@NotNull BytesValue bytesValue, @NotNull e8.l<? super BytesValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(bytesValue, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        BytesValueKt.Dsl.Companion companion = BytesValueKt.Dsl.Companion;
        BytesValue.Builder builder = bytesValue.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        BytesValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
