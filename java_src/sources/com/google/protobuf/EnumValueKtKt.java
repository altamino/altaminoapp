package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class EnumValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeenumValue, reason: not valid java name */
    public static final EnumValue m23initializeenumValue(@NotNull e8.l<? super EnumValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        EnumValueKt.Dsl.Companion companion = EnumValueKt.Dsl.Companion;
        EnumValue.Builder builderNewBuilder = EnumValue.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        EnumValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final EnumValue copy(@NotNull EnumValue enumValue, @NotNull e8.l<? super EnumValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(enumValue, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        EnumValueKt.Dsl.Companion companion = EnumValueKt.Dsl.Companion;
        EnumValue.Builder builder = enumValue.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        EnumValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
