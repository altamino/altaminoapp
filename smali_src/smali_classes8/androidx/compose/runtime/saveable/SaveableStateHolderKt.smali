.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaveableStateHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,142:1\n76#2:143\n*S KotlinDebug\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderKt\n*L\n65#1:143\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .locals 7
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, 0xebd1ab

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    new-array v0, p1, [Ljava/lang/Object;

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->Companion:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;->a()Landroidx/compose/runtime/saveable/Saver;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    sget-object v3, Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaveableStateHolderKt$rememberSaveableStateHolder$1;

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    const/4 v6, 0x4

    .line 22
    move-object v4, p0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->h(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    return-object p1
.end method
