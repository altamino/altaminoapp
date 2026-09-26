.class final Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->G0(Ljava/util/List;)V
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
.field final synthetic $to:Landroidx/compose/runtime/MovableContentStateReference;

.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 2
    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->c()Landroidx/compose/runtime/MovableContent;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 3
    invoke-virtual {v2}, Landroidx/compose/runtime/MovableContentStateReference;->e()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/runtime/ComposerImpl$insertMovableContentReferences$1$1$5$1$1$1;->$to:Landroidx/compose/runtime/MovableContentStateReference;

    .line 4
    invoke-virtual {v3}, Landroidx/compose/runtime/MovableContentStateReference;->f()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->c0(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;Ljava/lang/Object;Z)V

    return-void
.end method
