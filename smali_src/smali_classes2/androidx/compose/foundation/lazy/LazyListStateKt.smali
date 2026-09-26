.class public final Landroidx/compose/foundation/lazy/LazyListStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 8
    .param p2    # Landroidx/compose/runtime/Composer;
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
    const p3, 0x57a86af4

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 p3, p4, 0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    move p0, v0

    .line 13
    .line 14
    :cond_0
    and-int/lit8 p3, p4, 0x2

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    move p1, v0

    .line 18
    .line 19
    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    sget-object p3, Landroidx/compose/foundation/lazy/LazyListState;->Companion:Landroidx/compose/foundation/lazy/LazyListState$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/LazyListState$Companion;->a()Landroidx/compose/runtime/saveable/Saver;

    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListStateKt$rememberLazyListState$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, p0, p1}, Landroidx/compose/foundation/lazy/LazyListStateKt$rememberLazyListState$1;-><init>(II)V

    .line 32
    .line 33
    const/16 v6, 0x48

    .line 34
    const/4 v7, 0x4

    .line 35
    move-object v5, p2

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    return-object p0
.end method
