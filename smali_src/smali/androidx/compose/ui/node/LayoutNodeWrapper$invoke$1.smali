.class final Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNodeWrapper;->N1(Landroidx/compose/ui/graphics/Canvas;)V
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
.field final synthetic $canvas:Landroidx/compose/ui/graphics/Canvas;

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNodeWrapper;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;->this$0:Landroidx/compose/ui/node/LayoutNodeWrapper;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;->$canvas:Landroidx/compose/ui/graphics/Canvas;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;->this$0:Landroidx/compose/ui/node/LayoutNodeWrapper;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeWrapper$invoke$1;->$canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 2
    invoke-static {v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->V0(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/graphics/Canvas;)V

    return-void
.end method
