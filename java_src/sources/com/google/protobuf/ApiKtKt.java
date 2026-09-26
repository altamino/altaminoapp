package com.google.protobuf;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ApiKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializeapi, reason: not valid java name */
    public static final Api m16initializeapi(@NotNull e8.l<? super ApiKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        ApiKt.Dsl.Companion companion = ApiKt.Dsl.Companion;
        Api.Builder builderNewBuilder = Api.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        ApiKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Api copy(@NotNull Api api, @NotNull e8.l<? super ApiKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(api, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        ApiKt.Dsl.Companion companion = ApiKt.Dsl.Companion;
        Api.Builder builder = api.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        ApiKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @Nullable
    public static final SourceContext getSourceContextOrNull(@NotNull ApiOrBuilder apiOrBuilder) {
        kotlin.jvm.internal.t.j(apiOrBuilder, "<this>");
        if (apiOrBuilder.hasSourceContext()) {
            return apiOrBuilder.getSourceContext();
        }
        return null;
    }
}
