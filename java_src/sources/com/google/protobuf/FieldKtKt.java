package com.google.protobuf;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class FieldKtKt {
    @NotNull
    /* JADX INFO: renamed from: -initializefield, reason: not valid java name */
    public static final Field m24initializefield(@NotNull e8.l<? super FieldKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(block, "block");
        FieldKt.Dsl.Companion companion = FieldKt.Dsl.Companion;
        Field.Builder builderNewBuilder = Field.newBuilder();
        kotlin.jvm.internal.t.i(builderNewBuilder, "newBuilder()");
        FieldKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    @NotNull
    public static final Field copy(@NotNull Field field, @NotNull e8.l<? super FieldKt.Dsl, w7.l0> block) {
        kotlin.jvm.internal.t.j(field, "<this>");
        kotlin.jvm.internal.t.j(block, "block");
        FieldKt.Dsl.Companion companion = FieldKt.Dsl.Companion;
        Field.Builder builder = field.toBuilder();
        kotlin.jvm.internal.t.i(builder, "this.toBuilder()");
        FieldKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
