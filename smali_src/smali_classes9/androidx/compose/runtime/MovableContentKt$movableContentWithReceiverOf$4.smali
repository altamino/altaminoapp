.class final Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/t<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $movableContent:Landroidx/compose/runtime/MovableContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MovableContent<",
            "Lw7/u<",
            "Lw7/u<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lw7/u<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    and-int/lit8 v0, p6, 0xe

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    :goto_0
    or-int/2addr v0, p6

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, p6

    .line 17
    .line 18
    :goto_1
    and-int/lit8 v1, p6, 0x70

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x20

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    const/16 v1, 0x10

    .line 32
    :goto_2
    or-int/2addr v0, v1

    .line 33
    .line 34
    :cond_3
    and-int/lit16 v1, p6, 0x380

    .line 35
    .line 36
    if-nez v1, :cond_5

    .line 37
    .line 38
    .line 39
    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    const/16 v1, 0x100

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_4
    const/16 v1, 0x80

    .line 48
    :goto_3
    or-int/2addr v0, v1

    .line 49
    .line 50
    :cond_5
    and-int/lit16 p6, p6, 0x1c00

    .line 51
    .line 52
    if-nez p6, :cond_7

    .line 53
    .line 54
    .line 55
    invoke-interface {p5, p4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 56
    move-result p6

    .line 57
    .line 58
    if-eqz p6, :cond_6

    .line 59
    .line 60
    const/16 p6, 0x800

    .line 61
    goto :goto_4

    .line 62
    .line 63
    :cond_6
    const/16 p6, 0x400

    .line 64
    :goto_4
    or-int/2addr v0, p6

    .line 65
    .line 66
    .line 67
    :cond_7
    const p6, 0xb6db

    .line 68
    and-int/2addr p6, v0

    .line 69
    .line 70
    const/16 v0, 0x2492

    .line 71
    .line 72
    if-ne p6, v0, :cond_9

    .line 73
    .line 74
    .line 75
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->b()Z

    .line 76
    move-result p6

    .line 77
    .line 78
    if-nez p6, :cond_8

    .line 79
    goto :goto_5

    .line 80
    .line 81
    .line 82
    :cond_8
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->g()V

    .line 83
    goto :goto_6

    .line 84
    .line 85
    :cond_9
    :goto_5
    iget-object p6, p0, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$4;->$movableContent:Landroidx/compose/runtime/MovableContent;

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-static {p3, p4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-interface {p5, p6, p1}, Landroidx/compose/runtime/Composer;->B(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    .line 101
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p5

    .line 2
    .line 3
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p6, Ljava/lang/Number;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    .line 9
    move-result v6

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$4;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 18
    .line 19
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method
