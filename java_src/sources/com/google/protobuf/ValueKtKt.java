package com.google.protobuf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ValueKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializevalue, reason: not valid java name */
    public static final Value m41initializevalue(@NotNull e8.l<? super ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        ValueKt.Dsl.Companion companion = ValueKt.Dsl.Companion;
        Value.Builder builderNewBuilder = Value.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        ValueKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Value copy(@NotNull Value value, @NotNull e8.l<? super ValueKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(value, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        ValueKt.Dsl.Companion companion = ValueKt.Dsl.Companion;
        Value.Builder builder = value.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        ValueKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @Nullable
    public static final ListValue getListValueOrNull(@NotNull ValueOrBuilder valueOrBuilder) {
        kotlin.jvm.internal.t.j(valueOrBuilder, "<this>");
        if (valueOrBuilder.hasListValue()) {
            return valueOrBuilder.getListValue();
        }
        return null;
    }

    @Nullable
    public static final Struct getStructValueOrNull(@NotNull ValueOrBuilder valueOrBuilder) {
        kotlin.jvm.internal.t.j(valueOrBuilder, "<this>");
        if (valueOrBuilder.hasStructValue()) {
            return valueOrBuilder.getStructValue();
        }
        return null;
    }
}
