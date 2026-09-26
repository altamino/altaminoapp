package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class TimestampKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializetimestamp, reason: not valid java name */
    public static final Timestamp m37initializetimestamp(@NotNull e8.l<? super TimestampKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        TimestampKt.Dsl.Companion companion = TimestampKt.Dsl.Companion;
        Timestamp.Builder builderNewBuilder = Timestamp.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        TimestampKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Timestamp copy(@NotNull Timestamp timestamp, @NotNull e8.l<? super TimestampKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(timestamp, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        TimestampKt.Dsl.Companion companion = TimestampKt.Dsl.Companion;
        Timestamp.Builder builder = timestamp.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        TimestampKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
