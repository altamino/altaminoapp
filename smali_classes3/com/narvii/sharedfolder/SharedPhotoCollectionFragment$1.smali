.class Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "SharedPhotoCollectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;

    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 46
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared-folder/files?type=reference&refId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1

    if-eqz p3, :cond_0

    .line 64
    iget v0, p3, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 66
    const-class p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 42
    check-cast p2, Lcom/narvii/sharedfolder/SharedFileListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V
    .locals 1

    .line 52
    iget-object v0, p2, Lcom/narvii/sharedfolder/SharedFileListResponse;->fileList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoCollectionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 54
    const-class p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 59
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
