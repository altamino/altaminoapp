package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class UInt64ValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeuInt64Value, reason: not valid java name */
    public static final UInt64Value m40initializeuInt64Value(@NotNull e8.l<? super UInt64ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        UInt64ValueKt.Dsl.Companion companion = UInt64ValueKt.Dsl.Companion;
        UInt64Value.Builder builderNewBuilder = UInt64Value.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        UInt64ValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final UInt64Value copy(@NotNull UInt64Value uInt64Value, @NotNull e8.l<? super UInt64ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(uInt64Value, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        UInt64ValueKt.Dsl.Companion companion = UInt64ValueKt.Dsl.Companion;
        UInt64Value.Builder builder = uInt64Value.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        UInt64ValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
