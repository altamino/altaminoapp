package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class MixinKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializemixin, reason: not valid java name */
    public static final Mixin m32initializemixin(@NotNull e8.l<? super MixinKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        MixinKt.Dsl.Companion companion = MixinKt.Dsl.Companion;
        Mixin.Builder builderNewBuilder = Mixin.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        MixinKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Mixin copy(@NotNull Mixin mixin, @NotNull e8.l<? super MixinKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(mixin, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        MixinKt.Dsl.Companion companion = MixinKt.Dsl.Companion;
        Mixin.Builder builder = mixin.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        MixinKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
