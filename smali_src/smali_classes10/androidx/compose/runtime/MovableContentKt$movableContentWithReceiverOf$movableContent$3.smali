.class final Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$movableContent$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Lw7/u<",
        "+",
        "Lw7/u<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $content:Le8/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field


# virtual methods
.method public final a(Lw7/u;Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .param p1    # Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "+",
            "Lw7/u<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$movableContent$3;->$content:Le8/s;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    check-cast p3, Lw7/u;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lw7/u;->c()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    check-cast p3, Lw7/u;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Lw7/u;->d()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    const/4 p1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v5

    .line 37
    move-object v4, p2

    .line 38
    .line 39
    .line 40
    invoke-interface/range {v0 .. v5}, Le8/s;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lw7/u;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/MovableContentKt$movableContentWithReceiverOf$movableContent$3;->a(Lw7/u;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
