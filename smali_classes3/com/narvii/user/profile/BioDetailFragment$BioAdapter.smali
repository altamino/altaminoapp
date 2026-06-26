.class Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "BioDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/BioDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private showBioOnly:Z

.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 289
    invoke-direct {p0, p1}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->showBioOnly:Z

    .line 290
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->UserProfileView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 399
    iget-object v0, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 400
    invoke-virtual {v0}, Lcom/narvii/model/User;->isModerator()Z

    move-result v1

    .line 401
    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iget-object v3, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    const-string v1, "account"

    .line 409
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->isProfileAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0f03e8

    if-nez v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    :cond_2
    iget-object v1, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 416
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iget-object v3, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 420
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->showBioOnly:Z

    if-nez v1, :cond_6

    .line 421
    iget-object v0, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 422
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->DIVIDER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_5
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method protected commentRefresh()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v0

    return v0
.end method

.method public createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 432
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->createMediaView(Lcom/narvii/model/Media;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 433
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v4

    const v1, 0x7f090571

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILcom/narvii/model/Media;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    return-object p2
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 393
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 346
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    .line 347
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "size"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "cv"

    const-string v0, "1.2"

    .line 350
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public galleryBioMedias(Lcom/narvii/model/Media;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->bioMedias:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-class v1, Lcom/narvii/model/User;

    const-string v2, "parentClass"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v1, v1, Lcom/narvii/user/profile/BioDetailFragment;->bioMedias:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p1, :cond_0

    const-string v1, "position"

    .line 450
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-boolean p1, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string v1, "preview"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 373
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 460
    instance-of v0, p3, Lcom/narvii/model/Media;

    if-eqz v0, :cond_1

    .line 461
    check-cast p3, Lcom/narvii/model/Media;

    invoke-virtual {p3}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    const-class p4, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p3, p1, p4}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return p2

    .line 465
    :cond_0
    invoke-virtual {p0, p3}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->galleryBioMedias(Lcom/narvii/model/Media;)V

    return p2

    .line 469
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/DetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 356
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 357
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-eq v1, v2, :cond_0

    const-string v2, "edit"

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 358
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/UserResponse;

    .line 361
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/User;

    iput-object v1, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 362
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    .line 363
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->sendRequest()V

    .line 368
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 284
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v2, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v2, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 308
    iget-object v2, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 309
    iget-object v2, v0, Lcom/narvii/model/User;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 310
    iget-object v2, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 311
    iget-object v2, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->address:Ljava/lang/String;

    .line 312
    iget v2, v0, Lcom/narvii/model/User;->latitude:I

    iput v2, v1, Lcom/narvii/model/User;->latitude:I

    .line 313
    iget v2, v0, Lcom/narvii/model/User;->longitude:I

    iput v2, v1, Lcom/narvii/model/User;->longitude:I

    .line 314
    iget-object v2, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 315
    iget-object v0, v0, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    iput-object v0, v1, Lcom/narvii/model/User;->mediaList:Ljava/util/List;

    .line 316
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    return-void

    .line 321
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 1

    const-string p2, "Followers"

    .line 474
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 475
    const-class p1, Lcom/narvii/user/list/FollowersListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 476
    iget-object p2, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/UserResponse;",
            ">;"
        }
    .end annotation

    .line 378
    const-class v0, Lcom/narvii/model/api/UserResponse;

    return-object v0
.end method

.method protected setCommentSort(I)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 284
    check-cast p1, Lcom/narvii/model/User;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setObject(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/User;)V
    .locals 1

    .line 383
    new-instance v0, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/UserResponse;-><init>()V

    .line 384
    iput-object p1, v0, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    .line 385
    invoke-virtual {p0, v0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 284
    check-cast p1, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setResponse(Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/UserResponse;)V
    .locals 2

    .line 327
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 328
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/model/User;->getBioMedias()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/user/profile/BioDetailFragment;->bioMedias:Ljava/util/ArrayList;

    .line 330
    iget-object v0, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->hasBackground()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/user/profile/BioDetailFragment;->access$702(Lcom/narvii/user/profile/BioDetailFragment;Z)Z

    .line 336
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/user/profile/BioDetailFragment;->access$802(Lcom/narvii/user/profile/BioDetailFragment;Z)Z

    .line 337
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-object p1, p1, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->getBackgroundColor()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$902(Lcom/narvii/user/profile/BioDetailFragment;I)I

    .line 338
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$1000(Lcom/narvii/user/profile/BioDetailFragment;)V

    .line 339
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$1100(Lcom/narvii/user/profile/BioDetailFragment;)Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 340
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/BioDetailFragment;->access$1100(Lcom/narvii/user/profile/BioDetailFragment;)Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public setShowBioOnly(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->showBioOnly:Z

    return-void
.end method

.method public showShareMediaBar()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected showUserCommentSetting()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    move-result v0

    return v0
.end method
