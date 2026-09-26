.class final Landroidx/compose/material/DismissState$Companion$Saver$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/material/DismissValue;",
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


# virtual methods
.method public final a(Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissState;
    .locals 2
    .param p1    # Landroidx/compose/material/DismissValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Landroidx/compose/material/DismissState;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/material/DismissState$Companion$Saver$2;->$confirmStateChange:Le8/l;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroidx/compose/material/DismissState;-><init>(Landroidx/compose/material/DismissValue;Le8/l;)V

    .line 13
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/material/DismissValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/DismissState$Companion$Saver$2;->a(Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissState;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
