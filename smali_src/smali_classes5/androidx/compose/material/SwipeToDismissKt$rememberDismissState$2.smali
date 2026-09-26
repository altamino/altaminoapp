.class final Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/material/DismissState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $confirmStateChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/material/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initialValue:Landroidx/compose/material/DismissValue;


# virtual methods
.method public final b()Landroidx/compose/material/DismissState;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/DismissState;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$2;->$initialValue:Landroidx/compose/material/DismissValue;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$2;->$confirmStateChange:Le8/l;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/compose/material/DismissState;-><init>(Landroidx/compose/material/DismissValue;Le8/l;)V

    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$2;->b()Landroidx/compose/material/DismissState;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
