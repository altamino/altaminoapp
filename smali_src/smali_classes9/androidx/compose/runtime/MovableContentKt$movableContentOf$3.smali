.class final Landroidx/compose/runtime/MovableContentKt$movableContentOf$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/r<",
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
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .param p3    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    and-int/lit8 v0, p4, 0xe

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, p4

    .line 17
    .line 18
    :goto_1
    and-int/lit8 p4, p4, 0x70

    .line 19
    .line 20
    if-nez p4, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 24
    move-result p4

    .line 25
    .line 26
    if-eqz p4, :cond_2

    .line 27
    .line 28
    const/16 p4, 0x20

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    const/16 p4, 0x10

    .line 32
    :goto_2
    or-int/2addr v0, p4

    .line 33
    .line 34
    :cond_3
    and-int/lit16 p4, v0, 0x2db

    .line 35
    .line 36
    const/16 v0, 0x92

    .line 37
    .line 38
    if-ne p4, v0, :cond_5

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 42
    move-result p4

    .line 43
    .line 44
    if-nez p4, :cond_4

    .line 45
    goto :goto_3

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->g()V

    .line 49
    goto :goto_4

    .line 50
    .line 51
    :cond_5
    :goto_3
    iget-object p4, p0, Landroidx/compose/runtime/MovableContentKt$movableContentOf$3;->$movableContent:Landroidx/compose/runtime/MovableContent;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-interface {p3, p4, p1}, Landroidx/compose/runtime/Composer;->B(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    .line 59
    :goto_4
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p4, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/MovableContentKt$movableContentOf$3;->a(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
