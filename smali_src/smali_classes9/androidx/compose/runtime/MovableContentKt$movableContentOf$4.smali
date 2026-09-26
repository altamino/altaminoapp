.class final Landroidx/compose/runtime/MovableContentKt$movableContentOf$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/s<",
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
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .param p4    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    and-int/lit8 v0, p5, 0xe

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p5

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, p5

    .line 17
    .line 18
    :goto_1
    and-int/lit8 v1, p5, 0x70

    .line 19
    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 p5, p5, 0x380

    .line 35
    .line 36
    if-nez p5, :cond_5

    .line 37
    .line 38
    .line 39
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result p5

    .line 41
    .line 42
    if-eqz p5, :cond_4

    .line 43
    .line 44
    const/16 p5, 0x100

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_4
    const/16 p5, 0x80

    .line 48
    :goto_3
    or-int/2addr v0, p5

    .line 49
    .line 50
    :cond_5
    and-int/lit16 p5, v0, 0x16db

    .line 51
    .line 52
    const/16 v0, 0x492

    .line 53
    .line 54
    if-ne p5, v0, :cond_7

    .line 55
    .line 56
    .line 57
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 58
    move-result p5

    .line 59
    .line 60
    if-nez p5, :cond_6

    .line 61
    goto :goto_4

    .line 62
    .line 63
    .line 64
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->g()V

    .line 65
    goto :goto_5

    .line 66
    .line 67
    :cond_7
    :goto_4
    iget-object p5, p0, Landroidx/compose/runtime/MovableContentKt$movableContentOf$4;->$movableContent:Landroidx/compose/runtime/MovableContent;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-interface {p4, p5, p1}, Landroidx/compose/runtime/Composer;->B(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    .line 79
    :goto_5
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p4

    .line 2
    .line 3
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p5, Ljava/lang/Number;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 9
    move-result v5

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/runtime/MovableContentKt$movableContentOf$4;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 17
    .line 18
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 19
    return-object p1
.end method
