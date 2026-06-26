.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;
.super Lcom/narvii/monetization/bubble/BubbleListAdapter;
.source "BubbleManageListFragment.java"


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

    .line 189
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 190
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 232
    instance-of v0, p1, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_1

    .line 233
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903bb

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 237
    iget p3, v0, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isListShown()Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0389

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

    .line 200
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 209
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    .line 210
    new-instance v1, Lcom/narvii/model/ChatBubble;

    invoke-direct {v1}, Lcom/narvii/model/ChatBubble;-><init>()V

    const/4 v2, -0x1

    .line 211
    iput v2, v1, Lcom/narvii/model/ChatBubble;->type:I

    .line 212
    iget-object v2, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    const v3, 0x7f0f0344

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onFirstPageResponse()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onFirstPageResponse()V

    .line 265
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->access$000(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 246
    instance-of v0, p3, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_0

    .line 247
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/ChatBubble;

    if-eqz p5, :cond_0

    .line 248
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0903bb

    if-ne v1, v2, :cond_0

    .line 249
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->onClickEditBubbleButton(Lcom/narvii/model/ChatBubble;)V

    const/4 p1, 0x1

    return p1

    .line 253
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 270
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatBubble;

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p1

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_0

    .line 273
    :cond_0
    instance-of v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    if-eqz v0, :cond_1

    .line 274
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 275
    invoke-virtual {v0, p1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;->handleBubbleWrapNotification(Lcom/narvii/notification/Notification;Lcom/narvii/list/NVPagedAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V
    .locals 0

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    .line 259
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    iget-object p2, p2, Lcom/narvii/model/ChatBubbleListResponse;->currentSelectedBubbleId:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->curSelectedBubbleId:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 185
    check-cast p2, Lcom/narvii/model/ChatBubbleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ChatBubbleListResponse;I)V

    return-void
.end method

.method protected threadId()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->threadId:Ljava/lang/String;

    return-object v0
.end method
