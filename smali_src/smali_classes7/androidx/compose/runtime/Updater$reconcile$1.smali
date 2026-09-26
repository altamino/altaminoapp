.class final Landroidx/compose/runtime/Updater$reconcile$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Object;",
        "Lw7/l0;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;Lw7/l0;)V
    .locals 1
    .param p2    # Lw7/l0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/compose/runtime/Updater$reconcile$1;->$block:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lw7/l0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Updater$reconcile$1;->a(Ljava/lang/Object;Lw7/l0;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
