.class public Lcom/narvii/logging/ImpressionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field idle:Z

.field impressionCollectorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/logging/Impression/ImpressionCollector;",
            ">;"
        }
    .end annotation
.end field

.field impressionRunnable:Ljava/lang/Runnable;

.field innerImpressionRunnable:Ljava/lang/Runnable;

.field listView:Landroid/view/ViewGroup;

.field nvFragment:Lcom/narvii/app/NVFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate$1;-><init>(Lcom/narvii/logging/ImpressionDelegate;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate$2;-><init>(Lcom/narvii/logging/ImpressionDelegate;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->innerImpressionRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 23
    return-void
.end method


# virtual methods
.method public addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    const-string v0, "impression"

    .line 25
    .line 26
    const-string v1, "listview is null"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public clearImpression()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public logImpression()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public logImpressionQuit()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpressionQuit(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onLogActiveChanged(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    .line 6
    :cond_0
    return-void
.end method

.method public onScrollIdleStateChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/logging/ImpressionDelegate;->logImpressionQuit()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    .line 14
    return-void
.end method

.method public postImpressionRunnable()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public setListView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    return-void
.end method
