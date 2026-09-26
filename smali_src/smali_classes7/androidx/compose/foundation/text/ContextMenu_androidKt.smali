.class public final Landroidx/compose/foundation/text/ContextMenu_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/foundation/text/selection/SelectionManager;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p0    # Landroidx/compose/foundation/text/selection/SelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionManager;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "manager"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x24178b1c

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    and-int/lit8 v0, p3, 0x70

    .line 20
    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x20

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    or-int/2addr v0, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, p3

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v2, v0, 0x51

    .line 39
    .line 40
    if-ne v2, v1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 51
    goto :goto_3

    .line 52
    .line 53
    :cond_3
    :goto_2
    shr-int/lit8 v0, v0, 0x3

    .line 54
    .line 55
    and-int/lit8 v0, v0, 0xe

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    if-nez p2, :cond_4

    .line 69
    goto :goto_4

    .line 70
    .line 71
    :cond_4
    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$2;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;Le8/p;I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 78
    :goto_4
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p0    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "manager"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, -0x7658948d

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    and-int/lit8 v0, p3, 0x70

    .line 20
    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/16 v0, 0x20

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    or-int/2addr v0, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, p3

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v2, v0, 0x51

    .line 39
    .line 40
    if-ne v2, v1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 51
    goto :goto_3

    .line 52
    .line 53
    :cond_3
    :goto_2
    shr-int/lit8 v0, v0, 0x3

    .line 54
    .line 55
    and-int/lit8 v0, v0, 0xe

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :goto_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    if-nez p2, :cond_4

    .line 69
    goto :goto_4

    .line 70
    .line 71
    :cond_4
    new-instance v0, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$1;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/ContextMenu_androidKt$ContextMenuArea$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Le8/p;I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 78
    :goto_4
    return-void
.end method
