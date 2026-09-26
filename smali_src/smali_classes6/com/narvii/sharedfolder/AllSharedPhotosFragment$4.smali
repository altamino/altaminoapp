.class Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->UPLOAD_PHOTO:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 7
    .line 8
    const-string v1, "Recent"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->addPhotos(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/sharedfolder/SharedFileListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileListResponse;I)V

    .line 3
    iget p1, p2, Lcom/narvii/sharedfolder/SharedFileListResponse;->totalCount:I

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 4
    iput p1, p2, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->totalCount:I

    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/sharedfolder/SharedFolderFragment;

    iget-object p2, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    iget p2, p2, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->totalCount:I

    invoke-virtual {p1, p2}, Lcom/narvii/sharedfolder/SharedFolderFragment;->setFileCount(I)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/AllSharedPhotosFragment$4;->this$0:Lcom/narvii/sharedfolder/AllSharedPhotosFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/sharedfolder/AllSharedPhotosFragment;->access$000(Lcom/narvii/sharedfolder/AllSharedPhotosFragment;)V

    return-void
.end method
