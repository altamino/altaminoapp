package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class SourceContextKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializesourceContext, reason: not valid java name */
    public static final SourceContext m34initializesourceContext(@NotNull e8.l<? super SourceContextKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        SourceContextKt.Dsl.Companion companion = SourceContextKt.Dsl.Companion;
        SourceContext.Builder builderNewBuilder = SourceContext.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        SourceContextKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final SourceContext copy(@NotNull SourceContext sourceContext, @NotNull e8.l<? super SourceContextKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(sourceContext, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        SourceContextKt.Dsl.Companion companion = SourceContextKt.Dsl.Companion;
        SourceContext.Builder builder = sourceContext.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        SourceContextKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
