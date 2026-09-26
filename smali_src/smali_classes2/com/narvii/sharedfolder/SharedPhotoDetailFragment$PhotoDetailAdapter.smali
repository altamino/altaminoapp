.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/model/SharedFile;",
        "Lcom/narvii/sharedfolder/SharedFileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "Shared Folder Media"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 0

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
    const-string v2, "/shared-folder/files/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

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

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->y(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    .line 9
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/model/SharedFile;

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/sharedfolder/SharedFileResponse;

    return-object v0
.end method

.method protected saveInstanceState()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->t(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->setObject(Lcom/narvii/model/SharedFile;)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/SharedFile;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/SharedFileResponse;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/SharedFileResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/sharedfolder/SharedFileResponse;->file:Lcom/narvii/model/SharedFile;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->setResponse(Lcom/narvii/sharedfolder/SharedFileResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/sharedfolder/SharedFileResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->setResponse(Lcom/narvii/sharedfolder/SharedFileResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/sharedfolder/SharedFileResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/narvii/sharedfolder/SharedFileResponse;->object()Lcom/narvii/model/SharedFile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 6
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 7
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedFile;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 8
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentAdapter:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    .line 10
    :cond_2
    iget v0, p1, Lcom/narvii/model/SharedFile;->status:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 11
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->overlayPlaceholder:Landroid/view/View;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    .line 12
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$PhotoDetailAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 14
    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->x(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    :cond_6
    return-void
.end method
