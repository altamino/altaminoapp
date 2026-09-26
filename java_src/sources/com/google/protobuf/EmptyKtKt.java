package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class EmptyKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeempty, reason: not valid java name */
    public static final Empty m21initializeempty(@NotNull e8.l<? super EmptyKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        EmptyKt.Dsl.Companion companion = EmptyKt.Dsl.Companion;
        Empty.Builder builderNewBuilder = Empty.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        EmptyKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Empty copy(@NotNull Empty empty, @NotNull e8.l<? super EmptyKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(empty, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        EmptyKt.Dsl.Companion companion = EmptyKt.Dsl.Companion;
        Empty.Builder builder = empty.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        EmptyKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
