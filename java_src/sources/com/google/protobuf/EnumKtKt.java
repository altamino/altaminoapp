package com.google.protobuf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class EnumKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeenum, reason: not valid java name */
    public static final Enum m22initializeenum(@NotNull e8.l<? super EnumKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        EnumKt.Dsl.Companion companion = EnumKt.Dsl.Companion;
        Enum.Builder builderNewBuilder = Enum.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        EnumKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Enum copy(@NotNull Enum r5, @NotNull e8.l<? super EnumKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(r5, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        EnumKt.Dsl.Companion companion = EnumKt.Dsl.Companion;
        Enum.Builder builder = r5.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        EnumKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @Nullable
    public static final SourceContext getSourceContextOrNull(@NotNull EnumOrBuilder enumOrBuilder) {
        kotlin.jvm.internal.t.j(enumOrBuilder, "<this>");
        if (enumOrBuilder.hasSourceContext()) {
            return enumOrBuilder.getSourceContext();
        }
        return null;
    }
}
