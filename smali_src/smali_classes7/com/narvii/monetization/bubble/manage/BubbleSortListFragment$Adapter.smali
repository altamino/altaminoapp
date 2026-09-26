.class Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;
.super Lcom/narvii/monetization/bubble/BubbleListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/monetization/bubble/BubbleListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->pageSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    return-object p2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d03c7

    return v0
.end method

.method protected onFirstPageResponse()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onFirstPageResponse()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->v(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->v(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    instance-of v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;->handleBubbleWrapNotification(Lcom/narvii/notification/Notification;Lcom/narvii/list/NVPagedAdapter;)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->v(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p3}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->w(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->v(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/model/ChatBubbleListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
