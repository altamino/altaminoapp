package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class DurationKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeduration, reason: not valid java name */
    public static final Duration m20initializeduration(@NotNull e8.l<? super DurationKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        DurationKt.Dsl.Companion companion = DurationKt.Dsl.Companion;
        Duration.Builder builderNewBuilder = Duration.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        DurationKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Duration copy(@NotNull Duration duration, @NotNull e8.l<? super DurationKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(duration, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        DurationKt.Dsl.Companion companion = DurationKt.Dsl.Companion;
        Duration.Builder builder = duration.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        DurationKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
