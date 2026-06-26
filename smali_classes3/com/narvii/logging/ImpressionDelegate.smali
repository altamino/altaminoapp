.class public Lcom/narvii/logging/ImpressionDelegate;
.super Ljava/lang/Object;
.source "ImpressionDelegate.java"


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    .line 30
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate$1;

    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate$1;-><init>(Lcom/narvii/logging/ImpressionDelegate;)V

    iput-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionRunnable:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate$2;

    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate$2;-><init>(Lcom/narvii/logging/ImpressionDelegate;)V

    iput-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->innerImpressionRunnable:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    return-void
.end method


# virtual methods
.method public addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p1, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    const-string v0, "impression"

    const-string v1, "listview is null"

    .line 58
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearImpression()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 75
    iget-object v2, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-static {v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public logImpression()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 86
    iget-object v2, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-static {v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public logImpressionQuit()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionCollectorList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/logging/Impression/ImpressionCollector;

    .line 66
    iget-object v2, p0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    invoke-static {v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logImpressionQuit(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLogActiveChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    :cond_0
    return-void
.end method

.method public onScrollIdleStateChanged(Z)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/logging/ImpressionDelegate;->idle:Z

    .line 104
    invoke-virtual {p0}, Lcom/narvii/logging/ImpressionDelegate;->logImpressionQuit()V

    .line 105
    invoke-virtual {p0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    return-void
.end method

.method public postImpressionRunnable()V
    .locals 2

    .line 92
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate;->impressionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate;->listView:Landroid/view/ViewGroup;

    return-void
.end method
