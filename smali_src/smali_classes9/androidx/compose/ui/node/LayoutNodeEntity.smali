.class public Landroidx/compose/ui/node/LayoutNodeEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "TT;TM;>;M::",
        "Landroidx/compose/ui/Modifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isAttached:Z

.field private final layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private next:Landroidx/compose/ui/node/LayoutNodeEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "TM;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutNodeWrapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->modifier:Landroidx/compose/ui/Modifier;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/node/LayoutNodeEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->next:Landroidx/compose/ui/node/LayoutNodeEntity;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->layoutNodeWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached:Z

    return v0
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached:Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached:Z

    return-void
.end method

.method public final i(Landroidx/compose/ui/node/LayoutNodeEntity;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/LayoutNodeEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeEntity;->next:Landroidx/compose/ui/node/LayoutNodeEntity;

    return-void
.end method
