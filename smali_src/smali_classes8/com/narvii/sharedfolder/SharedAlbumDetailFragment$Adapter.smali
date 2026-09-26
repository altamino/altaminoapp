.class Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/shared-folder/folders/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d06cf

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->t(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    .line 9
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/model/SharedAlbum;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/sharedfolder/PhotoAdd;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->this$0:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/sharedfolder/PhotoAdd;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/sharedfolder/PhotoAdd;->folderId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 34
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p2

    const-string/jumbo v0, "update"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    const-string p2, "notification"

    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    return-object v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->setObject(Lcom/narvii/model/SharedAlbum;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedAlbum;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedAlbumResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method
