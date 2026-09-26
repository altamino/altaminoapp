.class final Landroidx/compose/material/SwipeableState$Companion$Saver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Object;",
        "Landroidx/compose/material/SwipeableState<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $confirmStateChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/compose/material/SwipeableState;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/compose/material/SwipeableState<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/material/SwipeableState;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/material/SwipeableState$Companion$Saver$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/material/SwipeableState$Companion$Saver$2;->$confirmStateChange:Le8/l;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/material/SwipeableState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/l;)V

    .line 15
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/material/SwipeableState$Companion$Saver$2;->a(Ljava/lang/Object;)Landroidx/compose/material/SwipeableState;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
