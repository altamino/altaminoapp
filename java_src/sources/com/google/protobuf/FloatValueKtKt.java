package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class FloatValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializefloatValue, reason: not valid java name */
    public static final FloatValue m27initializefloatValue(@NotNull e8.l<? super FloatValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        FloatValueKt.Dsl.Companion companion = FloatValueKt.Dsl.Companion;
        FloatValue.Builder builderNewBuilder = FloatValue.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        FloatValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final FloatValue copy(@NotNull FloatValue floatValue, @NotNull e8.l<? super FloatValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(floatValue, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        FloatValueKt.Dsl.Companion companion = FloatValueKt.Dsl.Companion;
        FloatValue.Builder builder = floatValue.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        FloatValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
