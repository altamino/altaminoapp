package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class MethodKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializemethod, reason: not valid java name */
    public static final Method m31initializemethod(@NotNull e8.l<? super MethodKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        MethodKt.Dsl.Companion companion = MethodKt.Dsl.Companion;
        Method.Builder builderNewBuilder = Method.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        MethodKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Method copy(@NotNull Method method, @NotNull e8.l<? super MethodKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(method, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        MethodKt.Dsl.Companion companion = MethodKt.Dsl.Companion;
        Method.Builder builder = method.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        MethodKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
