.class public final Landroidx/activity/contextaware/ContextAwareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/activity/contextaware/OnContextAvailableListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1
    .param p1    # Landroidx/activity/contextaware/OnContextAvailableListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/activity/contextaware/OnContextAvailableListener;->a(Landroid/content/Context;)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroidx/activity/contextaware/OnContextAvailableListener;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1}, Landroidx/activity/contextaware/OnContextAvailableListener;->a(Landroid/content/Context;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final d()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final e(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .locals 1
    .param p1    # Landroidx/activity/contextaware/OnContextAvailableListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/activity/contextaware/ContextAwareHelper;->listeners:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method
