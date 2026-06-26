.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SharedAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/SharedAlbum;",
        "Lcom/narvii/sharedfolder/SharedAlbumResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 461
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 517
    sget-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 512
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/shared-folder/folders/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

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

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 528
    sget-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f0b0620

    .line 529
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 532
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 522
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 523
    sget-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 506
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 507
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->access$000(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1

    .line 496
    const-class v0, Lcom/narvii/model/SharedAlbum;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 473
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/sharedfolder/PhotoAdd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/sharedfolder/PhotoAdd;

    iget-object v1, v1, Lcom/narvii/sharedfolder/PhotoAdd;->folderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, p1, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void

    .line 477
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 458
    check-cast p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V
    .locals 1

    .line 482
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 483
    iget-object p1, p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    if-eqz p1, :cond_0

    .line 484
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 485
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    const-string v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    const-string p1, "notification"

    .line 486
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 501
    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    return-object v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 458
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->setObject(Lcom/narvii/model/SharedAlbum;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedAlbum;)V
    .locals 1

    .line 466
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedAlbumResponse;-><init>()V

    .line 467
    iput-object p1, v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    .line 468
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method
