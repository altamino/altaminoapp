.class Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;
.super Lcom/narvii/monetization/bubble/BubbleListAdapter;
.source "BubbleSortListFragment.java"


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

    .line 179
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 180
    invoke-direct {p0, p2}, Lcom/narvii/monetization/bubble/BubbleListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 217
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->pageSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b038c

    return v0
.end method

.method protected onFirstPageResponse()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onFirstPageResponse()V

    .line 200
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$300(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$300(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 225
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatBubble;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_0

    .line 228
    :cond_0
    instance-of v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 230
    invoke-virtual {v0, p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;->handleBubbleWrapNotification(Lcom/narvii/notification/Notification;Lcom/narvii/list/NVPagedAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    .line 191
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$300(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p3}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$302(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Ljava/util/List;)Ljava/util/List;

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$300(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/model/ChatBubbleListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 177
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
