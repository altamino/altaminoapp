.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;
.super Lcom/narvii/monetization/bubble/BubbleListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBubbleListAdapter"
.end annotation


# instance fields
.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a04b2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    iget p3, v0, Lcom/narvii/model/ChatBubble;->type:I

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    if-ne p3, v0, :cond_0

    .line 24
    const/4 p3, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p3, 0x4

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

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
    if-gtz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d03c4

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Lcom/narvii/model/ChatBubble;-><init>()V

    .line 23
    const/4 v2, -0x1

    .line 24
    .line 25
    iput v2, v1, Lcom/narvii/model/ChatBubble;->type:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 28
    .line 29
    .line 30
    const v3, 0x7f120399

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    iput-object v2, v1, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method protected onFirstPageResponse()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onFirstPageResponse()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->t(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    .line 9
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a04b2

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->onClickEditBubbleButton(Lcom/narvii/model/ChatBubble;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 31
    move-result p1

    .line 32
    return p1
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

    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 3
    iget-object p2, p2, Lcom/narvii/model/ChatBubbleListResponse;->currentSelectedBubbleId:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->curSelectedBubbleId:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    return-void
.end method

.method protected threadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->threadId:Ljava/lang/String;

    .line 5
    return-object v0
.end method
