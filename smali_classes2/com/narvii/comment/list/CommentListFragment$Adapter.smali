.class Lcom/narvii/comment/list/CommentListFragment$Adapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "CommentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/comment/list/CommentListFragment;)V
    .locals 1

    .line 588
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 589
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "source"

    .line 590
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 591
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    return-void
.end method


# virtual methods
.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method protected isAnnouncement()Z
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    const-string v1, "isAnnouncement"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 655
    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 657
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isQuestionAndAnswer()Z
    .locals 1

    .line 639
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {v0}, Lcom/narvii/comment/list/CommentListFragment;->access$400(Lcom/narvii/comment/list/CommentListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 607
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 608
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->sortName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 610
    invoke-virtual {v1}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 614
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->list()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 616
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;-><init>(Lcom/narvii/comment/list/CommentListFragment$Adapter;I)V

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V
    .locals 0

    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 633
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListFragment;->access$202(Lcom/narvii/comment/list/CommentListFragment;Z)Z

    .line 634
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->access$300(Lcom/narvii/comment/list/CommentListFragment;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 587
    check-cast p2, Lcom/narvii/model/api/CommentListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V

    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    const/16 v1, 0x6f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
