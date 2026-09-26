.class public Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showList:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "contentModule"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ipc$1;

    .line 27
    .line 28
    const-class p2, Lcom/narvii/topic/model/discover/ContentModule;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, p2}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ipc$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Ljava/lang/Class;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 34
    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "moduleType"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getClickListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/LinearImpressionCollector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->showList:Z

    return v0
.end method

.method public final getShowList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->showList:Z

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->isSubRequestFinish()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->isReadyToRequest()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->showList:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 25
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p1

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;->getText()Landroid/widget/TextView;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->getItem(I)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d0432

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter$ViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->showList:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 13
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    .line 6
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/LinearImpressionCollector;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/Impression/LinearImpressionCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->ipc:Lcom/narvii/logging/Impression/LinearImpressionCollector;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 6
    return-void
.end method

.method public final setShowList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/TopicButtonAdapter;->showList:Z

    return-void
.end method
