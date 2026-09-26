.class Lcom/narvii/comment/list/CommentListFragment$Adapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 14
    .line 15
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->CommentDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 18
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 5
    return-object v0
.end method

.method protected isAnnouncement()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    const-string v1, "isAnnouncement"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/comment/list/CommentListFragment;->parent:Lcom/narvii/model/NVObject;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/model/Feed;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Feed;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method protected isQuestionAndAnswer()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->isQuestionAndAnswer()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListFragment;->u(Lcom/narvii/comment/list/CommentListFragment;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    .line 5
    const-string v0, "vote"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->sortName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    instance-of v1, v1, Lcom/narvii/model/Comment;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/comment/list/CommentListFragment;->parentId()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/comment/list/CommentListAdapter;->list()Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 50
    move-result p1

    .line 51
    .line 52
    if-ltz p1, :cond_0

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Lcom/narvii/comment/list/CommentListFragment$Adapter$1;-><init>(Lcom/narvii/comment/list/CommentListFragment$Adapter;I)V

    .line 58
    .line 59
    const-wide/16 v1, 0x190

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 63
    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    const/4 p2, 0x1

    .line 3
    invoke-static {p1, p2}, Lcom/narvii/comment/list/CommentListFragment;->v(Lcom/narvii/comment/list/CommentListFragment;Z)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/comment/list/CommentListFragment;->w(Lcom/narvii/comment/list/CommentListFragment;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/CommentListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V

    return-void
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListFragment$Adapter;->this$0:Lcom/narvii/comment/list/CommentListFragment;

    .line 3
    .line 4
    const/16 v1, 0x6f

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/comment/list/CommentListFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 8
    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
