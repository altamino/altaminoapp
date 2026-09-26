package com.google.protobuf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class OptionKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeoption, reason: not valid java name */
    public static final Option m33initializeoption(@NotNull e8.l<? super OptionKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        OptionKt.Dsl.Companion companion = OptionKt.Dsl.Companion;
        Option.Builder builderNewBuilder = Option.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        OptionKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Option copy(@NotNull Option option, @NotNull e8.l<? super OptionKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(option, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        OptionKt.Dsl.Companion companion = OptionKt.Dsl.Companion;
        Option.Builder builder = option.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        OptionKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @Nullable
    public static final Any getValueOrNull(@NotNull OptionOrBuilder optionOrBuilder) {
        kotlin.jvm.internal.t.j(optionOrBuilder, "<this>");
        if (optionOrBuilder.hasValue()) {
            return optionOrBuilder.getValue();
        }
        return null;
    }
}
