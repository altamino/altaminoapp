.class final Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidViewHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
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
.field final synthetic this$0:Landroidx/compose/ui/viewinterop/AndroidViewHolder;


# direct methods
.method constructor <init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 2
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->e(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-static {v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Le8/l;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getUpdate()Le8/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->k(Ljava/lang/Object;Le8/l;Le8/a;)V

    :cond_0
    return-void
.end method
