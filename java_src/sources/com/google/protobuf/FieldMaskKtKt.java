package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class FieldMaskKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializefieldMask, reason: not valid java name */
    public static final FieldMask m25initializefieldMask(@NotNull e8.l<? super FieldMaskKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        FieldMaskKt.Dsl.Companion companion = FieldMaskKt.Dsl.Companion;
        FieldMask.Builder builderNewBuilder = FieldMask.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        FieldMaskKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final FieldMask copy(@NotNull FieldMask fieldMask, @NotNull e8.l<? super FieldMaskKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(fieldMask, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        FieldMaskKt.Dsl.Companion companion = FieldMaskKt.Dsl.Companion;
        FieldMask.Builder builder = fieldMask.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        FieldMaskKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
