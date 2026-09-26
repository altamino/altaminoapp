package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class StringValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializestringValue, reason: not valid java name */
    public static final StringValue m35initializestringValue(@NotNull e8.l<? super StringValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        StringValueKt.Dsl.Companion companion = StringValueKt.Dsl.Companion;
        StringValue.Builder builderNewBuilder = StringValue.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        StringValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final StringValue copy(@NotNull StringValue stringValue, @NotNull e8.l<? super StringValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(stringValue, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        StringValueKt.Dsl.Companion companion = StringValueKt.Dsl.Companion;
        StringValue.Builder builder = stringValue.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        StringValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
