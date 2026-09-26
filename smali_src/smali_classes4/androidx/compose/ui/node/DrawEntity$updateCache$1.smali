.class final Landroidx/compose/ui/node/DrawEntity$updateCache$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/DrawEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/DrawEntity;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/DrawEntity;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/DrawEntity$updateCache$1;->this$0:Landroidx/compose/ui/node/DrawEntity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/DrawEntity$updateCache$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/DrawEntity$updateCache$1;->this$0:Landroidx/compose/ui/node/DrawEntity;

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/node/DrawEntity;->k(Landroidx/compose/ui/node/DrawEntity;)Landroidx/compose/ui/draw/DrawCacheModifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/node/DrawEntity$updateCache$1;->this$0:Landroidx/compose/ui/node/DrawEntity;

    invoke-static {v1}, Landroidx/compose/ui/node/DrawEntity;->j(Landroidx/compose/ui/node/DrawEntity;)Landroidx/compose/ui/draw/BuildDrawCacheParams;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/draw/DrawCacheModifier;->M(Landroidx/compose/ui/draw/BuildDrawCacheParams;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/DrawEntity$updateCache$1;->this$0:Landroidx/compose/ui/node/DrawEntity;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DrawEntity;->l(Landroidx/compose/ui/node/DrawEntity;Z)V

    return-void
.end method
